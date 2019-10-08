using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using SDKLibrary;
using System.Runtime.InteropServices;
using Newtonsoft.Json;
using SDKLibrary.SDK;

namespace Player
{
    [Guid("DE164FCF-7D64-4F18-B490-965AF22F41A8")]
    public partial class MuitlyPlayer : UserControl, IPlugin, IObjectSafety
    {
        #region IObjectSafety 成员

        private const string _IID_IDispatch = "{00020400-0000-0000-C000-000000000046}";
        private const string _IID_IDispatchEx = "{a6ef9860-c720-11d0-9337-00a0c90dcaa9}";
        private const string _IID_IPersistStorage = "{0000010A-0000-0000-C000-000000000046}";
        private const string _IID_IPersistStream = "{00000109-0000-0000-C000-000000000046}";
        private const string _IID_IPersistPropertyBag = "{37D84F60-42CB-11CE-8135-00AA004BB851}";

        private const int INTERFACESAFE_FOR_UNTRUSTED_CALLER = 0x00000001;
        private const int INTERFACESAFE_FOR_UNTRUSTED_DATA = 0x00000002;
        private const int S_OK = 0;
        private const int E_FAIL = unchecked((int)0x80004005);
        private const int E_NOINTERFACE = unchecked((int)0x80004002);

        private bool _fSafeForScripting = true;
        private bool _fSafeForInitializing = true;


        public int GetInterfaceSafetyOptions(ref Guid riid, ref int pdwSupportedOptions, ref int pdwEnabledOptions)
        {
            int Rslt = E_FAIL;

            string strGUID = riid.ToString("B");
            pdwSupportedOptions = INTERFACESAFE_FOR_UNTRUSTED_CALLER | INTERFACESAFE_FOR_UNTRUSTED_DATA;
            switch (strGUID)
            {
                case _IID_IDispatch:
                case _IID_IDispatchEx:
                    Rslt = S_OK;
                    pdwEnabledOptions = 0;
                    if (_fSafeForScripting == true)
                        pdwEnabledOptions = INTERFACESAFE_FOR_UNTRUSTED_CALLER;
                    break;
                case _IID_IPersistStorage:
                case _IID_IPersistStream:
                case _IID_IPersistPropertyBag:
                    Rslt = S_OK;
                    pdwEnabledOptions = 0;
                    if (_fSafeForInitializing == true)
                        pdwEnabledOptions = INTERFACESAFE_FOR_UNTRUSTED_DATA;
                    break;
                default:
                    Rslt = E_NOINTERFACE;
                    break;
            }

            return Rslt;
        }

        public int SetInterfaceSafetyOptions(ref Guid riid, int dwOptionSetMask, int dwEnabledOptions)
        {
            int Rslt = E_FAIL;

            string strGUID = riid.ToString("B");
            switch (strGUID)
            {
                case _IID_IDispatch:
                case _IID_IDispatchEx:
                    if (((dwEnabledOptions & dwOptionSetMask) == INTERFACESAFE_FOR_UNTRUSTED_CALLER) &&
                            (_fSafeForScripting == true))
                        Rslt = S_OK;
                    break;
                case _IID_IPersistStorage:
                case _IID_IPersistStream:
                case _IID_IPersistPropertyBag:
                    if (((dwEnabledOptions & dwOptionSetMask) == INTERFACESAFE_FOR_UNTRUSTED_DATA) &&
                            (_fSafeForInitializing == true))
                        Rslt = S_OK;
                    break;
                default:
                    Rslt = E_NOINTERFACE;
                    break;
            }

            return Rslt;
        }



        #endregion

        #region 插件界面

        public MuitlyPlayer()
        {
            InitializeComponent();
            Init();
            #region 处理画面闪烁
            SetStyle(ControlStyles.UserPaint, true);
            SetStyle(ControlStyles.AllPaintingInWmPaint, true);  //  禁止擦除背景. 
            SetStyle(ControlStyles.DoubleBuffer, true);  //  双缓冲 
            #endregion
        }


