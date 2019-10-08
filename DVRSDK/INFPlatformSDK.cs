using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace DVRSDK
{

    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Ansi, Pack = 1)]
    public struct INDEX_INFO
    {
        //[FieldOffset(0)]
        [MarshalAs(UnmanagedType.U4)]
        public UInt32 dwStartTime;

        //[FieldOffset(4)]
        [MarshalAs(UnmanagedType.U4)]     //Starting recording time
        public UInt32 dwEndTime;                //End recording time

        //[FieldOffset(8)]
        [MarshalAs(UnmanagedType.I1)]
        public Byte btFileType;                 //File type

        //[FieldOffset(9)]
        [MarshalAs(UnmanagedType.I1)]
        public Byte btFileStatus;
        //File state
        //[FieldOffset(10)]
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 2)]
        public Byte[] btReserved;               //Reserved

        //[FieldOffset(12)]
        [MarshalAs(UnmanagedType.ByValArray, SizeConst = 6)]
        public Byte[] btMAC;    //Device MAC

        //[FieldOffset(18)]
        [MarshalAs(UnmanagedType.I2)]
        public Int16 wChan;                 //Device channel

        //[FieldOffset(20)]
        [MarshalAs(UnmanagedType.U4)]
        public UInt32 dwIP1;                    //Device IP1

        //[FieldOffset(24)]
        [MarshalAs(UnmanagedType.U4)]
        public UInt32 dwIP2;                    //Device IP2

        //[FieldOffset(28)]
        [MarshalAs(UnmanagedType.U4)]
        public UInt32 dwIP3;                    //Device IP3

        //[FieldOffset(32)]
        [MarshalAs(UnmanagedType.U4)]
        public UInt32 dwIP4;                    //Device IP4

        //[FieldOffset(36)]
        [MarshalAs(UnmanagedType.U4)]
        public UInt32 dwFileOffset;             //File offset，used for locating and redownloading from the breaking point

        //[FieldOffset(40)]
        [MarshalAs(UnmanagedType.U4)]
        public UInt32 dwReserved;           //Reserved
    }

    public delegate int lpINFStreamDataCallBack(int lPlayHandle, int dwDataType, IntPtr pBuffer,
                                                int BuffSize, IntPtr pData);
    public class INFPlatformSDK
    {
        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_NET_Init();

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_NET_UnInit();

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_NET_Login(out int lLoginHandle,
            string loginServerIp,
            int lPort,
            string pUserName,
            string pUserPwd);

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_NET_Logout(int lLoginHandle);

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_NET_GetList(int lLoginHandle, UInt32 dwType, IntPtr hWnd, ref int lSize);

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi, EntryPoint = "INF_NET_RealPlay")]
        public static extern int INF_NET_RealPlay(out int lPlayHandle, int lLoginHandle, int dwCamID,
                                              int channelID, IntPtr hWnd, int iStreamType, int iAnalyze);

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_NET_StopRealPlay(int lPlayHandle);

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_NET_FindFile(out int lFindHandle, int lLoginHandle, ref INDEX_INFO pNetInfo, IntPtr resultIndex, Int16 sCameraType, Int16 sFindType);


        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_PLAYCTRL_CapturePicture(int lPlayHandle, string fileName, int iPictureType);

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_PLAYCTRL_StartLocalRecord(int lPlayHandle, string fileName);

        [DllImport(@"INFNetSDK.dll", CharSet = CharSet.Ansi)]
        public static extern int INF_PLAYCTRL_StopLocalRecord(int lPlayHandle);


    }
}
