using DVRSDK;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;

namespace SDKLibrary.SDK
{
    public class XMSDK : ISDK
    {
        /// <summary>
        /// 登录后会有一个大于0的userid
        /// </summary>
        private Int32 loginUserId = -1;
        /// <summary>
        /// 正在播放的句柄
        /// </summary>
        private Int32 realHandle = -1;

        //播放窗口句柄
        private IntPtr hWnd = IntPtr.Zero;
        public Video VideoInfo { get; set; }

        public SDKTYPE SDKType { get { return SDKTYPE.Direct_SDK; } }



        public void Init()
        {
            XMNetSDK.g_config.nSDKType = XMNetSDK.SDK_TYPE.SDK_TYPE_GENERAL;
            IntPtr pUser = new IntPtr();//用户数据
            int bResult = XMNetSDK.H264_DVR_Init(null, pUser);
            XMNetSDK.H264_DVR_SetConnectTime(5000, 3);
        }

        public void Login(LoginInfo logininfo)
        {
            H264_DVR_DEVICEINFO OutDev = new H264_DVR_DEVICEINFO();
            OutDev.Init();
            int nError = 0;
            loginUserId = XMNetSDK.H264_DVR_Login(logininfo.Ip, (ushort)logininfo.Port, logininfo.UserName, logininfo.Password, ref OutDev, out nError, SocketStyle.TCPSOCKET);
            if (loginUserId <= 0)
            {

                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]登录失败：" + nErr);
            }
            XMNetSDK.H264_DVR_SetupAlarmChan(loginUserId);
        }

        public void LogOut()
        {
            Int32 isLogOut = XMNetSDK.H264_DVR_Logout(loginUserId);
            if (isLogOut == 0)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]注销失败：" + nErr);
            }
            loginUserId = -1;
        }

        public void StartPlay(IntPtr handle)
        {
            H264_DVR_CLIENTINFO lpClientInfo = new H264_DVR_CLIENTINFO();
            lpClientInfo.nChannel = VideoInfo.Channel;
            lpClientInfo.nStream = 0;
            lpClientInfo.nMode = 0;
            lpClientInfo.hWnd = handle;

            int rHandle = XMNetSDK.H264_DVR_RealPlay(loginUserId, ref lpClientInfo);
            if (rHandle <= 0)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]播放失败：" + nErr);
            }
            hWnd = handle;
            realHandle = rHandle;
        }

        public void StopPlay()
        {
            int isStopPlay = XMNetSDK.H264_DVR_StopRealPlay(realHandle, (uint)hWnd);
            if (isStopPlay == 0)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]播放失败：" + nErr);
            }
            realHandle = -1;
        }

        public void StartRecord()
        {
            string VideoFileName = Helper.UniqueFile(SaveFileType.Video, FileExtensionType.avi);
            //强制I帧 Make a I frame
            XMNetSDK.H264_DVR_MakeKeyFrame(loginUserId, VideoInfo.Channel, 0);

            bool isStartRecord = XMNetSDK.H264_DVR_StartLocalRecord(realHandle, VideoFileName, 2);
            if (!isStartRecord)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]开始录像失败：" + nErr);
            }

        }

        public void StopRecord()
        {
            bool isStopRecord = XMNetSDK.H264_DVR_StopLocalRecord(realHandle);
            if (!isStopRecord)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]结束录像失败：" + nErr);
            }
        }

        public string Capture2Base64()
        {
            //图片保存路径和文件名 the path and file name to save
            string PictureFileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.bmp);

            bool isCapture = XMNetSDK.H264_PLAY_CatchPic(VideoInfo.Channel, PictureFileName, 0);
            if (!isCapture)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]截图失败：" + nErr);
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

            bool isCapture = XMNetSDK.H264_PLAY_CatchPic(VideoInfo.Channel, PictureFileName, 0);
            if (!isCapture)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]截图失败：" + nErr);
            }
            return PictureFileName;
        }

        public void CamerControl(Direction direction, uint step, bool stop = false)
        {
            int directionNum = 0;
            switch (direction)
            {
                case Direction.Up://上
                    directionNum = (int)PTZ_ControlType.TILT_UP;
                    break;
                case Direction.Down://下
                    directionNum = (int)PTZ_ControlType.TILT_DOWN;
                    break;
                case Direction.Left://左
                    directionNum = (int)PTZ_ControlType.PAN_LEFT;
                    break;
                case Direction.Right://右
                    directionNum = (int)PTZ_ControlType.PAN_RIGHT;
                    break;
                case Direction.UpLeft://上左
                    directionNum = (int)PTZ_ControlType.PAN_LEFTTOP;
                    break;
                case Direction.UpRight://上右
                    directionNum = (int)PTZ_ControlType.PAN_RIGTHTOP;
                    break;
                case Direction.DownLeft://下左
                    directionNum = (int)PTZ_ControlType.PAN_LEFTDOWN;
                    break;
                case Direction.DownRight://下右
                    directionNum = (int)PTZ_ControlType.PAN_RIGTHDOWN;
                    break;
                case Direction.ZoomIn://放大
                    directionNum = (int)PTZ_ControlType.ZOOM_IN;
                    break;
                case Direction.ZoomOut://缩小
                    directionNum = (int)PTZ_ControlType.ZOOM_OUT;
                    break;
                default:
                    break;
            }
            try
            {
                bool isContSuccess = XMNetSDK.H264_DVR_PTZControl(loginUserId, VideoInfo.Channel, directionNum, stop, (int)step);
            }
            catch (Exception ex)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]云台控制失败：" + nErr);
            }

        }

        public List<Video> GetVideoList()
        {
            throw new NotImplementedException("[雄迈]直连设备SDK不支持获取视频列表");
        }

        public void Release()
        {
            bool isRelease = XMNetSDK.H264_DVR_Cleanup();
            if (!isRelease)
            {
                int nErr = XMNetSDK.H264_DVR_GetLastError();
                throw new Exception("[雄迈]释放失败：" + nErr);
            }
        }
    }
}

