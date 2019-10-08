using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace DVRSDK
{

    public class XSJNetSDK
    {
        public XSJNetSDK()
        {

        }

        #region 宏定义

        public const int DD_MAX_CAMERA_NUM = 128;//允许接入的最大摄像设备数
        public const int DD_MAX_CAMERA_NUM_BYTE_LEN = 16;//允许接入的最大摄像设备字节长度
        public const int DD_MAX_SERIAL_NUMBER_LEN = 64;//序列号长度
        public const int DD_MAX_VERSION_BUF_LEN = 64;//版本缓存长度
        public const int DD_MAX_NAME_LEN = 64;//用户名长度
        public const int DD_MAX_NAME_BUF_LEN = 132;//用户名缓存长度
        public const int DD_MAX_CAMERA_NAME_LEN = 64;//允许最大的接入的摄像头设备名称长度
        public const int DD_MAX_CAMERA_NAME_BUF_LEN = 132;//允许最大的接入的摄像头设备名称缓存长度
        public const int DD_MAX_URL_LEN = 256;//允许的最大URL长度
        public const int DD_MAX_URL_BUF_LEN = 260;//允许的最大URL缓存长度长度
        public const int DD_MAX_COLOR_CFG_NUM = 3;//颜色控制流数
        public const int DD_MAX_TEXT_LEN = 64;//允许输入的文本长度
        public const int DD_MAX_TEXT_BUF_LEN = 132;//最大文本缓存长度
        public const int DD_MAX_VIDEO_COVER_NUM = 3;//最大视频覆盖数
        public const int DD_MAX_USER_NAME_LEN = 64;//最大用户名长度
        public const int DD_MAX_USER_NAME_BUF_LEN = 132;//用户名缓存长度
        public const int MAX_PASSWORD_LEN = 128;//最大密码长度
        public const int DD_MAX_PASSWORD_BUF_LEN = 132;//最大密码缓存长度
        public const int DD_MAX_PPPOE_ACCOUNT_LEN = 128;//PPPOE拨号号码最大长度
        public const int DD_MAX_PPPOE_ACCOUNT_BUF_LEN = 132;//PPPOE拨号号码缓存长度
        public const int DD_MAX_DDNS_ACCOUNT_LEN = 128;//最大DDNS号码长度
        public const int DD_MAX_DDNS_ACCOUNT_BUF_LEN = 132;//DDNS号码最大缓存长度
        public const int DD_MAX_EMAIL_RECEIVE_ADDR_NUM = 3;//邮件接收地址数
        public const int DD_MAX_MOTION_AREA_WIDTH_NUM = 1920 / 16;//移动区域宽度数值
        public const int DD_MAX_MOTION_AREA_HIGHT_NUM = ((1080 / 16) + 3) / 4;//移动区域高度数值
        public const int DD_MAX_PRESET_NUM = 128;//设备支持的云台预置点数
        public const int DD_MAX_CRUISE_NUM = 32;//设备支持的云台巡航数
        public const int DD_MAX_TRACK_NUM = 1;//设备支持的云台轨迹数
        public const int DD_MAX_ACCOUNT_NUM = 64;//最大用户数目
        public const int DD_MAX_BUF_SIZE = 512 * 1024;//缓存区大小


        #endregion

        #region 结构体
        /// <summary>
        /// 设备登陆结构体
        /// </summary>
        [StructLayoutAttribute(LayoutKind.Sequential)]
        public struct NET_SDK_DEVICEINFO
        {
            public byte localVideoInputNum;//本地视频输入通道数目 
            public byte audioInputNum;//音频输入通道数目 
            public byte sensorInputNum;//传感器输入通道数目
            public byte sensorOutputNum;//继电器输出数目
            public UInt32 displayResolutionMask;//监视器可选择的分辨率 
            public byte videoOuputNum;//视频输出数目（及支持回放最大通道数）
            public byte netVideoOutputNum;//网络回放最大通道数目 
            public byte netVideoInputNum;//数字信号接入通道数目
            public byte IVSNum;//智能分析通道数目 
            public byte presetNumOneCH;//每个通道预置点数目 
            public byte cruiseNumOneCH;//每个通道巡航线数目 
            public byte presetNumOneCruise;//每个巡航线的预置点数目 
            public byte trackNumOneCH;//每个通道轨迹数目
            public byte userNum;//用户数目
            public byte netClientNum;//最多客户端数目 
            public byte netFirstStreamNum;//主码流传输的通道最大数目，即同时可以有几个客户端查看主码流 cil
            public byte deviceType;//设备类型 
            public byte doblueStream;//是否有提供双码流
            public byte audioStream;//是否有提供音频流
            public byte talkAudio;//是否有对讲功能: 1表示有对讲功能;0表示没有
            public byte bPasswordCheck;//操作是否要输入密码
            public byte defBrightness;//缺省亮度
            public byte defContrast;//缺省对比度
            public byte defSaturation;//缺省饱和度 
            public byte defHue;//缺省色调 
            public UInt16 videoInputNum;//视频输入通道数目（本地加网络）
            public UInt16 deviceID;//设备ID号 
            public UInt32 videoFormat;//视频制式:DD_VIDEO_FORMAT_NTSC 0x011) ;DD_VIDEO_FORMAT_PAL 0x02(2) 

            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 8, ArraySubType = UnmanagedType.U4)]//--err,do
            public UInt32[] function;//功能描述

            public UInt32 deviceIP;//设备网络地址 
            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 8, ArraySubType = UnmanagedType.I1)]
            byte[] deviceMAC;//设备物理地址 


            public UInt32 buildDate;//创建日期:year<<16 + month<<8 + mday 
            public UInt32 buildTime;//创建时间:hour<<16 + min<<8 + sec 


            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 36)]//--err
            public Char[] deviceName;//设备名称


            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 36)]//--err
            public Char[] firmwareVersion;//固件版本 


            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 64)]//--err
            public Char[] kernelVersion; //内核版本


            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 36)]//--err
            public Char[] hardwareVersion;//硬件版本 


            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 36)]//--err
            public Char[] MCUVersion;//单片机版本
        };

        /// <summary>
        /// 日志信息结构体
        /// </summary>
        [StructLayoutAttribute(LayoutKind.Sequential)]
        public struct NET_SDK_CLIENTINFO
        {
            /// <summary>
            /// 通道号，从0开始
            /// </summary>
            public Int32 lChannel;
            /// <summary>
            /// 数据流类型，类型有两种NET_SDK_MAIN_STREAM和NET_ SDK_SUB_STREAM
            /// </summary>
            public Int32 streamType;
            /// <summary>
            /// 播放窗口句柄
            /// </summary>
            public IntPtr hPlayWnd;
        }

        /// <summary>
        /// 通道配置信息结构体
        /// </summary>
        [StructLayoutAttribute(LayoutKind.Sequential)]
        public struct DD_CHANNEL_CONFIG
        {
            /// <summary>
            /// 本结构体长度 
            /// </summary>
            UInt32 iSize;
            /// <summary>
            /// 是否隐藏通道
            /// </summary>
            UInt32 hide;
            /// <summary>
            /// 通道名称
            /// </summary>
            [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 132, ArraySubType = UnmanagedType.I1)]
            byte[] name;
        };


        /// <summary>
        /// 数据帧信息结构体
        /// </summary>
        [StructLayoutAttribute(LayoutKind.Sequential)]
        public struct NET_SDK_FRAME_INFO
        {
            public UInt32 deviceID;//设备ID号 
            public UInt32 channel;//数据通道，从0开始 
            public UInt32 frameType;//数据帧类型,参考DD_FRAME_TYPE
            public UInt32 length;//数据长度 
            public UInt32 keyFrame;//关键帧，0：非关键帧 1：关键帧 
            public UInt32 width;//数据帧宽度 
            public UInt32 height;//数据帧高度
            public UInt32 frameIndex;//数据帧索引
            public UInt32 frameAttrib;//数据帧属性,参考DD_FRAME_ATTRIB
            public UInt32 streamID;//数据流ID号 
            public Int64 time;//绝对时间，从1970年1月1日0点0分0秒开始的绝对时间，单位微秒,在改变设备时 cilbu间p时会变化
            public Int64 relativeTime;//相对时间，单位微秒,在改变设备时间时不会变化，是个连续的时间
        };

        #endregion

        #region 回调函数
        /// <summary>
        /// 实时预览数据捕获时数据回调。
        /// </summary>
        /// <param name="lLiveHandle">实时预览句柄</param>
        /// <param name="frameInfo">实时预览数据帧信息 </param>
        /// <param name="pBuffer">缓冲区指针</param>
        /// <param name="pUser">用户信息指针 </param>
        public delegate void LIVE_DATA_CALLBACK(Int32 lLiveHandle, NET_SDK_FRAME_INFO frameInfo, ref byte pBuffer, IntPtr pUser);

        /// <summary>
        /// 预览时数据回调。
        /// </summary>
        /// <param name="lLiveHandle">预览接口句柄 </param>
        /// <param name="hDC">设备描述表句柄</param>
        /// <param name="pUser">用户信息指针</param>
        /// <returns></returns>
        public delegate void DRAW_FUN_CALLBACK(Int32 lLiveHandle, IntPtr hDC, IntPtr pUser);
        #endregion

        #region << 接口函数 >>

        /// <summary>
        /// 启用写日志文件。
        /// </summary>
        /// <param name="bLogEnable">是否启用写日志功能，默认值为FALSE </param>
        /// <param name="strLogDir">日志文件的路径，默认值为NULL </param>
        /// <param name="bAutoDel">是否删除超出的文件数，默认值为TRUE </param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_SetLogToFile(bool bLogEnable, string strLogDir, bool bAutoDel);

        /// <summary>
        /// 初始化SDK
        /// </summary>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_Init();


        /// <summary>
        /// 用户注册设备。
        /// </summary>
        /// <param name="sDVRIP">设备IP地址 </param>
        /// <param name="wDVRPort">设备端口号</param>
        /// <param name="sUserName">登录的用户名</param>
        /// <param name="sPassword">用户密码</param>
        /// <param name="lpDeviceInfo">设备信息</param>
        /// <returns>-1表示失败，其他值表示返回的用户ID值。该用户ID具有唯一性，后续对设备的操作都需要通过此ID实现。</returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern int NET_SDK_Login(string sDVRIP, uint wDVRPort, string sUserName, string sPassword, ref NET_SDK_DEVICEINFO lpDeviceInfo);

        /// <summary>
        /// 用户注销。
        /// </summary>
        /// <param name="lUserID">用户ID号，NET_SDK_Login()的返回值</param>
        /// <returns>TRUE表示成功，FALSE表示失败</returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_Logout(Int32 lUserID);

        //preview
        /// <summary>
        /// 实时预览
        /// </summary>
        /// <param name="lUserID">登录后返回的用户id</param>
        /// <param name="pClientInfo">预览参数</param>
        /// <param name="fLiveDataCallBack">预览数据回调参数，默认值为NULL </param>
        /// <param name="pUser">用户指针，默认值为NULL</param>
        /// <returns>-1表示失败，其他值作为NET_SDK_StopLivePlay等函数的句柄参数。</returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern Int32 NET_SDK_LivePlay(Int32 lUserID, ref NET_SDK_CLIENTINFO pClientInfo, LIVE_DATA_CALLBACK fLiveDataCallBack, IntPtr pUser);
        /// <summary>
        /// 停止预览
        /// </summary>
        /// <param name="lLiveHandle">预览句柄，NET_SDK_LivePlay的返回值</param>
        /// <returns>TRUE表示成功，FALSE表示失败</returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_StopLivePlay(Int32 lLiveHandle);
        /// <summary>
        /// 单帧数据捕获并保存成BMP位图。
        /// </summary>
        /// <param name="lLiveHandle">NET_SDK_LivePlay()函数的返回值</param>
        /// <param name="sPicFileName">保存BMP图象的文件路径，后缀为.bmp，文件路径的长度小于等于256字节</param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_CapturePicture(Int32 lLiveHandle, String sPicFileName);

        /// <summary>
        /// JPEG格式抓图接口
        /// </summary>
        /// <param name="lUserID"> NET_SDK_Login()的返回值 </param>
        /// <param name="lChannel">通道号（从0开始）</param>
        /// <param name="sPicFileName">JPEG文件保存路径</param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_CaptureJPEGFile_V2(Int32 lUserID, Int32 lChannel, String sPicFileName);



        /// <summary>
        /// 主码流动态产生一个关键帧。
        /// </summary>
        /// <param name="lUserID">NET_SDK_Login()的返回值</param>
        /// <param name="lChannel">通道号，从0开始</param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_MakeKeyFrame(Int32 lUserID, Int32 lChannel);

        /// <summary>
        /// 子码流动态产生一个关键帧。
        /// </summary>
        /// <param name="lUserID">NET_SDK_Login()的返回值</param>
        /// <param name="lChannel">通道号，从0开始 </param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_MakeKeyFrameSub(Int32 lUserID, Int32 lChannel);

        /// <summary>
        /// 保存实时预览数据。
        /// </summary>
        /// <param name="lLiveHandle">NET_SDK_LivePlay()的返回值 </param>
        /// <param name="sFileName">文件路径指针</param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_SaveLiveData(Int32 lLiveHandle, String sFileName);

        /// <summary>
        /// 停止数据捕获
        /// </summary>
        /// <param name="lLiveHandle">NET_SDK_LivePlay()函数的返回值 </param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_StopSaveLiveData(Int32 lLiveHandle);

        /// <summary>
        /// 释放SDK资源，在结束之前最后调用
        /// </summary>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_Cleanup();

        /// <summary>
        /// 云台控制操作(需先启动图象预览)。
        /// </summary>
        /// <param name="lLiveHandle"> NET_SDK_LivePlay()函数返回值</param>
        /// <param name="dwPTZCommand">
        /// 云台控制命令
        /// 0 云台停止 
        /// 1 云台左转 
        /// 3 云台右转 
        /// 4 云台上仰 
        /// 5 云台下俯 
        /// 6 云台左上转 
        /// 7 云台左下转 
        /// 8 云台右上转 
        /// 9 云台右下转 
        /// 12 焦距变小(倍率变小)
        /// 13 焦距变大(倍率变大)
        /// </param>
        /// <param name="dwSpeed">云台速度,1-8</param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_PTZControl(Int32 lLiveHandle, UInt32 dwPTZCommand, UInt32 dwSpeed);

        /// <summary>
        /// 获取设备的配置信息。
        /// </summary>
        /// <param name="lUserID">NET_SDK_Login()的返回值 </param>
        /// <param name="dwCommand">设备配置命令，参见配置命令</param>
        /// <param name="Channel">通道号，从0开始，如果命令不需要通道号，该参数无效，置为0xFFFFFFFF即可</param>
        /// <param name="lpOutBuffer">[out] 接收数据的缓冲指针</param>
        /// <param name="dwOutBufferSize">接收数据的缓冲长度(以字节为单位)，不能为0</param>
        /// <param name="lpBytesReturned">[out] 实际收到的数据长度指针，不能为NULL</param>
        /// <param name="bDefautlConfig">是否为默认配置 </param>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_GetDVRConfig(Int32 lUserID, Int32 dwCommand, Int32 Channel,
IntPtr lpOutBuffer, Int32 dwOutBufferSize, IntPtr lpBytesReturned, bool bDefautlConfig);

        /// <summary>
        /// 返回最后操作的错误码
        /// </summary>
        /// <returns></returns>
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern uint NET_SDK_GetLastError();

        #endregion
    }
}
