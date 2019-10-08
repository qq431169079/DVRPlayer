using DVRSDK;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;

namespace SDKLibrary
{
    public class HKSDK : ISDK
    {
        

        /// <summary>
        /// 登录后会有一个大于0的userid
        /// </summary>
        private Int32 loginUserId = -1;
        /// <summary>
        /// 正在播放的句柄
        /// </summary>
        private Int32 realHandle = -1;
        public Video VideoInfo { get; set; }

        public SDKTYPE SDKType { get { return SDKTYPE.Direct_SDK; } }

        public string Capture2Base64()
        {
            //图片保存路径和文件名 the path and file name to save
            string PictureFileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.jpg);

            int lChannel = VideoInfo.Channel; //通道号 Channel number

            CHCNetSDK.NET_DVR_JPEGPARA lpJpegPara = new CHCNetSDK.NET_DVR_JPEGPARA();
            lpJpegPara.wPicQuality = 0; //图像质量 Image quality
            lpJpegPara.wPicSize = 0xff; //抓图分辨率 Picture size: 2- 4CIF，0xff- Auto(使用当前码流分辨率)，抓图分辨率需要设备支持，更多取值请参考SDK文档

            //JPEG抓图 Capture a JPEG picture
            if (!CHCNetSDK.NET_DVR_CaptureJPEGPicture(loginUserId, lChannel, ref lpJpegPara, PictureFileName))
            {
                throw new Exception("[海康]截图失败：" + GetErrorMessage());
            }
            Bitmap bmp = new Bitmap(PictureFileName);

            using (MemoryStream ms1 = new MemoryStream())
            {
                bmp.Save(ms1, System.Drawing.Imaging.ImageFormat.Jpeg);
                byte[] arr1 = new byte[ms1.Length];
                ms1.Position = 0;
                ms1.Read(arr1, 0, (int)ms1.Length);
                ms1.Close();
                return Convert.ToBase64String(arr1);
            }
        }

        public string Capture2Image()
        {
            //图片保存路径和文件名 the path and file name to save
            string PictureFileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.jpg);

            int lChannel = VideoInfo.Channel; //通道号 Channel number

            CHCNetSDK.NET_DVR_JPEGPARA lpJpegPara = new CHCNetSDK.NET_DVR_JPEGPARA();
            lpJpegPara.wPicQuality = 0; //图像质量 Image quality
            lpJpegPara.wPicSize = 0xff; //抓图分辨率 Picture size: 2- 4CIF，0xff- Auto(使用当前码流分辨率)，抓图分辨率需要设备支持，更多取值请参考SDK文档

