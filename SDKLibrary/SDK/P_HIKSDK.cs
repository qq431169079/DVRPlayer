using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DVRSDK;
using System.Drawing;
using System.IO;
using System.Runtime.InteropServices;

namespace SDKLibrary
{
    public class P_HIKSDK : ISDK
    {

        private DelegateDef.StreamCallBack _OnPreviewStreamCallBack = null;
        private DelegateDef.PlayMsgCallBack _OnPreviewMsgCallBack = null;
        private DelegateDef.DecodedDataCallBack _OnPreviewDecodedDataCallBack = null;

        public SDKTYPE SDKType { get { return SDKTYPE.Platform_SDK; } }
        public Video VideoInfo
        {
            get;set;
        }

        public void CamerControl(Direction direction, uint step, bool stop = false)
        {
            int cmdId = 0;
            switch (direction)
            {
                case Direction.Up:
                    cmdId = 21;
                    break;
                case Direction.Down:
                    cmdId = 22;
                    break;
                case Direction.Left:
                    cmdId = 23;
                    break;
                case Direction.Right:
                    cmdId = 24;
                    break;
                case Direction.UpLeft:
                    cmdId = 25;
                    break;
                case Direction.UpRight:
                    cmdId = 26;
                    break;
                case Direction.DownLeft:
                    cmdId = 27;
                    break;
                case Direction.DownRight:
                    cmdId = 28;
                    break;
                case Direction.ZoomIn:
                    cmdId = 11;
                    break;
                case Direction.ZoomOut:
                    cmdId = 12;
                    break;
                default:
                    break;
            }

            int stg = 0;
            if (stop) stg = 1;

            HIKPlatformSDK.ISMS_PtzControl(VideoInfo.UUID, cmdId, stg, int.Parse(step.ToString()), 0);
        }

        public string Capture2Base64()
        {
            string file = Capture2Image();
            Bitmap bmp = new Bitmap(file);

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
            string fileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.jpg);
            try
            {
                int rst = HIKPlatformSDK.ISMS_PreviewSnapshot(VideoInfo.PlayInfo.PlayHandle, fileName);
                if (rst < 0)
                {
                    throw new Exception(GetErrorMessage(rst));
                }
            }
            catch (Exception ex)
            {
                throw new Exception("[海康平台]调用SDK截图功能出错" + Environment.NewLine + ex.Message);
            }
            return fileName;
        }

        public void Release()
        {
            HIKPlatformSDK.ISMS_Fini();
        }

        void InitDelegates()
        {
            _OnPreviewDecodedDataCallBack = new DelegateDef.DecodedDataCallBack(OnPreviewDecodedDataCallBack);
            _OnPreviewMsgCallBack = new DelegateDef.PlayMsgCallBack(OnPreviewMsgCallBack);
            _OnPreviewStreamCallBack = new DelegateDef.StreamCallBack(OnPreviewCallBack);
        }

        #region 预览解码后数据回调
        void OnPreviewDecodedDataCallBack(int lPlayHandle, IntPtr pDataArray, int iDataLen, int iWidth, int iHeight, int iFrameType, int iTimeStamp, IntPtr pUserData)
        {

        }
        #endregion

        #region 预览消息回调
        void OnPreviewMsgCallBack(int iPlayHandle, int iMsg, IntPtr pUserData)
        {
        }
        #endregion

        #region 预览码流回调
        void OnPreviewCallBack(int lPlayHandle, streamType enStreamType, IntPtr pArray, int iDataLen, IntPtr pUserData)
        {

        }
        #endregion

        public void Init()
        {
                try
                {
                    int init = HIKPlatformSDK.ISMS_Init();
                    if (init < 0)
                    {
                        throw new Exception(HIKPlatformSDK.ISMS_GetLastError() + Environment.NewLine + GetErrorMessage(init));
                    }
                    InitDelegates();
                }
                catch (Exception ex)
                {
                    throw new Exception("[海康平台]初始化失败。" + Environment.NewLine + ex.Message);
                }
        }

        public void Login(LoginInfo logininfo)
        {
            try
            {

                int ret = HIKPlatformSDK.ISMS_Login(logininfo.Ip, logininfo.Port, logininfo.UserName, logininfo.Password);
                

                if (ret < 0)
                {
                    string emg = GetErrorMessage(ret);
                    if (!emg.Contains("104"))
                    {
                        throw new Exception(emg);
                    }
                }

                VideoInfo.PlayInfo.LoginHandle = ret;
            }
            catch (Exception ex)
            {
                throw new Exception("[海康平台]登录失败。" + Environment.NewLine + ex.Message);
            }

        }

