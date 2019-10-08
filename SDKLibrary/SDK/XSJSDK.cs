using DVRSDK;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;

namespace SDKLibrary
{
    public class XSJSDK : ISDK
    {
        
        /// <summary>
        /// 登录后会有一个大于0的userid
        /// </summary>
        private Int32 loginUserId = -1;
        /// <summary>
        /// 正在播放的句柄
        /// </summary>
        private Int32 realHandle = -1;
        
        public SDKTYPE SDKType { get { return SDKTYPE.Direct_SDK; } }
        
        public Video VideoInfo
        {get;set;}

        public void CamerControl(Direction direction, uint step, bool stop = false)
        {
            uint directionNum=0;
            switch (direction)
            {
                case  Direction.Up://上
                    directionNum = 4;
                    break;
                case Direction.Down://下
                    directionNum = 5;
                    break;
                case Direction.Left://左
                    directionNum = 1;
                    break;
                case Direction.Right://右
                    directionNum = 3;
                    break;
                case Direction.UpLeft://上左
                    directionNum = 6;
                    break;
                case Direction.UpRight://上右
                    directionNum = 8;
                    break;
                case Direction.DownLeft://下左
                    directionNum = 7;
                    break;
                case Direction.DownRight://下右
                    directionNum = 9;
                    break;
                case Direction.ZoomIn://放大
                    directionNum = 13;
                    break;
                case Direction.ZoomOut://缩小
                    directionNum = 12;
                    break;
                default:
                    break;
            }
            if (stop)
            {
                directionNum = 0;
            }
            XSJNetSDK.NET_SDK_PTZControl(realHandle, directionNum, step);
        }

        public string Capture2Base64()
        {
            //图片保存路径和文件名 the path and file name to save
            string PictureFileName =Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.bmp);

            int lChannel = VideoInfo.Channel; //通道号 Channel number

            if (!XSJNetSDK.NET_SDK_CapturePicture(realHandle, PictureFileName))
            {
                throw new Exception("[兴视捷]截图失败：" + GetErrorMessage());
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
            string PictureFileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.bmp);

            int lChannel = VideoInfo.Channel; //通道号 Channel number

            if (!XSJNetSDK.NET_SDK_CapturePicture(realHandle, PictureFileName))
            {
                throw new Exception("[兴视捷]截图失败：" + GetErrorMessage());
            }
            return PictureFileName;
        }

        public void Release()
        {
            XSJNetSDK.NET_SDK_Cleanup();
           
        }

        public void Init()
        {
            try
            {

                if (!XSJNetSDK.NET_SDK_Init())
                {
                    throw new Exception("[兴视捷]兴视捷SDK初始化失败：" + GetErrorMessage());
                }
                try
                {
                    XSJNetSDK.NET_SDK_SetLogToFile(true, Helper.GetDateFolder(SaveFileType.Log), false);
                }
                catch (Exception ex)
                {

                }
            }catch(Exception ex)
            {
                throw new Exception("[兴视捷]兴视捷SDK初始化失败:" + Environment.NewLine + ex.Message);
            }
            
        }

        public void Login(LoginInfo logininfo)
        {
            XSJNetSDK.NET_SDK_DEVICEINFO DeviceInfo = new XSJNetSDK.NET_SDK_DEVICEINFO();
            loginUserId = XSJNetSDK.NET_SDK_Login(logininfo.Ip, Convert.ToUInt16(logininfo.Port), logininfo.UserName, logininfo.Password, ref DeviceInfo);
            if (loginUserId < 0)
            {
                throw new Exception("[兴视捷]登录失败" + GetErrorMessage());
            }
        }

        public void LogOut()
        {
            if (!XSJNetSDK.NET_SDK_Logout(loginUserId))
            {
                throw new Exception("[兴视捷]注销登录失败" + GetErrorMessage());
            }
            loginUserId = -1;
        }

        public void StartPlay(IntPtr handle)
        {
            XSJNetSDK.NET_SDK_CLIENTINFO clientInfo = new XSJNetSDK.NET_SDK_CLIENTINFO();
            clientInfo.hPlayWnd = handle;//预览窗口
            clientInfo.lChannel = VideoInfo.Channel;//预览的设备通道
            clientInfo.streamType = 0;//码流类型：0-主码流，1-子码流
            IntPtr pUser = new IntPtr();//用户数据

            XSJNetSDK.LIVE_DATA_CALLBACK RealData = new XSJNetSDK.LIVE_DATA_CALLBACK(RealDataCallBack);//预览实时流回调函数
            //打开预览,此处有bug,多个播放会死掉
            try
            {
                realHandle = XSJNetSDK.NET_SDK_LivePlay(loginUserId, ref clientInfo, null/*RealData*/, pUser);
            }
            catch (Exception ex)
            {
                throw new Exception("[兴视捷]播放失败：" + Environment.NewLine + GetErrorMessage() + Environment.NewLine + ex.Message);
            }
            if (realHandle < 0)
            {
                throw new Exception("[兴视捷]播放失败：" + GetErrorMessage());
            }
        }

        private void RealDataCallBack(Int32 lLiveHandle, XSJNetSDK.NET_SDK_FRAME_INFO frameInfo, ref byte pBuffer, IntPtr pUser) { }

        public void StartRecord()
        {
           string VideoFileName =Helper.UniqueFile(SaveFileType.Video, FileExtensionType.mp4);

            //强制I帧 Make a I frame
            XSJNetSDK.NET_SDK_MakeKeyFrame(loginUserId, VideoInfo.Channel);

            //开始录像 Start recording
            if (!XSJNetSDK.NET_SDK_SaveLiveData(realHandle, VideoFileName))
            {
                throw new Exception("[兴视捷]录制失败：" + GetErrorMessage());
            }
        }

        public void StopPlay()
        {
            if (!XSJNetSDK.NET_SDK_StopLivePlay(realHandle))
            {
                throw new Exception("[兴视捷]停止预览失败码：" + GetErrorMessage());
            }
            realHandle = -1;
        }

        public void StopRecord()
        {
            if (!XSJNetSDK.NET_SDK_StopSaveLiveData(realHandle))
            {
                throw new Exception("[兴视捷]录制失败：" + GetErrorMessage());
            }
        }


        private string GetErrorMessage()
        {
            uint errNo = XSJNetSDK.NET_SDK_GetLastError();
            string msg = Environment.NewLine + "错误代码[" + errNo + "]:";
            switch (errNo)
            {
                case 0:
                    return msg + "没有错误";
                case 1:
                    return msg + "用户名密码错误。";
                case 3:
                    return msg + "尚未初始化。";
                case 2:
                    return msg + "权限不足。";
                case 4:
                    return msg + "通道号错误。";
                case 5:
                    return msg + "连接到DVR的客户端个数超过最大。";
                case 8:
                    return msg + "连接设备失败。" + Environment.NewLine + "设备不在线或网络原因引起的连接超时等。";
                case 11:
                    return msg + "从设备接收数据失败。";
                case 12:
                    return msg + "从设备接收数据超时。";
                case 16:
                    return msg + "无此权限。";
                case 50:
                    return msg + "用户不存在。";
                case 58:
                    return msg + "IP地址不匹配。";
                default:
                    return "未定义错误，错误编号：[" + errNo + "]";
            }
        }
        
        
        

        List<Video> ISDK.GetVideoList()
        {
            throw new NotImplementedException("[兴视捷]直连设备SDK不支持获取视频列表");
        }
        
    }
}
