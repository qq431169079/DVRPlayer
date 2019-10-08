using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace DVRSDK
{
    /// <summary>
    /// 委托
    /// </summary>
    /// <param name="lLiveHandle"></param>
    /// <param name="frameInfo"></param>
    /// <param name="pBuffer"></param>
    /// <param name="pUser"></param>
    public delegate void LIVE_DATA_CALLBACK(Int32 lLiveHandle, NET_SDK_FRAME_INFO frameInfo, Byte[] pBuffer, IntPtr pUser);
    /// <summary>
    /// 结构
    /// </summary>
    public struct LPNET_SDK_DEVICEINFO
    {
        public Byte localVideoInputNum;		//本地视频输入通道数目
        public Byte audioInputNum;			//音频输入通道数目
        public Byte sensorInputNum;			//传感器输入通道数目
        public Byte sensorOutputNum;		//继电器输出数目
        public UInt32 displayResolutionMask;  //监视器可选择的分辨率

        public Byte videoOuputNum;			//视频输出数目（及支持回放最大通道数）
        public Byte netVideoOutputNum;		//网络回放最大通道数目
        public Byte netVideoInputNum;		//数字信号接入通道数目
        public Byte IVSNum;					//智能分析通道数目

        public Byte presetNumOneCH;			//每个通道预置点数目
        public Byte cruiseNumOneCH;			//每个通道巡航线数目
        public Byte presetNumOneCruise;		//每个巡航线的预置点数目
        public Byte trackNumOneCH;			//每个通道轨迹数目

        public Byte userNum;				//用户数目 
        public Byte netClientNum;			//最多客户端数目
        public Byte netFirstStreamNum;		//主码流传输的通道最大数目，即同时可以有几个客户端查看主码流
        public Byte deviceType;				//设备类型

        public Byte doblueStream;			//是否有提供双码流
        public Byte audioStream;			//是否有提供音频流
        public Byte talkAudio;				//是否有对讲功能: 1表示有对讲功能;0表示没有
        public Byte bPasswordCheck;			//操作是否要输入密码

        public Byte defBrightness;			//缺省亮度
        public Byte defContrast;			//缺省对比度
        public Byte defSaturation;			//缺省饱和度
        public Byte defHue;					//缺省色调

        public UInt16 videoInputNum;			//视频输入通道数目（本地加网络）
        public UInt16 deviceID;				//设备ID号
        public UInt32 videoFormat;            //系统当前制式

        //假如是FUNC_REMOTE_UPGRADE对应的功能，那么第FUNC_REMOTE_UPGRADE个比特为1，否则为零。
        [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 8, ArraySubType = UnmanagedType.I1)]
        public UInt32[] function;			//功能描述

        public UInt32 deviceIP;				//设备网络地址
        [MarshalAsAttribute(UnmanagedType.ByValArray, SizeConst = 6, ArraySubType = UnmanagedType.I1)]
        public Byte[] deviceMAC;			//设备物理地址
        public UInt16 devicePort;				//设备端口

        public UInt32 buildDate;				//创建日期:year<<16 + month<<8 + mday
        public UInt32 buildTime;				//创建时间:hour<<16 + min<<8 + sec



        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 36)]
        public string deviceName;	//设备名称

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 36)]
        public string firmwareVersion;	//固件版本

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 64)]
        public string kernelVersion;		//内核版本

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 36)]
        public string hardwareVersion;			//硬件版本

        [MarshalAs(UnmanagedType.ByValTStr, SizeConst = 36)]
        public string MCUVersion;
    }
    public struct NET_SDK_CLIENTINFO
    {
        public Int32 lChannel;
        public Int32 streamType;
        public IntPtr hPlayWnd;
    }
    public struct NET_SDK_FRAME_INFO
    {
        public UInt32 deviceID;
        public UInt32 channel;
        public UInt32 frameType;	//参考DD_FRAME_TYPE
        public UInt32 length;
        public UInt32 keyFrame;	//0：非关键帧 1：关键帧
        public UInt32 width;
        public UInt32 height;
        public UInt32 frameIndex;
        public UInt32 frameAttrib;//参考DD_FRAME_ATTRIB
        public UInt32 streamID;
        public Int64 time;//从1970年1月1日0点0分0秒开始的绝对时间，单位微秒
        public Int64 relativeTime;//相对时间，单位微秒
    }

    public struct DD_TIME
    {
        public Byte second;
        public Byte minute;
        public Byte hour;
        public Byte wday;
        public Byte mday;
        public Byte month;
        public UInt16 year;
    }


    /// <summary>
    /// 方法
    /// </summary>
    public class SHCFNetSDK
    {
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_Init();
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_Cleanup();


        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern Int32 NET_SDK_Login(string sDVRIP, ushort wDVRPort, string sUserName, string sPassword, ref LPNET_SDK_DEVICEINFO lpDeviceInfo);

        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_Logout(Int32 lUserID);

        //设置重连参数
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_SetConnectTime(uint dwWaitTime = 5000, uint dwTryTimes = 3);

        //预览相关接口
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern Int32 NET_SDK_LivePlay(Int32 lUserID, ref NET_SDK_CLIENTINFO lpClientInfo, LIVE_DATA_CALLBACK fLiveDataCallBack, IntPtr pUser);

        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_StopLivePlay(int lLiveHandle);

        //录像
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_MakeKeyFrame(Int32 lUserID, Int32 lChannel);
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_SaveLiveData(Int32 lLiveHandle, String sFileName);
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_StopSaveLiveData(Int32 lLiveHandle);

        //[DllImport(@"DVR_NET_SDK.dll")]
        //public static extern bool NET_SDK_StartDVRRecord(int lUserID, int lChannel, int lRecordType);
        //[DllImport(@"DVR_NET_SDK.dll")]
        //public static extern bool NET_SDK_StopDVRRecord(int lUserID, int lChannel);

        //[DllImport(@"DVR_NET_SDK.dll")]
        //public static extern int NET_SDK_GetFileByTime(int lUserID, int lChannel, ref DD_TIME lpStartTime, ref DD_TIME lpStopTime, string sSavedFileName);

        //[DllImport(@"DVR_NET_SDK.dll")]
        //public static extern int NET_SDK_GetDownloadPos(int lFileHandle);

        //截图
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_CapturePicture(int lLiveHandle, string sPicFileName);

        //云控制台
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern bool NET_SDK_PTZControl(int lLiveHandle, uint dwPTZCommand, uint dwSpeed);


        //错误查询
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern uint NET_SDK_GetLastError();
        [DllImport(@"DVR_NET_SDK.dll")]
        public static extern string NET_SDK_GetErrorMsg(ref int pErrorNo);


    }
}