        public void LogOut()
        {
                try
                {
                    HIKPlatformSDK.ISMS_Logout();
                }
                catch (Exception ex)
                {
                    throw new Exception("[海康平台]注销登录失败。" + Environment.NewLine + ex.Message);
                }
        }

        public void StartPlay(IntPtr handle)
        {
            try
            {
                int plhd = HIKPlatformSDK.ISMS_StartPreviewEx(VideoInfo.UUID, handle, streamType.TYPE_MAIN_STREAM, _OnPreviewStreamCallBack, null, _OnPreviewDecodedDataCallBack, IntPtr.Zero);
                
                if (plhd < 0)
                {
                    throw new Exception( GetErrorMessage(plhd));
                }

                VideoInfo.PlayInfo.PlayHandle = plhd;
            }
            catch (Exception ex)
            {
                throw new Exception("[海康平台]播放失败：" + Environment.NewLine + ex.Message);
            }
        }

        void GetCammerInfoByUUID(string camuuid)
        {
            StructDataDef.stCamera camera = new StructDataDef.stCamera();
            HIKPlatformSDK.ISMS_GetCameraInfoByUuid(camuuid, ref camera);
        }

        void GetVideoDeviceInfoByUuid(string devuuid)
        {
            StructDataDef.stDevice device = new StructDataDef.stDevice();
            HIKPlatformSDK.ISMS_GetVideoDeviceInfoByUuid(devuuid, ref device);
        }

        void GetVideoDetailInfo()
        {

        }

        public void StartRecord()
        {
            throw new NotImplementedException("海康平台不支持本地录像");
        }

        public void StopPlay()
        {
            HIKPlatformSDK.ISMS_StopPreview(VideoInfo.PlayInfo.PlayHandle);
        }

        public void StopRecord()
        {
            throw new NotImplementedException("海康平台不支持本地录像");
        }

        string GetErrorMessage(int errid)
        {
            string msg = "未定义错误";
            switch (errid)
            {
                case -1:
                    return GetErrorMessage(HIKPlatformSDK.ISMS_GetLastError());
                case 0:
                    msg = "成功";
                    break;
                case 1:
                    msg = "参数错误";
                    break;
                case 2:
                    msg = "网络异常";
                    break;
                case 3:
                    msg = "申请内存失败";
                    break;
                case 4:
                    msg = "申请内存不足";
                    break;
                case 5:
                    msg = "没有初始化";
                    break;
                case 6:
                    msg = "webservice初始化失败";
                    break;
                case 7:
                    msg = "设备无响应";
                    break;
                case 8:
                    msg = "流媒体库启动失败";
                    break;
                case 9:
                    msg = "还有用户句柄没有释放，不允许反初始化";
                    break;
                case 10:
                    msg = "用户句柄无效";
                    break;
                case 11:
                    msg = "创建线程失败";
                    break;
                case 12:
                    msg = "无法连接服务器";
                    break;
                case 13:
                    msg = "接口调用成功，但无数据";
                    break;
                case 100:
                    msg = "登录失败";
                    break;
                case 101:
                    msg = "未登录";
                    break;
                case 102:
                    msg = "登出失败";
                    break;
                case 103:
                    msg = "密码错误";
                    break;
                case 104:
                    msg = "用户已经登录";
                    break;
                case 105:
                    msg = "用户已经过期";
                    break;
                case 106:
                    msg = "用户未激活";
                    break;
                case 107:
                    msg = "用户名不唯一";
                    break;
                case 108:
                    msg = "用户已被删除";
                    break;
                case 109:
                    msg = "用户名不存在";
                    break;
                case 110:
                    msg = "无此用户会话ID";
                    break;
                case 201:
                    msg = "查询权限失败";
                    break;
                case 202:
                    msg = "用户无控制权限";
                    break;
                case 203:
                    msg = "用户无配置权限";
                    break;
                case 204:
                    msg = "用户无预览权限";
                    break;
                case 205:
                    msg = "用户无回放权限";
                    break;
                case 206:
                    msg = "没有该资源";
                    break;
                case 301:
                    msg = "获取控制中心失败";
                    break;
                case 302:
                    msg = "获取区域失败";
                    break;
                case 303:
                    msg = "获取预置点失败";
                    break;
                case 304:
                    msg = "获取录像计划失败";
                    break;
                case 305:
                    msg = "获取服务器信息失败";
                    break;
                case 306:
                    msg = "查询录像文件失败";
                    break;
                case 307:
                    msg = "获取设备失败";
                    break;
                case 308:
                    msg = "获取监控点失败";
                    break;
                case 309:
                    msg = "获取图片数据失败";
                    break;
                case 310:
                    msg = "获取回放时间失败";
                    break;
                case 311:
                    msg = "获取视频图像参数失败";
                    break;
                case 701:
                    msg = "资源控制失败";
                    break;
                case 702:
                    msg = "云台控制失败";
                    break;
                case 703:
                    msg = "云台抢占失败";
                    break;
                case 704:
                    msg = "预览失败";
                    break;
                case 705:
                    msg = "回放失败";
                    break;
                case 706:
                    msg = "停止播放失败";
                    break;
                case 707:
                    msg = "停止回放失败";
                    break;
                case 708:
                    msg = "播放控制失败";
                    break;
                case 709:
                    msg = "对讲失败";
                    break;
                case 710:
                    msg = "停止对讲失败";
                    break;
                case 711:
                    msg = "抓图失败";
                    break;
                case 712:
                    msg = "手动录像失败";
                    break;
                case 713:
                    msg = "录像下载失败";
                    break;
                case 714:
                    msg = "停止录像下载失败";
                    break;
                case 715:
                    msg = "预置点操作失败";
                    break;
                case 716:
                    msg = "设置视频图像参数失败";
                    break;
                case 717:
                    msg = "声音操作失败";
                    break;
                case 718:
                    msg = "紧急录像相关错误";
                    break;
                default:
                    break;
            }
            return "错误码[" + errid + "]，" + msg;
        }

