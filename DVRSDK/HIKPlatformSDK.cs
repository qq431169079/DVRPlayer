using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace DVRSDK
{
    #region interface
    public class HIKPlatformSDK
    {
        public const string DLL_NAME = @"ISMSSDK.dll";

        [DllImport(DLL_NAME, EntryPoint = "ISMS_Init", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_Init();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_Fini", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_Fini();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_Login", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_Login(string szCmsIp, int iPort, string szUserName, string szPassword);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_Logout", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_Logout();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartListenEvent", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartListenEvent(DelegateDef.EventCallBack fnEvent, IntPtr pUserData);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StopListenEvent", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StopListenEvent();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartListenDataChange", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartListenDataChange(DelegateDef.DataChgCallBack fnDataChg, IntPtr pUserData);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StopListenDataChange", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StopListenDataChange();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartListenResourceStatus", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartListenResourceStatus(DelegateDef.ResourseStatusChgCallBack fnStatusChg, IntPtr pUserData);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StopListenResourceStatus", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StopListenResourceStatus();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetImageDataByUrl", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetImageDataByUrl(string szUrl, ref IntPtr ppszBuffer, ref int iBufferLen);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_ReleaseImageData", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_ReleaseImageData(IntPtr pszBuffer);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetImageFile", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetImageFile(string szUrl, string szFileName);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetCtrlUnitInfo", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetCtrlUnitInfo(ref StructDataDef.stPageReq stReq, ref StructDataDef.stPageRsp stRsp, IntPtr pstCtrlUnit);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetRegionInfo", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetRegionInfo(ref StructDataDef.stPageReq stReq, ref StructDataDef.stPageRsp stRsp, IntPtr pstCtrlUnit);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetVideoDeviceInfo", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetVideoDeviceInfo(ref StructDataDef.stPageReq stReq, ref StructDataDef.stPageRsp stRsp, IntPtr pstCtrlUnit);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetCameraInfo", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetCameraInfo(ref StructDataDef.stPageReq stReq, ref StructDataDef.stPageRsp stRsp, IntPtr pstCtrlUnit);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartPreview", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartPreview(string szCameraUuid, IntPtr pWnd, streamType enStreamType, DelegateDef.StreamCallBack fnTranformedData,
            IntPtr pUserData);
        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartPreviewEx", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartPreviewEx(string szCameraUuid, IntPtr pWnd, streamType enStreamType, DelegateDef.StreamCallBack fnTranformedData,
            DelegateDef.PlayMsgCallBack fnPlayMsg, DelegateDef.DecodedDataCallBack fnDecodedData, IntPtr pUserData);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StopPreview", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StopPreview(int lPlayHandle);  // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_QueryRecordPlan", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_QueryRecordPlan(string szCameraUuid, ref IntPtr ppstRecPlan);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_ReleaseRecordPlan", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_ReleaseRecordPlan(IntPtr pstRecPlan);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_QueryRecord", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_QueryRecord(string szCameraUuid, int iRecType, recLocationType enRecLocation,
            Int64 i64BeginTime, Int64 i64EndTime, ref IntPtr ppstRecSegment);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_ReleaseRecordSection", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_ReleaseRecordSection(IntPtr pstRecSection);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_CloseQueryRecord", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_CloseQueryRecord(int lQueryHandle);  // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartPlaybackEx", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartPlaybackEx(int lQueryHandle, IntPtr pWnd, DelegateDef.StreamCallBack fnTranformedData,
            DelegateDef.PlayMsgCallBack fnPlayMsg, DelegateDef.DecodedDataCallBack fnDecodedData, IntPtr pUserData);  // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StopPlayback", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StopPlayback(int lPlayHandle);  // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetLastError", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetLastError();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_SetPlaybackSpeed", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_SetPlaybackSpeed(int lPayHandle, int iSpeed);  // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_PausePlayback", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_PausePlayback(int lPayHandle);   // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_ResumePlayback", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_ResumePlayback(int lPayHandle);    // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_SeekPlayback", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_SeekPlayback(int lPayHandle, Int64 i64SeekTime);   // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_PlaybackSnapshot", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_PlaybackSnapshot(int lPayHandle, string szSaveFilePath);    // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_PreviewSnapshot", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_PreviewSnapshot(int lPayHandle, string szSaveFilePath);    // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_DeviceSnapshotAsData", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_DeviceSnapshotAsData(string szCameraUuid, enImageSize enSize, enImageQuality enQuality, ref IntPtr ppszBuffer, ref int iPicSize);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_DeviceSnapshotAsUrl", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_DeviceSnapshotAsUrl(string szCameraUuid, int iSize, int iQuality, IntPtr pszBuffer/*StringBuilder sb*/, uint uiUrlLength);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_ReleaseSnapshotData", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_ReleaseSnapshotData(IntPtr pszBuffer);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartManualRecord", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartManualRecord(string szCameraUuid, recLocationType enLocation, int iRecordSeconds);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartDownloadRecord", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartDownloadRecord(int lQueryHandle, string szSaveFilePath, UInt64 ui64MaxFileSize,
            DelegateDef.ProgressCallBack fnProgressCallBack, IntPtr pUserData);   // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StopDownloadRecord", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StopDownloadRecord(int lDownloadHandle);   // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StartDeviceTalk", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StartDeviceTalk(string szDeviceUuid, int iTalkChannelId, enTalkType enType);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_StopDeviceTalk", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_StopDeviceTalk();

        [DllImport(DLL_NAME, EntryPoint = "ISMS_PtzControl", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_PtzControl(string szCameraUuid, int iPtzCommand, int iAction, int iSpeed, int iParam);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetPresetByCamera", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetPresetByCamera(string szCameraUuid, ref IntPtr ppstPreset);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_ReleasePresetInfo", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_ReleasePresetInfo(IntPtr pstPresetInfo);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_SetPreset", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_SetPreset(string szCameraUuid, int iPresetId, string szPresetName);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_ClearPreset", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_ClearPreset(string szCameraUuid, int iPresetId);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetPlaybackTime", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetPlaybackTime(int lPayHandle, ref Int64 i64PlayTime);   // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetVideoImageParam", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetVideoImageParam(string szCameraUuid, ref StructDataDef.stVideoImageInfo stImgInfo);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_SetVideoImageParam", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_SetVideoImageParam(string szCameraUuid, ref StructDataDef.stVideoImageInfo stImgInfo);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_OpenSound", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_OpenSound(int lPlayHandle, enPlayType enType);    // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_CloseSound", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_CloseSound(int lPlayHandle, enPlayType enType);     // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_SetVolume", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_SetVolume(int lPlayHandle, int iVolume, enPlayType enType);      // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetVolume", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetVolume(int lPlayHandle, enPlayType enType);     // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetVideoDeviceInfoByUuid", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetVideoDeviceInfoByUuid(string szDeviceUuid, ref StructDataDef.stDevice stDevInfo);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetCameraInfoByUuid", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetCameraInfoByUuid(string szCameraUuid, ref StructDataDef.stCamera stCameraInfo);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetStreamTraceType", CallingConvention = CallingConvention.Cdecl)]
        public static extern enStreamTraceType ISMS_GetStreamTraceType(string szCameraUuid);

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetStreamType", CallingConvention = CallingConvention.Cdecl)]
        public static extern streamType ISMS_GetStreamType(int lPlayHandle);    // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetVideoDetailInfo", CallingConvention = CallingConvention.Cdecl)]
        public static extern int ISMS_GetVideoDetailInfo(int lPlayHandle, ref StructDataDef.stVideoDetailInfo stDetail, enPlayType enType);  // C++中是long  C#中为int

        [DllImport(DLL_NAME, EntryPoint = "ISMS_GetVersion", CallingConvention = CallingConvention.Cdecl)]
        public static extern string ISMS_GetVersion();
    }
    #endregion

    #region struct
    public class StructDataDef
    {
        [StructLayout(LayoutKind.Sequential)]
        public struct stPageReq
        {
            public int iPageNo;
            public int iPageRows;
            public Int64 iUpdateTime;      // 如果是0，则为全量更新，否则为增量更新
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stPageRsp
        {
            public int iPageNo;      // 当前页码（从1开始）
            public int iPageRows;    // 每页条数 
            public int iTotalPage;   // 总页数
            public int iRealRows;    // 当前页条数（最后一页存记录不一定满页）
            public Int64 iUpdateTime;   // 本次数据更新时间，指本页记录中最新的时间，单位：毫秒
        }

        // 控制中心
        [StructLayout(LayoutKind.Sequential)]
        public struct stCtrlUnit
        {
            public updateType enUpdateType;    // 更新类型

            // 中心UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szCtrlUnitUuid;

            // 中心名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szCtrlUnitName;

            // 所属父中心UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szParentCtrlUnitUuid;
        }

        // 区域
        [StructLayout(LayoutKind.Sequential)]
        public struct stRegion
        {
            public updateType enUpdateType;   // 更新类型

            // 区域UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szRegionUuid;

            // 区域名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szRegionName;

            // 父区域UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szParentRegionUuid;

            // 父中心UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szParentCtrlUnitUuid;
        }

        // 设备
        [StructLayout(LayoutKind.Sequential)]
        public struct stDevice
        {
            public int iAnalogTalkChanSize;    // 模拟对讲通道数
            public int iDigitalTalkChanSize;   // 数字对讲通道数
            public srcStatus enStatus;      // 视频编码设备状态
            public updateType enUpdateType;  // 更新类型

            // 设备UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szDeviceUuid;

            // 设备名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szDeviceName;

            public deviceType enDeviceType;   // 设备类型：海康设备，大华设备

            // 设备所属控制中心UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szCtrlUnitUuid;
        }

        // 监控点
        [StructLayout(LayoutKind.Sequential)]
        public struct stCamera
        {
            public int iChannelIndex;      // 在设备上所属通道号

            // 监控点UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szCameraUuid;

            // 监控点名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szCameraName;

            public srcStatus enCameraStatus;    // 监控点状态
            public updateType enUpdateType;     // 更新类型

            // 监控点所属设备UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szDeviceUuid;

            // 监控点所在中心UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szRegionUuid;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stEvent
        {
            public eventType enEventType;     // 事件类型
            public eventLevel enEventLevel;   // 事件等级
            public eventStatus enStatus;        // 事件状态

            // 事件发生时间
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_TIME_LENGTH)]
            public string szEventTime;

            // 事件源UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szSrcUuid;

            // 事件源名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szSrcName;

            // 事件UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szEventUuid;

            // 事件名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szEventName;

            // 事件描述
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_DESCRIPUTE_LENGTH)]
            public string szEventDesc;

            // const char*使用IntPtr来接受，解析时：string szDetailInfo = Marshal.PtrToStringAnsi(pDetaiInfo)
            public IntPtr pDetailInfo;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stDataChg
        {
            public dataChgType enDataChgType;

            // 数据变更名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_DATA_NAME)]
            public string szChgDataName;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stSrcStatusChg
        {
            public rSrcType enReSourceType;   // 资源类型

            // 资源UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szReSourceUuid;

            public srcStatus enResStatus;   // 资源状态

            // 状态描述
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_DESCRIPUTE_LENGTH)]
            public string szStatusDesc;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stRecPlan
        {
            public recLocationType enLocation;   // 存储位置

            // 录像计划UUID
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_UUID_LENGTH)]
            public string szRecPlanUuid;

            // 录像计划名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szRecPlanName;

            public IntPtr pNext;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stRecSection
        {
            public Int64 i64StartTime;    // 录像片段开始时间
            public Int64 i64EndTime;      // 录像片段结束时间
            public enRecType enRecType;   // 录像类型
            public IntPtr pNext;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stPresetInfo
        {
            public int iPresetId;   // 预置点Id

            // 预置点名称
            [MarshalAsAttribute(UnmanagedType.ByValTStr, SizeConst = ConstDef.MAX_COMMON_NAME_LENGTH)]
            public string szPresetName;

            public IntPtr pNext;
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stVideoImageInfo
        {
            public int iHue;   // 色调 [1 10]
            public int iContrast;      // 对比度 [1 10]
            public int iBright;      // 亮度 [1 10]
            public int iSaturation;  // 饱和度 [1 10]
        }

        [StructLayout(LayoutKind.Sequential)]
        public struct stVideoDetailInfo
        {
            public int iPicWidth;   // 图片宽度
            public int iPicHeight;  // 图片高度
            public UInt64 ui64FrameRate;   // 帧率
        }
    }

    #endregion

    #region enum

    public enum updateType
    {
        UPDATE_TYPE_UNKNOWN = 0,
        UPDATE_TYPE_ADDMOD = 1,    // 资源增加或修改
        UPDATE_TYPE_DELETE = 2,    // 资源删除
    }

    public enum srcStatus
    {
        STATUS_UNKNOWN = 0,

        // IO资源状态
        STATUS_IOOPEN = 9,    // IO打开
        STATUS_IOCLOSE = 10,  // IO关闭

        // 资源通用状态（视频编码设备、监控点）
        STATUS_ONLINE = 11,    // 在线
        STATUS_OFFLINE = 12    // 离线
    }

    public enum deviceType
    {
        DEVICE_TYPE_UNKNOWN = 0,
        DEVICE_TYPE_HIK = 1,    // 海康设备
        DEVICE_TYPE_DAHUA = 2   // 大华设备
    }

    public enum eventType
    {
        EVENT_TYPE_UNKNOWN = 0,

        //监控点报警
        EVENT_TYPE_CAMERA_LOST = 0x00020101,   //视频丢失
        EVENT_TYPE_CAMERA_COVER = 0x00020102,   //视频遮挡
        EVENT_TYPE_CAMERA_MOVING = 0x00020103,   //移动侦测
        EVENT_TYPE_PIR_ALARM = 0x00020104,    // PIR报警
        EVENT_TYPE_WIRELES_ALARM = 0x00020105,    // 无线报警
        EVENT_TYPE_CALLING_ALARM = 0x00020106,    // 呼救报警
        EVENT_TYPE_AUDIO_INPUT_EXCEPTION = 0x00020107,    // 音频输入异常
        EVENT_TYPE_AUDIO_INPUT_MUTATION = 0x00020108,    // 音频输入突变
        EVENT_TYPE_CAMERA_OFFLINE = 0x00020109,    // 监控点掉线
        EVENT_TYPE_CAMERA_ONLINE = 0x0002010A,    // 监控点上线

        //智能报警
        EVENT_TYPE_SMART_CROSSING = 0x00020201,    // 穿越警戒面
        EVENT_TYPE_SMART_IN = 0x00020202,    // 进入区域
        EVENT_TYPE_SMART_OUT = 0x00020203,    // 离开区域
        EVENT_TYPE_SMART_REGION_INVASION = 0x00020204,     // 区域入侵
        EVENT_TYPE_SMART_PICUP = 0x00020205,    // 物品拿取放置
        EVENT_TYPE_SMART_HOVER = 0x00020206,    // 徘徊
        EVENT_TYPE_SMART_PARKING = 0x00020207,    // 停车
        EVENT_TYPE_SMART_MOVING_FAST = 0x00020208,    // 快速移动
        EVENT_TYPE_SMART_PERSON_AGGREGATION = 0x00020209,    // 人员聚集
        EVENT_TYPE_SMART_GOODS_BEHIND = 0x0002020A,    // 物品遗留
        EVENT_TYPE_SMART_GOODS_TAKING = 0x0002020B,    // 物品拿取
        EVENT_TYPE_SMART_VIOLENT_MOTION = 0x0002020C,    // 剧烈运动
        EVENT_TYPE_SMART_CLIMBING_DETECTION = 0x0002020D,    // 攀高检测
        EVENT_TYPE_SMART_GETTING_UP_DETECTION = 0x0002020E,    // 起身检测
        EVENT_TYPE_SMART_CLOSING_TO_ATM = 0x0002020F,    // 人靠近ATM
        EVENT_TYPE_SMART_OPERATION_TIMEOUT = 0x00020210,    // 操作超时
        EVENT_TYPE_SMART_STICKER_STRIP = 0x00020211,    // 贴纸条
        EVENT_TYPE_SMART_INSTALLING_CARDR_EADER = 0x00020212,    // 安装读卡器
        EVENT_TYPE_SMART_ABSENCE_DETECTION = 0x00020213,    // 离岗
        EVENT_TYPE_SMART_TRAILING_DETECTION = 0x00020214,    // 尾随
        EVENT_TYPE_SMART_FALLING_DETECTION = 0x00020215,    // 倒地检测
        EVENT_TYPE_SMART_SOUND_SUDDEN_CHANGE_DETECTION = 0x00020216,    // 声强突变检测
        EVENT_TYPE_SMART_BROKEN_LINE_CLIMBING = 0x00020217,    // 折线攀高
        EVENT_TYPE_SMART_WC_TIMEOUT = 0x00020218,    // 如厕超时
        EVENT_TYPE_SMART_PLAYGROUND_OVERSTAY = 0x00020219,    // 放风场滞留
        EVENT_TYPE_SMART_KEY_PERSON_GETTING_UP = 0x0002021A,    // 重点人员起身
        EVENT_TYPE_SMART_BROKEN_LINE_WARNING_SURFACE = 0x0002021B,    // 折线警戒面
        EVENT_TYPE_SMART_SCENE_CHANGE_ALARM = 0x0002021C,    // 场景变更报警
        EVENT_TYPE_SMART_DEFOCUS_ALARM = 0x0002021D,    // 虚焦报警
        EVENT_TYPE_SMART_FACE_RECOGNITION_RESULT = 0x0002021E,    // 人脸识别结果
        EVENT_TYPE_SMART_PASSENGER_FLOW_INFO = 0x00020220,    // 客流量信息
        EVENT_TYPE_SMART_PASSENGER_FLOW_FULL = 0x00020221,    // 客流量满员
        EVENT_TYPE_SMART_OVERCROWDING_ALARM = 0x00020222,    // 区域超员报警
        EVENT_TYPE_SMART_HEAT_MAP_INFO = 0x00020223,    // 热度图信息
        EVENT_TYPE_SMART_FACE_RECOGNITION_WHITE_LIST = 0x000202224,    // 人脸识别白名单
        EVENT_TYPE_SMART_FACE_DETECTION = 0x000202225,    // 人脸侦测
        EVENT_TYPE_SMART_VEHICLE_DETECTION = 0x00020226,    // 车辆侦测
        EVENT_TYPE_SMART_AUDIO_INPUT_EXCEPTION = 0x00020227,    // 音频输入异常
        EVENT_TYPE_SMART_AUDIO_INPUT_MUTATION = 0x00020228,    // 音频输入突变
        EVENT_TYPE_SMART_TEACHING = 0x00020229,    // 授课
        EVENT_TYPE_SMART_ANSWER_QUESTION = 0x0002022A,    // 回答问题
        EVENT_TYPE_SMART_PASSENGER_FLOW_DATA_TIMESPAN = 0x0002022B,    // 客流量数据-时间段
        EVENT_TYPE_SMART_PASSWNGER_FLOW_DATA_FRAME = 0x0002022C,    // 客流量数据-单帧
        EVENT_TYPE_SMART_HEAT_MAP_DATA_STATISTIC = 0x0002022D,    // 热度图数据-统计
        EVENT_TYPE_SMART_HEAT_MAP_DATA_ABOSOLTION = 0x0002022E,    // 热度图数据-绝对
        EVENT_TYPE_SMART_ABNORMAL_POPULATION = 0x0002022F,    // 人数异常
        EVENT_TYPE_SMART_ABNORMAL_INTEVAL = 0x00020230,    // 间隔异常
        EVENT_TYPE_SMART_PERSON_STANDING = 0x00020231,    // 人员站立
        EVENT_TYPE_SMART_FACE_CAPTURE_STATISTIC = 0x00020232,    // 人脸抓拍统计数据
        EVENT_TYPE_SMART_REGIONAL_ALARM = 0x00020233,    // 区域看防报警
        EVENT_TYPE_SMART_DOUBLE_GUARD_ALARM = 0x00020234,    // 双人值岗报警
        EVENT_TYPE_SMART_GUARD_DETECTION_ALARM = 0x00020235,    // 值岗检测报警
        EVENT_TYPE_SMART_BLACK_LIST_DEPLOYMENT = 0x00020236,    // 黑名单布控
        EVENT_TYPE_SMART_ILLEGAl_PARKING_ALARM = 0x00020237,    // 违停告警
        EVENT_TYPE_SMART_FACE_BLACK_LIST_ALARM_6200FA = 0x00020238,    // 6200FA人脸黑名单报警
        EVENT_TYPE_SMART_FACE_PICTURE_COMPARISON_ALARM = 0x00020254, // 人脸比对报警(脸谱、超脑人脸黑名单报警)
    }

    public enum eventLevel
    {
        LEVEL_UNKNOWN = 0,
        LEVEL_HIGH = 1,             // 高等级报警事件
        LEVEL_MIDUME = 2,           // 中等级报警事件
        LEVEL_LOW = 3,              // 低等级报警事件
        LEVEL_NORMAL = 4            // 普通事件
    }

    public enum dataChgType
    {
        CHG_TYPE_UNKNOWN = 0,
        CHG_TYPE_ADD = 1,       // 增加
        CHG_TYPE_MODIFY = 2,    // 修改
        CHG_TYPE_DELETE = 3,    // 删除
    }

    public enum rSrcType
    {
        RSRC_TYPE_UNKNOWN = 0,
        RSRC_TYPE_ENCODER = 1,   // 编码设备
        RSRC_TYPE_CAMERA = 2     // 监控点
    }

    public enum recLocationType
    {
        LOCATION_UNKNOWN = 0,
        LOCATION_DEVICE = 1,      // 设备存储
        LOCATION_PCNVR = 2,       // PCNVR存储
        LOCATION_CVR = 3,         // CVR存储
        LOCATION_CVM = 4          // CVM存储
    }

    // 码流数据类型枚举
    public enum streamDataType
    {
        TYPE_HEADER = 1,   // 码流头部
        TYPE_DATA = 2,     // 码流数据
        TYPE_TAIL = 3,     // 码流尾部
    };

    // 事件状态枚举
    public enum eventStatus
    {
        EVENT_STATUS_UNKNOWN = 0, //位置状态
        EVENT_STATUS_INSTANT = 1, //瞬时事件，非持续性事件
        EVENT_STATUS_BEGIN = 2, //事件开始
        EVENT_STATUS_END = 3, //事件停止
        EVENT_STATUS_UPDATE = 4, //事件信息更新
        EVENT_STATUS_PULSE = 5    // 脉冲事件
    };

    // 码流类型枚举
    public enum streamType
    {
        TYPE_ERROR_STREAM = -1,
        TYPE_DEFAULT_STREAM = 0,  // 默认码流类型，使用平台上配置值
        TYPE_MAIN_STREAM = 1,     // 主码流
        TYPE_SUB_STREAM = 2       // 子码流
    };

    // 设备抓图尺寸枚举
    public enum enImageSize
    {
        SIZE_CIF = 0,           // CIF(352*288/352*240)
        SIZE_QCIF = 1,         // QCIF(176*144/176*120)
        SIZE_4CIF_OR_D1 = 2,  //4CIF(704*576/704*480)或D1(720*576/720*486)
        SIZE_UXGA = 3,       // UXGA(1600*1200)
        SIZE_SVGA = 4,       // SVGA(800*600)
        SIZE_HD720P = 5,      // HD720P(1280*720)
        SIZE_VGA = 6,         // VGA(640*480)
        SIZE_XVGA = 7,       // XVGA(1280*960)
        SIZE_HD900P = 8,      //HD900P(1600*900)
        SIZE_HD1080P = 9,     // HD1080P(1920*1080)
        SIZE_2560x1024 = 10,
        SIZE_1600x204 = 11,
        SIZE_2048x1536 = 12,
        SIZE_2448x2048 = 13,
        SIZE_2448x1200 = 14,
        SIZE_2448x800 = 15,
        SIZE_XGA = 16,       //XGA(1024*768)
        SIZE_SXGA = 17,      //SXGA(1280*1024)
        SIZE_WD1 = 18,       //WD1(960*576/960*480)
        SIZE_1080I = 19,      //1080I(1920*1080)
        SIZE_576x576 = 20,
        SIZE_1536x1536 = 21,
        SIZE_1920x1920 = 22,
        SIZE_Auto = 0xFF     //(使用当前码流分辨率)
    };

    // 设备抓图质量枚举
    public enum enImageQuality
    {
        QUALITY_BEST = 0,
        QUALITY_GOOD = 1,
        QUALITY_NORMAL = 2
    };

    // 录像类型枚举
    public enum enRecType
    {
        RECORD_TYPE_UNKNOWN = 0, //未知类型
        RECORD_TYPE_PLAN = 0x01,     // 计划录像
        RECORD_TYPE_MOVE = 0x02,     // 移动录像
        RECORD_TYPE_ALARM = 0x04,    // 告警录像
        RECORD_TYPE_MANUAL = 0x10,   // 手动录像
        RECORD_TYPE_ALL = 0x17       // 计划录像|移动录像|告警录像|手动录像
    };

    // 对讲通道类型枚举
    public enum enTalkType
    {
        TYPE_TALK_UNKNOWN = 0,
        TYPE_TALK_ANALOG = 1,     // 模拟通道对讲
        TYPE_TALK_DIGITAL = 2     // 数字通道对讲
    };

    public enum enPlayType
    {
        PLAY_TYPE_PREVIEW = 0,
        PLAY_TYPE_PLAYBACK = 1
    };

    public enum enStreamTraceType
    {
        TRACE_ERROR = 0,
        TRACE_CASC,
        TRACE_DEVICE,
        TRACE_VAG,
        TRACE_SMS,
        TRACE_SMS_VAG,
        TRACE_SMS_CASC,
        TRACE_SMS_CASC_VAG,
        TRACE_UNKNOWN
    };

    public enum enThreadOperType
    {
        OPER_PREVIEW,
        OPER_PLAYBACK
    }

    public enum enPlayCtrlType
    {
        PlayCtrl_Stop,
        PlayCtrl_Pause,
        PlayCtrl_Resume,
        PlayCtrl_Seek,
        PlayCtrl_Speed,
        PlayCtrl_CloseQryHandle,
    }

    #endregion

    #region Const
    class ConstDef
    {
        public const int ISMS_ERR_NOERR_BUT_NODATA = 13;      // 查无数据

        public const int ISMS_PTZ_UP = 21;                    // 向上转动         
        public const int ISMS_PTZ_DOWN = 22;                    // 向下转动 
        public const int ISMS_PTZ_LEFT = 23;                    // 向左转动
        public const int ISMS_PTZ_RIGHT = 24;                    // 向右转动
        public const int ISMS_PTZ_UP_LEFT = 25;                    // 向左上转动
        public const int ISMS_PTZ_UP_RIGHT = 26;                    // 向右上转动
        public const int ISMS_PTZ_DOWN_LEFT = 27;                    // 向左下转动
        public const int ISMS_PTZ_DOWN_RIGHT = 28;                    // 向右下转动
        public const int ISMS_PTZ_AUTO = 29;                     // 自动扫描
        public const int ISMS_PTZ_ZOOM_IN = 11;                    // 镜头拉近
        public const int ISMS_PTZ_ZOOM_OUT = 12;                    // 镜头拉远
        public const int ISMS_PTZ_FOCUS_NEAR = 13;                    // 焦点前移
        public const int ISMS_PTZ_FOCUS_FAR = 14;                    // 焦点后移
        public const int ISMS_PTZ_IRIS_OPEN = 15;                    // 光圈扩大
        public const int ISMS_PTZ_IRIS_CLOSE = 16;                    // 光圈缩小
        public const int ISMS_PTZ_GOTO_PRESET = 39;                    // 调用预置点
        public const int ISMS_PTZ_SEL_ZOOM = 99;                    // 电子放大
        public const int ISMS_PTZ_LOCK = 200;                  // 云台锁定
        public const int ISMS_PTZ_UNLOCK = 201;                  // 云台解锁
        public const int ISMS_PTZ_UNLOCK_ALL = 202;                  // 解除所有能够解锁的锁定
        public const int ISMS_PTZ_LOCK_CHECK = 203;                  // 锁定检查

        public const int ISMS_PTZ_ACTION_START = 0;    // 云台开始
        public const int ISMS_PTZ_ACTION_STOP = 1;     // 云台结束

        public const int MAX_COMMON_UUID_LENGTH = 64;
        public const int MAX_COMMON_NAME_LENGTH = 256;
        public const int MAX_COMMON_TIME_LENGTH = 32;
        public const int MAX_COMMON_USER_LENGTH = 64;
        public const int MAX_COMMON_IP_LENGTH = 32;
        public const int MAX_COMMON_PASSWORD_LENGTH = 64;
        public const int MAX_COMMON_DATA_NAME = 128;
        public const int MAX_COMMON_DESCRIPUTE_LENGTH = 512;
        public const int MAX_COMMON_URL_LENGTH = 2038;

        public const int ISMS_SUCCESS = 0;
        public const int ISMS_FAIL = -1;
        public const int ISMS_NO_DATA = 0;

        public const int BTN_ID_LEFT_UP = 1;
        public const int BTN_ID_UP = 2;
        public const int BTN_ID_RIGHT_UP = 3;
        public const int BTN_ID_LEFT = 4;
        public const int BTN_ID_AUTO = 5;
        public const int BTN_ID_RIGHT = 6;
        public const int BTN_ID_LEFT_DOWN = 7;
        public const int BTN_ID_DOWN = 8;
        public const int BTN_ID_RIGHT_DOWN = 9;
        public const int BTN_ID_FOUCUS_FRONT = 10;
        public const int BTN_ID_FOUCUS_BACK = 11;
        public const int BTN_ID_IRIS_OUT = 12;
        public const int BTN_ID_IRIS_IN = 13;
        public const int BTN_ID_PTZ_CHECK_LOCK = 14;
        public const int BTN_ID_PTZ_LOCK = 15;
        public const int BTN_ID_PTZ_UNLOCK = 16;
        public const int BTN_ID_ZOOM_OUT = 17;
        public const int BTN_ID_ZOOM_IN = 18;
        public const int BTN_ID_SOUND_OPEN = 19;
        public const int BTN_ID_SOUND_CLOSE = 20;
        public const int BTN_ID_DEVICE_SNAP = 21;
        public const int BTN_ID_PREVIEW_SNAP = 22;
        public const int BTN_ID_START_TALK = 23;
        public const int BTN_ID_STOP_TALK = 24;
        public const int BTN_ID_GOTO_PRESET = 25;
        public const int BTN_ID_SET_PRESET = 26;
        public const int BTN_ID_MANUAL_RECORD = 27;
        public const int BTN_ID_DELETE_PRESET = 28;
        public const int BTN_ID_GET_IMG_PARAM = 29;
        public const int BTN_ID_SET_IMG_PARAM = 30;
        public const int BTN_ID_START_EMERGENCY_RECORD = 31;
        public const int BTN_ID_STOP_PREVIEW = 32;
        public const int BTN_ID_SWITCH_STREAM_TYPE = 33;
        public const int BTN_ID_STOP_EMERGENCY_RECORD = 34;

        public const int BTN_ID_PAUSE_PLAYBACK = 1001;
        public const int BTN_ID_RESUME_PLAYBACK = 1002;
        public const int BTN_ID_STOP_PLAYBACK = 1003;
        public const int BTN_ID_SEEK_PLAYBACK = 1004;
        public const int BTN_ID_SPEED_PLAYBACK = 1005;
        public const int BTN_ID_PLAYBACK_SNAP = 1006;
        public const int BTN_ID_START_PLAYBACK_EMERGENCY_RECORD = 1007;
        public const int BTN_ID_STOP_PLAYBACK_EMERGENCY_RECORD = 1008;
        public const int BTN_ID_ADDTO_START_DOWNLOAD = 1011;    // 添加到录像下载
        public const int BTN_ID_DOWNLOAD_MGR = 1012;    // 录像下载管理
        public const int BTN_ID_PLAYBACK_OPENSOUND = 1009;
        public const int BTN_ID_PLAYBACK_CLOSESOUND = 1010;
        public const int BTN_ID_SEARCH_RECORD = 1013;
        public const int BTN_ID_START_PLAYBACK = 1014;

        public const int COMBOBOX_SNAP = 1;
        public const int COMBOBOX_TALK = 2;
        public const int COMBOBOX_PRESET = 3;
        public const int COMBOBOX_FOR_MANUALRECORD = 4;
        public const int COMBOBOX_SEEK_PLAY = 5;
        public const int COMBOBOX_FAST_PLAY = 6;
        public const int COMBOBOX_RECPLAN = 7;

        public const int PLAY_START = 1;    // 播放开始
        public const int PLAY_FINISH = 2;   // 播放结束
        public const int PLAY_PAUSE = 3;    // 播放暂停
        public const int PLAY_RESUME = 4;   // 恢复播放
        public const int PLAY_STOP = 5;     // 播放停止
    }

    #endregion


    public class ThreadParam
    {
        public bool bStart;
        public enPlayType playType;
        public enThreadOperType operType;
        public recLocationType recLocation;
        public long lParam1;
        public long lParam2;
        public long lParam3;
        public IntPtr pSeledWndHandle;
        public string szParam1;
        public string szParam2;
        public string szParam3;
        public string szParam4;
    }

    #region delegate
    public class DelegateDef
    {
        // typedef void (__stdcall* pfnEventCallback)(PISMS_EVENT pstEvent, void* pUserData);
        // pEvent->stEvent
        public delegate void EventCallBack(IntPtr pEvent, IntPtr pUserData);

        // typedef void (__stdcall* pfnDataChangeCallback)( PISMS_DATA_CHANGE pstDataNotify, void* pUserData);
        // pDataChgNotify->stDataChg
        public delegate void DataChgCallBack(IntPtr pDataChgNotify, IntPtr pUserData);

        // typedef void (__stdcall* pfnResourceStatusCallback)(PISMS_RESOURCE_STATUS_CHANGE pstResourceStatus, int iResNum, void* pUserData);
        // pResourceStatusChg->stSrcStatusChg
        public delegate void ResourseStatusChgCallBack(IntPtr pResourceStatusChg, IntPtr pUserData);

        //typedef void (__stdcall *pfnStreamCallback)(long lPlayHnadle, ISMS_STREAM_DATA_TYPE_EN enStreamType, const char* pData, int iDataLen, void* pUserData);
        public delegate void StreamCallBack(int lPlayHandle, streamType enStreamType, IntPtr pArray, int iDataLen, IntPtr pUserData);

        // typedef void (__stdcall *pfnProgressCallback)(long lDownloadHandle, float fPercent, void* pUserData);
        public delegate void ProgressCallBack(int lDownloadHandle, float fPercent, IntPtr pUserData);

        public delegate void PlayMsgCallBack(int lPlayHandle, int iMsg, IntPtr pUserData);

        public delegate void DecodedDataCallBack(int lPlayHandle, IntPtr pDataArray, int iDataLen, int iWidth, int iHeight, int iFrameType, int iTimeStamp, IntPtr pUserData);
        public delegate void ThreadOper(ThreadParam _threadParam);
    }
    #endregion
}