            //JPEG抓图 Capture a JPEG picture
            if (!CHCNetSDK.NET_DVR_CaptureJPEGPicture(loginUserId, lChannel, ref lpJpegPara, PictureFileName))
            {
                throw new Exception("[海康]截图失败：" + GetErrorMessage());
            }
            return PictureFileName;
        }

        public void Release()
        {
            CHCNetSDK.NET_DVR_Cleanup();
        }

        public void Init()
        {
            try
            {
                if (!CHCNetSDK.NET_DVR_Init())
                {
                    throw new Exception("[海康]SDK初始化失败:" + GetErrorMessage());
                }
                CHCNetSDK.NET_DVR_SetLogToFile(3, Helper.LogFolder, true);
            }catch(Exception ex)
            {
                throw new Exception("[海康]SDK初始化失败:" + Environment.NewLine + ex.Message);
            }
        }

        public void Login(LoginInfo logininfo)
        {
            CHCNetSDK.NET_DVR_DEVICEINFO_V30 DeviceInfo = new CHCNetSDK.NET_DVR_DEVICEINFO_V30();

            loginUserId = CHCNetSDK.NET_DVR_Login_V30(logininfo.Ip, logininfo.Port, logininfo.UserName, logininfo.Password, ref DeviceInfo);

            if (loginUserId < 0)
            {
                //uint errNo = CHCNetSDK.NET_DVR_GetLastError();
                throw new Exception("[海康]登录失败" + GetErrorMessage());
            }
        }

        public void LogOut()
        {
            if (!CHCNetSDK.NET_DVR_Logout(loginUserId))
            {
                throw new Exception("[海康]注销登录失败" + GetErrorMessage());
            }
            loginUserId = -1;
        }
        
        public void StartPlay(IntPtr handle)
        {
            CHCNetSDK.NET_DVR_PREVIEWINFO lpPreviewInfo = new CHCNetSDK.NET_DVR_PREVIEWINFO();
            lpPreviewInfo.hPlayWnd = handle;//预览窗口
            lpPreviewInfo.lChannel = VideoInfo.Channel;//预te览的设备通道
            lpPreviewInfo.dwStreamType = Convert.ToUInt32(0);//码流类型：0-主码流，1-子码流，2-码流3，3-码流4，以此类推
            lpPreviewInfo.dwLinkMode = 0;//连接方式：0- TCP方式，1- UDP方式，2- 多播方式，3- RTP方式，4-RTP/RTSP，5-RSTP/HTTP 
            lpPreviewInfo.bBlocked = true; //0- 非阻塞取流，1- 阻塞取流
            lpPreviewInfo.dwDisplayBufNum = 15; //播放库播放缓冲区最大缓冲帧数

            CHCNetSDK.REALDATACALLBACK RealData = new CHCNetSDK.REALDATACALLBACK(RealDataCallBack);//预览实时流回调函数
            IntPtr pUser = new IntPtr();//用户数据

            //打开预览 Start live view 
            realHandle = CHCNetSDK.NET_DVR_RealPlay_V40(loginUserId, ref lpPreviewInfo, null/*RealData*/, pUser);
            if (realHandle < 0)
            {
                throw new Exception("[海康]播放失败：" + GetErrorMessage());
            }
        }

        public void StartRecord()
        {
            string  VideoFileName = Helper.UniqueFile( SaveFileType.Video, FileExtensionType.mp4);

            //强制I帧 Make a I frame
            CHCNetSDK.NET_DVR_MakeKeyFrame(loginUserId, VideoInfo.Channel);

            //开始录像 Start recording
            if (!CHCNetSDK.NET_DVR_SaveRealData(realHandle, VideoFileName))
            {
                throw new Exception("[海康]录制失败：" + GetErrorMessage());
            }
        }

        public void StopPlay()
        {
            if (!CHCNetSDK.NET_DVR_StopRealPlay(realHandle))
            {
                throw new Exception("[海康]停止预览失败：" + GetErrorMessage());
            }
            realHandle = -1;
        }

        public void StopRecord()
        {
            if (!CHCNetSDK.NET_DVR_StopSaveRealData(realHandle))
            {
                throw new Exception("[海康]录制失败：" + GetErrorMessage());
            }
        }

        public void CamerControl(Direction direction, uint step, bool stop = false)
        {
            uint directionNum=0;
            switch (direction)
            {
                case Direction.Up://上
                    directionNum = 21;
                    break;
                case Direction.Down://下
                    directionNum = 22;
                    break;
                case Direction.Left://左
                    directionNum = 23;
                    break;
                case Direction.Right://右
                    directionNum = 24;
                    break;
                case Direction.UpLeft://上左
                    directionNum = 25;
                    break;
                case Direction.UpRight://上右
                    directionNum = 26;
                    break;
                case Direction.DownLeft://下左
                    directionNum = 27;
                    break;
                case Direction.DownRight://下右
                    directionNum = 28;
                    break;
                case Direction.ZoomIn://放大
                    directionNum = 11;
                    break;
                case Direction.ZoomOut://缩小
                    directionNum = 12;
                    break;
                default:
                    break;
            }
            uint dstop = 0;
            if (stop) dstop = 1;
            try
            {
                CHCNetSDK.NET_DVR_PTZControlWithSpeed(realHandle, directionNum, dstop, step);
            }catch(Exception ex)
            {
                throw new Exception("[海康]云台控制失败：" + ex.Message);
            }
        }

        
        private string GetErrorMessage()
        {
            uint errNo = CHCNetSDK.NET_DVR_GetLastError();
            string msg = Environment.NewLine + "错误代码[" + errNo + "]:";
            switch (errNo)
            {
                case 0:
                    return msg + "没有错误";
                case 1:
                    return msg + "用户名密码错误。";
                case 2:
                    return msg + "权限不足。";
                case 4:
                    return msg + "通道号错误。";
                case 5:
                    return msg + "设备总的连接数超过最大。";
                case 7:
                    return msg + "连接设备失败。" + Environment.NewLine + "设备不在线或网络原因引起的连接超时等。";
                case 9:
                    return msg + "从设备接收数据失败。";
                case 10:
                    return msg + "从设备接收数据超时。";
                case 18:
                    return msg + "设备通道处于错误状态";
                case 47:
                    return msg + "用户不存在。";
                case 55:
                    return msg + "IP地址不匹配。";
                default:
                    return "未定义错误，错误编号：[" + errNo + "]";
            }
        }

        private void RealDataCallBack(Int32 lRealHandle, UInt32 dwDataType, ref byte pBuffer, UInt32 dwBufSize, IntPtr pUser) { }
        
        
        List<Video> ISDK.GetVideoList()
        {
            throw new NotImplementedException("[海康]直连设备SDK不支持获取视频列表");
        }
        
    }
}