        void Init()
        {
            this.Disposed += new EventHandler(OnDispose);

            Player1.Index = 1;
            Player2.Index = 2;
            Player3.Index = 3;
            Player4.Index = 4;

            Player1.SetActive += new SinglePlayer.SetActiveHandler(SetPlayerActive);
            Player2.SetActive += new SinglePlayer.SetActiveHandler(SetPlayerActive);
            Player3.SetActive += new SinglePlayer.SetActiveHandler(SetPlayerActive);
            Player4.SetActive += new SinglePlayer.SetActiveHandler(SetPlayerActive);

            Player1.SetFullScreen += new SinglePlayer.SetFullScreenHandler(SetPlayerFullScreen);
            Player2.SetFullScreen += new SinglePlayer.SetFullScreenHandler(SetPlayerFullScreen);
            Player3.SetFullScreen += new SinglePlayer.SetFullScreenHandler(SetPlayerFullScreen);
            Player4.SetFullScreen += new SinglePlayer.SetFullScreenHandler(SetPlayerFullScreen);

            SetPlayerFullScreen(1);
            InitPlayer();
        }
        

        void OnDispose(object sender,EventArgs e)
        {
            Release();
            try
            {
                Player1.Dispose();
                Player2.Dispose();
                Player3.Dispose();
                Player4.Dispose();
            }
            catch
            {

            }
            base.Dispose();
        }

        int activeIndex = 0;

        SinglePlayer ActivePlayer
        {
            get
            {
                if (activeIndex == 0)
                {
                    Player1.IsActive = true;
                    activeIndex = 1;
                    if(PluginType== PluginType.PlatForm_Connection_Plugin && PlatformSDK!=null)
                        PlatformSDK.VideoInfo = Player1.VideoInfo;
                    return Player1;
                }
                else
                {

                    SinglePlayer player = Controls.Find("Player" + activeIndex, true)[0] as SinglePlayer;
                    if (PluginType == PluginType.PlatForm_Connection_Plugin && PlatformSDK != null)
                        PlatformSDK.VideoInfo = player.VideoInfo;
                    return player;
                }
            }
        }

        SinglePlayer GetPlayer(int index)
        {
            if(index>4 || index < 0)
            {
                ShowError("错误的播放器id,将使用默认选中的播放器");
                return ActivePlayer;
            }
            if (index != 0)
            {
                SetPlayerActive(index);
            }
            return ActivePlayer;
        }

        void SetPlayerActive(int index)
        {
            if (index != activeIndex)
            {
                SinglePlayer player = null;
                if (activeIndex != 0)
                {
                    player = Controls.Find("Player" + activeIndex, true)[0] as SinglePlayer;
                    player.IsActive = false;
                }

                player = Controls.Find("Player" + index, true)[0] as SinglePlayer;
                player.IsActive = true;
                activeIndex = index;
                if (PluginType == PluginType.PlatForm_Connection_Plugin && PlatformSDK != null)
                    PlatformSDK.VideoInfo = player.VideoInfo;
            }
        }


        bool isFullScreen = false;
        void SetPlayerFullScreen(int index)
        {
            if (isFullScreen)
            {
                SinglePlayer p = Controls.Find("Player" + index, true)[0] as SinglePlayer;
                p.Width = PlayerWidth;
                p.Height = PlayerHeight;
                p.IsActive = true;
                switch (index)
                {
                    case 1:
                        p.Left = 0;
                        p.Top = 0;
                        break;
                    case 2:
                        p.Left = PlayerWidth + 1;
                        p.Top = 0;
                        break;
                    case 3:
                        p.Left = 0;
                        p.Top = PlayerHeight + 1;
                        break;
                    case 4:
                        p.Left = PlayerWidth + 1;
                        p.Top = PlayerHeight + 1;
                        break;
                    default:
                        break;
                }
                foreach(SinglePlayer pl in Controls)
                {
                    pl.Show();
                }
                isFullScreen = false;
            }
            else
            {
                foreach(SinglePlayer p in Controls)
                {
                    if (p.Index != index)
                    {
                        p.Hide();
                    }
                }
                SinglePlayer player = Controls.Find("Player" + index, true)[0] as SinglePlayer;
                player.Left = 0;
                player.Top = 0;
                player.Width = this.Width;
                player.Height = this.Height;
                player.IsActive = true;
                isFullScreen = true;
            }
        }

        int PlayerWidth
        {
            get
            {
                return this.Width / 2;
            }
        }

        int PlayerHeight
        {
            get
            {
                return this.Height / 2;
            }
        }