        public List<Video> GetVideoList()
        {
            StructDataDef.stPageReq stReq = new StructDataDef.stPageReq();
            StructDataDef.stPageRsp stRsp = new StructDataDef.stPageRsp();
            int iPageNo = 1;
            Int64 i64TmpUpdateTime = 0;
            int iSize = Marshal.SizeOf(typeof(StructDataDef.stDevice));
            int iNeedMem = 800 * iSize;
            stReq.iPageRows = 800;

            #region getvideoinfo

            iPageNo = 1;
            iSize = Marshal.SizeOf(typeof(StructDataDef.stCamera));
            iNeedMem = 800 * iSize;
            stReq.iPageRows = 800;

            List<Video> resutl = new List<Video>();

            while (true)
            {
                IntPtr pCamera = Marshal.AllocHGlobal(iNeedMem);
                for (int i = 0; i < iNeedMem; ++i)
                {
                    Marshal.WriteByte(pCamera, 0);
                }

                stReq.iPageNo = iPageNo;
                int iStartTime = Environment.TickCount;
                int iRet = HIKPlatformSDK.ISMS_GetCameraInfo(ref stReq, ref stRsp, pCamera);
                int iTimeElapse = Environment.TickCount - iStartTime;
                bool bSuccess = iRet == 0;
                //string szDesc = true != bSuccess ? string.Format("全量获取第{0}页设备失败，耗时{1}毫秒", iPageNo, iTimeElapse)  : string.Format("共有{0}页记录，获取第{1}页成功，该页有{2}条记录，耗时{3}毫秒", stRsp.iTotalPage, iPageNo, stRsp.iRealRows, iTimeElapse);
                if (true != bSuccess)
                {
                    Marshal.FreeHGlobal(pCamera);
                    return null;
                }

                if (0 == stRsp.iRealRows || stRsp.iPageNo != stReq.iPageNo)
                {
                    Marshal.FreeHGlobal(pCamera);
                    break;
                }

                if (1 == iPageNo)
                {
                    i64TmpUpdateTime = stRsp.iUpdateTime;
                }
                else
                {
                    if (i64TmpUpdateTime > stRsp.iUpdateTime)
                    {
                        i64TmpUpdateTime = stRsp.iUpdateTime;
                    }
                }

                //InsertOperLogInfo("ISMS_GetCameraInfo", szDesc, bSuccess ? 0 : InterfaceDef.ISMS_GetLastError());
                IntPtr pTmp = pCamera;
                for (int j = 0; j < stRsp.iRealRows; ++j)
                {
                    StructDataDef.stCamera pSingle = (StructDataDef.stCamera)Marshal.PtrToStructure(pTmp, typeof(StructDataDef.stCamera));

                    Video vii = new Video()
                    {
                        UUID = pSingle.szCameraUuid,
                        DeviceID=pSingle.szDeviceUuid,
                        VideoName = pSingle.szCameraName
                    };
                    resutl.Add(vii);
                    

                    pTmp = new IntPtr(pTmp.ToInt32() + iSize);
                }

                ++iPageNo;
                Marshal.FreeHGlobal(pCamera);
            }

            return resutl;
            #endregion
        }
        
    }
}
