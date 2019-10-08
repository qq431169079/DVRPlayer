using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DVRSDK;
using System.IO;
using System.Drawing;

namespace SDKLibrary
{
    public class DHSDK : ISDK
    {
        
        IntPtr iLoginUserId = IntPtr.Zero;
        IntPtr iRealHandle = IntPtr.Zero;
        public Video VideoInfo { get; set; }

        public SDKTYPE SDKType { get { return SDKTYPE.Direct_SDK; } }

        public string Capture2Base64()
        {
            string fileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.jpg);
            bool result = DHNetSDK.CLIENT_CapturePicture(iRealHandle, fileName, DHNetSDK.NET_CAPTURE_FORMATS.NET_CAPTURE_JPEG);
            if (!result)
            {
                throw new Exception("[大华]抓图失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(result));
            }
            else
            {
                Bitmap bmp = new Bitmap(fileName);

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
        }

        public string Capture2Image()
        {
            string fileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.jpg);
            bool result = DHNetSDK.CLIENT_CapturePicture(iRealHandle, fileName, DHNetSDK.NET_CAPTURE_FORMATS.NET_CAPTURE_JPEG);
            if (!result)
            {
                throw new Exception("[大华]抓图失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(result));
            }
            else
            {
                return fileName;
            }
        }

        public void Release()
        {
            DHNetSDK.CLIENT_Cleanup();
        }

        public void Init()
        {
            try
            {
                bool init = DHNetSDK.CLIENT_Init(null, IntPtr.Zero);
                if (!init)
                {
                    throw new Exception("[大华]SDK初始化失败:" + DHNetSDK.GetErrorMessage(init));
                }
            }
            catch(Exception ex)
            {
                throw new Exception("[大华]SDK初始化失败:" + Environment.NewLine + ex.Message);
            }
        }

        public void Login(LoginInfo logininfo)
        {
            DHNetSDK.NET_DEVICEINFO_Ex dinfo = new DHNetSDK.NET_DEVICEINFO_Ex();

            int error = 0;
            iLoginUserId = DHNetSDK.CLIENT_LoginEx2(logininfo.Ip, Convert.ToUInt16(logininfo.Port), logininfo.UserName, logininfo.Password, DHNetSDK.EM_LOGIN_SPAC_CAP_TYPE.TCP, IntPtr.Zero, ref dinfo, ref error);

            if (IntPtr.Zero == iLoginUserId)
            {
                throw new Exception("[大华]登录失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(iLoginUserId));
            }
        }

        public void LogOut()
        {
            bool logout = DHNetSDK.CLIENT_Logout(iLoginUserId);
            if (!logout)
            {
                throw new Exception("[大华]注销登录失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(logout));
            }
            else
            {
                iLoginUserId = IntPtr.Zero;
            }
        }

        public void StartPlay(IntPtr handle)
        {
            iRealHandle = DHNetSDK.CLIENT_StartRealPlay(iLoginUserId, VideoInfo.Channel, handle, DHNetSDK.EM_RealPlayType.Realplay, null, null, IntPtr.Zero, 0);
            if (IntPtr.Zero == iRealHandle)
            {
                throw new Exception("[大华]播放失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(iRealHandle));
            }
        }

        public void StartRecord()
        {
            bool result = DHNetSDK.CLIENT_SaveRealData(iRealHandle, Helper.UniqueFile(SaveFileType.Video,FileExtensionType.dav));
            if (!result)
            {
                throw new Exception("[大华]录像失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(result));
            }
        }

        public void StopPlay()
        {
            bool result = DHNetSDK.CLIENT_StopRealPlayEx(iRealHandle);
            if (!result)
            {
                throw new Exception("[大华]停止预览失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(result));
            }
        }

        public void StopRecord()
        {
            bool result = DHNetSDK.CLIENT_StopSaveRealData(iRealHandle);
            if (!result)
            {
                throw new Exception("[大华]保存录像失败：" + Environment.NewLine + DHNetSDK.GetErrorMessage(result));
            }
        }

        public void CamerControl(Direction direction, uint step,bool stop = false)
        {
            DHNetSDK.EM_EXTPTZ_ControlType contype = new DHNetSDK.EM_EXTPTZ_ControlType();

            switch (direction)
            {
                case Direction.Up://上
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.UP_CONTROL;
                    break;
                case Direction.Down://下
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.DOWN_CONTROL;
                    break;
                case Direction.Left://左
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.LEFT_CONTROL;
                    break;
                case Direction.Right://右
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.RIGHT_CONTROL;
                    break;
                case Direction.UpLeft://上左
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.LEFTTOP;
                    break;
                case Direction.UpRight://上右
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.RIGHTTOP;
                    break;
                case Direction.DownLeft://下左
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.LEFTDOWN;
                    break;
                case Direction.DownRight://下右
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.RIGHTDOWN;
                    break;
                case Direction.ZoomIn://放大
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.ZOOM_ADD_CONTROL;
                    break;
                case Direction.ZoomOut://缩小
                    contype = DHNetSDK.EM_EXTPTZ_ControlType.ZOOM_DEC_CONTROL;
                    break;
                default:
                    break;
            }
            if (!DHNetSDK.CLIENT_DHPTZControlEx2(iLoginUserId, VideoInfo.Channel, Convert.ToUInt32(contype), Convert.ToInt32(step), Convert.ToInt32(step), Convert.ToInt32(step), stop, IntPtr.Zero))
            {
                throw new Exception("[大华]云台操作失败！");
            }
        }
        
        
        List<Video> ISDK.GetVideoList()
        {
            throw new NotImplementedException("[大华]直连设备SDK不支持获取视频列表");
        }
    }
}