        void ShowError(string msg)
        {
            MessageBox.Show(msg, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
        void ShowExclamation(string msg)
        {
            MessageBox.Show(msg, "警告", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }

        void ShowDialogMessage(string type, string title, string info, string detail)
        {
            InformationForm iform = new InformationForm();
            switch (type.ToUpper())
            {
                case "ERROR":
                    iform.ShowError(title, info, detail);
                    break;
                case "INFO":
                    iform.ShowInformation(title, info, detail);
                    break;
                default:
                    iform.ShowWarning(title, info, detail);
                    break;
            }
        }


        #endregion
        
        public PluginType PluginType
        {
            get; set;
        }

        public ISDK PlatformSDK
        {
            get; set;
        }

        void Reset()
        {
            int id = ActivePlayer.Index;

            Player1.ReInit();
            Player2.ReInit();
            Player3.ReInit();
            Player4.ReInit();
            SetPlayerActive(id);

            switch (PluginType)
            {
                case PluginType.Direct_Connection_Plugin:
                    break;
                case PluginType.PlatForm_Connection_Plugin:
                    try
                    {
                        PlatformSDK.LogOut();
                    }catch(Exception e)
                    {
                        Console.WriteLine(e.Message);
                    }
                    PlatformSDK = null;
                    break;
                default:
                    break;
            }
            isPlatLogin = false;
            loginType = -1;
        }

        /// <summary>
        /// 直连方式初始化插件
        /// </summary>
        public void InitPlayer()
        {
            if (PluginType == PluginType.Direct_Connection_Plugin) return;
            Reset();
            PluginType = PluginType.Direct_Connection_Plugin;
        }

        bool isPlatLogin = false;
        int loginType = -1;
        /// <summary>
        /// 平台方式初始化插件
        /// </summary>
        /// <param name="ip"></param>
        /// <param name="port"></param>
        /// <param name="username"></param>
        /// <param name="password"></param>
        public void InitPlayerP(int videotype, string ip,int port,string username,string password)
        {
            //if (isPlatLogin && loginType == videotype)
            //{
            //    return;
            //}

            Reset();

            PluginType = PluginType.PlatForm_Connection_Plugin;

            switch (videotype)
            {
                //英飞拓平台
                case 101:
                    PlatformSDK = new P_INFSDK();
                    break;
                //海康平台
                case 102:
                    PlatformSDK = new P_HIKSDK();
                    break;
                default:
                    ShowError("尚未支持的平台类型！");
                    break;
            }
            try
            {

                LoginInfo linfo = new LoginInfo()
                {
                    Ip = ip,
                    Port = port,
                    UserName = username,
                    Password = password
                };


                Player1.VideoInfo.LoginInfo = linfo;
                Player2.VideoInfo.LoginInfo = linfo;
                Player3.VideoInfo.LoginInfo = linfo;
                Player4.VideoInfo.LoginInfo = linfo;

                PlatformSDK.VideoInfo = Player1.VideoInfo;

                PlatformSDK.Init();
                PlatformSDK.Login(linfo);
                Player1.SDK = PlatformSDK;
                Player2.SDK = PlatformSDK;
                Player3.SDK = PlatformSDK;
                Player4.SDK = PlatformSDK;

                isPlatLogin = true;
                loginType = videotype;
            }
            catch(Exception ex)
            {
                ShowError(ex.Message);
            }

        }
        
        /// <summary>
        /// 播放视频
        /// </summary>
        /// <param name="videotype">视频类型，平台可不传</param>
        /// <param name="ip">ip地址，平台可不传</param>
        /// <param name="port">端口号，平台可不传</param>
        /// <param name="channel">通道号</param>
        /// <param name="username">登录用户名，平台可不传</param>
        /// <param name="password">登录密码，平台可不传</param>
        /// <param name="uuid">uuid</param>
        /// <param name="playerindex">1-4，非必填，默认为当前选中</param>
        public void StartPlay(int videotype,string ip, int port, int channel, string username, string password, string uuid, int playerindex = 0)
        {
            if (playerindex > 4 || playerindex < 0)
            {
                ShowError("错误的播放器编号！");
                return;
            }
            
            SinglePlayer player= GetPlayer(playerindex);

            switch (PluginType)
            {
                ///直连
                case PluginType.Direct_Connection_Plugin:
                    VideoType vt = (VideoType)videotype;

                    if (player.IsInit)
                    {
                        player.Release();
                    }

                    switch (vt)
                    {
                        case VideoType.Haikang:
                            player.SDK = new HKSDK();
                            break;
                        case VideoType.Dahua:
                            player.SDK = new DHSDK();
                            break;
                        case VideoType.Xinshijie:
                            player.SDK = new XSJSDK();
                            break;
                        case VideoType.XiongMai:
                            player.SDK = new XMSDK();
                            break;
                        case VideoType.ShangHaiChengFeng:
                            player.SDK = new SHCFSDK();
                            break;
                        case VideoType.Platform_Infinova:
                            ShowError("英飞拓平台请通过平台接口接入！");
                            return;
                        case VideoType.Platform_Hik:
                            ShowError("海康平台请通过平台接口接入！");
                            return;
                        default:
                            ShowError("未知的视频类型！");
                            return;
                    }

                    LoginInfo linfo = new LoginInfo()
                    {
                        Ip = ip,
                        Port = port,
                        UserName = username,
                        Password = password
                    };

                    Video vinfo = new Video()
                    {
                        Channel = channel,
                        Type = (VideoType)videotype,
                        UUID = uuid,
                        LoginInfo = linfo
                    };

                    //ActivePlayer.Release();
                    player.VideoInfo = vinfo;
                    player.Init();
                    player.Login();
                    player.StartPlay();
                    break;
                //平台
                case PluginType.PlatForm_Connection_Plugin:
                    player.VideoInfo.Channel = channel;
                    player.VideoInfo.UUID = uuid;
                    player.StartPlay();
                    break;
                default:
                    ShowError("插件类型错误，请检查是否未初始化！");
                    break;
            }
        }

        /// <summary>
        /// 截图，返回图片存储地址
        /// </summary>
        /// <param name="playerindex">播放器id，1-4，默认为当前选中的</param>
        /// <returns></returns>
        public string ScreenShot(int playerindex = 0)
        {
            try
            {
                GetPlayer(playerindex);
                return ActivePlayer.Capture2Image();
            }catch(Exception ex)
            {
                ShowError(ex.Message);
                return "";
            }
        }

        /// <summary>
        /// 截图并返回图片Base64编码
        /// </summary>
        /// <param name="playerindex">播放器id，1-4，默认为当前选中的</param>
        /// <returns></returns>
        public string ScreenShot_Base64(int playerindex = 0)
        {
            try
            {
                GetPlayer(playerindex);
                return ActivePlayer.Capture2Base64();
            }
            catch (Exception ex)
            {
                ShowError(ex.Message);
                return "";
            }
        }

        /// <summary>
        /// 云台操作
        /// </summary>
        /// <param name="direction">方向：
        ///上=0,下=1,左=2,右=3,上左=4,上右=5,下左=6,下右=7,放大=8,缩小=9
        /// </param>
        /// <param name="step">步长，1-9，非必填，默认4</param>
        /// <param name="stop">是否停止，非必填，默认启动</param>
        /// <param name="playerindex">播放器id，1-4，默认为当前选中的</param>
        public void CammerControl(int direction, uint step=4, bool stop = false, int playerindex = 0)
        {
            Direction d = (Direction)direction;
            CammerControl(d, step, stop, playerindex);
        }

        void CammerControl(Direction direction, uint step, bool stop = false, int playerindex = 0)
        {
            try
            {
                GetPlayer(playerindex);
                ActivePlayer.CamerControl(direction, step, stop);
            }catch(Exception ex)
            {
                ShowError(ex.Message);
            }
        }

        public void Release()
        {
            try
            {
                Player1.Release();
                Player2.Release();
                Player3.Release();
                Player4.Release();

                Player1 = new SinglePlayer();
                Player2 = new SinglePlayer();
                Player3 = new SinglePlayer();
                Player4 = new SinglePlayer();

                PlatformSDK = new P_HIKSDK();
            }
            catch
            {

            }
        }

        /// <summary>
        /// 获取平台视频列表
        /// </summary>
        /// <returns>json格式</returns>
        public string GetVideoList()
        {
            if (PluginType != PluginType.PlatForm_Connection_Plugin)
            {
                ShowError("非平台接入的SDK无法返回视频列表！");
                return "";
            }
            else
            {
                try
                {
                    List<Video> videos= PlatformSDK.GetVideoList();
                    return JsonConvert.SerializeObject(videos);
                }catch(Exception ex)
                {
                    ShowError(ex.Message);
                    return "";
                }
            }
        }

        public List<Video> GetListVideo()
        {
            if (PluginType != PluginType.PlatForm_Connection_Plugin)
            {
                ShowError("非平台接入的SDK无法返回视频列表！");
                return null;
            }
            else
            {
                try
                {
                    List<Video> videos = PlatformSDK.GetVideoList();
                    return videos;
                }
                catch (Exception ex)
                {
                    ShowError(ex.Message);
                    return null;
                }
            }
        }
    }
}
