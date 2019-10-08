using DVRSDK;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;

namespace SDKLibrary.SDK
{
    public class SHCFSDK : ISDK
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

        void ISDK.Init()
        {
            try
            {
                bool init = SHCFNetSDK.NET_SDK_Init();
                if (!init)
                {
                    throw new Exception("[上海诚丰]SDK初始化失败！");
                }
            }
            catch (Exception ex)
            {
                throw new Exception("[上海诚丰]SDK初始化失败:" + Environment.NewLine + ex.Message);
            }
        }

        void ISDK.Login(LoginInfo logininfo)
        {
            DVRSDK.LPNET_SDK_DEVICEINFO deviceInfo = new DVRSDK.LPNET_SDK_DEVICEINFO();

            loginUserId = SHCFNetSDK.NET_SDK_Login(logininfo.Ip, (ushort)logininfo.Port, logininfo.UserName, logininfo.Password, ref deviceInfo);

            if (loginUserId < 0)
            {
                throw new Exception("[上海诚丰]登录失败");
            }
        }

        void ISDK.LogOut()
        {
            if (SHCFNetSDK.NET_SDK_Logout(loginUserId))
            {
                loginUserId = -1;
            }
            else
            {
                throw new Exception("[上海诚丰]注销登录失败" + GetErrorMessage());
            }
        }

        void ISDK.StartPlay(IntPtr handle)
        {
            NET_SDK_CLIENTINFO clientInfo = new NET_SDK_CLIENTINFO();
            clientInfo.hPlayWnd = handle;//预览窗口
            clientInfo.lChannel = VideoInfo.Channel;  // 通道号，从0开始 
            clientInfo.streamType = 0; // 数据流类型，类型有两种NET_SDK_MAIN_STREAM和NET_SDK_SUB_STREAM
            //LIVE_DATA_CALLBACK fLiveDataCallBack = new DVRSDK.LIVE_DATA_CALLBACK(LiveDataCallBack);
            LIVE_DATA_CALLBACK fLiveDataCallBack = null;
            IntPtr pUser = IntPtr.Zero;

            realHandle = SHCFNetSDK.NET_SDK_LivePlay(loginUserId, ref clientInfo, fLiveDataCallBack, pUser);
            if (realHandle == -1)
            {
                throw new Exception("[上海诚丰]播放失败：" + GetErrorMessage());
            }

        }

        void ISDK.StopPlay()
        {
            if (SHCFNetSDK.NET_SDK_StopLivePlay(realHandle))
            {
                realHandle = -1;
            }
            else
            {
                throw new Exception("[上海诚丰]停止预览失败：" + GetErrorMessage());
            }
        }

        void ISDK.StartRecord()
        {
            string VideoFileName = Helper.UniqueFile(SaveFileType.Video, FileExtensionType.mp4);

            //强制I帧 Make a I frame
            SHCFNetSDK.NET_SDK_MakeKeyFrame(loginUserId, VideoInfo.Channel);

            //开始录像 Start recording
            if (!SHCFNetSDK.NET_SDK_SaveLiveData(realHandle, VideoFileName))
            {
                throw new Exception("[上海诚丰]录制失败：" + GetErrorMessage());
            }
        }

        void ISDK.StopRecord()
        {
            if (!SHCFNetSDK.NET_SDK_StopSaveLiveData(realHandle))
            {
                throw new Exception("[上海诚丰]录制失败：" + GetErrorMessage());
            }
        }

        string ISDK.Capture2Base64()
        {
            string PictureFileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.bmp);

            if (!SHCFNetSDK.NET_SDK_CapturePicture(realHandle, PictureFileName))
            {
                throw new Exception("[上海诚丰]截图失败：" + GetErrorMessage());
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

        string ISDK.Capture2Image()
        {
            string PictureFileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.bmp);
            SHCFNetSDK.NET_SDK_CapturePicture(realHandle, PictureFileName);
            return PictureFileName;
        }

        void ISDK.CamerControl(Direction direction, uint step, bool stop)
        {
            uint directionNum = 0;
            switch (direction)
            {
                case Direction.Up://上
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

            SHCFNetSDK.NET_SDK_PTZControl(realHandle, directionNum, step);
        }

        List<Video> ISDK.GetVideoList()
        {
            throw new NotImplementedException("[上海诚丰]直连设备SDK不支持获取视频列表");
        }

        void ISDK.Release()
        {
            if (!SHCFNetSDK.NET_SDK_Cleanup())
            {
                throw new Exception("[上海诚丰]SDK销毁失败！");
            }
        }

        /// <summary>
        /// 预览回调不作实现
        /// </summary>
        /// <param name="lLiveHandle"></param>
        /// <param name="frameInfo"></param>
        /// <param name="pBuffer"></param>
        /// <param name="pUserr"></param>
        public void LiveDataCallBack(Int32 lLiveHandle, DVRSDK.NET_SDK_FRAME_INFO frameInfo, Byte[] pBuffer, IntPtr pUserr)
        {

        }
        //获取错误信息
        private string GetErrorMessage()
        {
            int error = (int)SHCFNetSDK.NET_SDK_GetLastError();
            string msg = SHCFNetSDK.NET_SDK_GetErrorMsg(ref error);
            return msg;
        }
    }
}

