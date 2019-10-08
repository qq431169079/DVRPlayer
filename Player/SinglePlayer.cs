using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using System.Net;
using SDKLibrary;

namespace Player
{
    public partial class SinglePlayer : UserControl,IPlayer
    {
        

        #region 播放器页面

        readonly Color ActiveColor = Color.Blue;
        readonly Color RecordingColor = Color.Red;
        readonly Color NormalColor = Color.Black;
        public SinglePlayer()
        {
            InitializeComponent();

            #region 处理画面闪烁
            SetStyle(ControlStyles.UserPaint, true);
            SetStyle(ControlStyles.AllPaintingInWmPaint, true);  //  禁止擦除背景. 
            SetStyle(ControlStyles.DoubleBuffer, true);  //  双缓冲 
            #endregion

            this.BackColor = Color.Transparent;
            //绑定控件事件
            RecordTimer.Tick += new EventHandler(Record_Time);
            PlayTimer.Tick += new EventHandler(Play_Time);

            VideoPlayer.MouseEnter += new EventHandler(ShowActionBar);
            VideoPlayer.MouseLeave += new EventHandler(HideActionBar);

            VideoPlayer.DoubleClick += new EventHandler(PlayerDoubleClick);
            this.Paint += new PaintEventHandler(PaintControl);

            LoginInfo linfo = new LoginInfo();
            PlayInfo pinfo = new PlayInfo();
            VideoInfo = new Video()
            {
                PlayInfo = pinfo,
                LoginInfo = linfo
            };
        }
        
        void PaintControl(object sender,PaintEventArgs e)
        {
            Info_State.Width = this.Width - 168;
        }

        public void Init()
        {
            if(SDK!=null &&!IsInit)
            {
                try
                {
                    SDK.Init();
                    IsInit = true;
                }catch(Exception ex)
                {
                    ShowError(ex.Message);
                }
            }
        }

        #region 自定义事件--插件界面交互
        //单击事件
        public delegate void SetActiveHandler(int index);
        public event SetActiveHandler SetActive;
        void PlayerClick(object sender, EventArgs e)
        {
            _setActive();
        }

        void _setActive()
        {
            if (null != SetActive)
            {
                SetActive(Index);
            }
        }
        //双击事件
        public delegate void SetFullScreenHandler(int index);
        public event SetFullScreenHandler SetFullScreen;
        void PlayerDoubleClick(object sender, EventArgs e)
        {
            if (null != SetFullScreen)
            {
                SetFullScreen(Index);
            }
        }
        #endregion


        #region 控件栏

        private void ShowActionBar(object sender, EventArgs e)
        {
            ActionBar.Show();
        }

        private void HideActionBar(object sender, EventArgs e)
        {
            //鼠标在移出时的坐标
            Point p = VideoPlayer.PointToClient(MousePosition);

            if (p.X <= 0 || p.Y <= 0 || p.X >= VideoPlayer.Width || p.Y >= VideoPlayer.Height)
            {
                ActionBar.Hide();
            }

        }

        #endregion


        /// <summary>
        /// 录像计时器
        /// </summary>
        Timer RecordTimer = new Timer()
        {
            Enabled = false,
            Interval = 1000
        };

        /// <summary>
        /// 播放计时器
        /// </summary>
        Timer PlayTimer = new Timer()
        {
            Enabled = false,
            Interval = 1000
        };

        /// <summary>
        /// 录像时间
        /// </summary>
        int recording_Time = 0;

        /// <summary>
        /// 播放时间
        /// </summary>
        int playing_Time = 0;

        /// <summary>
        /// 录像时间处理
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Record_Time(object sender, EventArgs e)
        {
            Mask_Recording_Seconds.Text = string.Format("{0}s", recording_Time.ToString());
            recording_Time += 1;
        }

        /// <summary>
        /// 播放时间处理
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Play_Time(object sender, EventArgs e)
        {
            Info_Seconds.Text = string.Format("已播放{0}", GetPlaySeconds(playing_Time));
            playing_Time += 1;
        }

        /// <summary>
        /// 计算播放时间
        /// </summary>
        /// <param name="seconds"></param>
        /// <returns></returns>
        private string GetPlaySeconds(int seconds)
        {
            TimeSpan ts = new TimeSpan(0, 0, seconds);
            if (ts.Hours > 0)
            {
                return string.Format("{0}h{1}m", ts.Hours, ts.Minutes);
            }
            else if (ts.Hours == 0 && ts.Minutes > 0)
            {
                return string.Format("{0}m{1}s", ts.Minutes, ts.Seconds);
            }
            else
            {
                return string.Format("{0}s", ts.Seconds);
            }

        }

        #region  控件属性

        bool isRecording = false;
        /// <summary>
        /// 是否正在录制
        /// </summary>
        [DisplayName("是否正在录制")]
        [Category("控件属性")]
        [Description("当前播放器的录制状态")]
        public bool IsRecording
        {
            get
            {
                return isRecording;
            }
            private set
            {
                if (value)
                { //正在录制BackColor = RecordingColor;
                    Mask_Recording.Visible = true;
                    Mask_Recording_Seconds.Visible = true;
                    RecordTimer.Enabled = true;
                    Button_Record.Image = Properties.Resources.Icon_Stop_Record;
                    MessageTip.SetToolTip(Button_Record, "停止录像");
                }
                else
                {//停止录制
                    //根据激活状态改变边框颜色
                    if (IsActive)
                    {
                        PlayerBorder.BackColor = ActiveColor;
                    }
                    else
                    {
                        PlayerBorder.BackColor = NormalColor;
                    }
                    recording_Time = 0;
                    Mask_Recording.Visible = false;
                    Mask_Recording_Seconds.Visible = false;
                    RecordTimer.Enabled = false;
                    Mask_Recording_Seconds.Text = "0s";
                    Button_Record.Image = Properties.Resources.Icon_Record;
                    MessageTip.SetToolTip(Button_Record, "录像");

                }

                isRecording = value;
            }
        }

        bool isActive = false;
        /// <summary>
        /// 是否被激活
        /// </summary>
        [DisplayName("是否被激活")]
        [Category("控件属性")]
        [Description("当前播放器的激活状态")]
        public bool IsActive
        {
            get
            {
                return isActive;
            }
            set
            {
                if (value && !IsRecording)
                {
                    PlayerBorder.BackColor = ActiveColor;
                }
                else
                {
                    if (!IsRecording)
                    {
                        PlayerBorder.BackColor = NormalColor;
                    }
                }
                isActive = value;
            }
        }

        bool isPlaying = false;
        [DisplayName("是否正在播放")]
        [Category("控件属性")]
        [Description("当前播放器的播放状态")]
        public bool IsPlaying
        {
            get
            {
                return isPlaying;
            }
            private set
            {
                if (value)
                {//正在播放
                    PlayTimer.Enabled = true;
                }
                else
                {//停止播放
                    PlayTimer.Enabled = false;
                    Info_Seconds.Text = "0s";
                    playing_Time = 0;
                    SetDefault();
                }
                isPlaying = value;
            }
        }

        public int Index { get; set; }

        #endregion


        private void VideoPlayer_Click(object sender, EventArgs e)
        {
            IsActive = true;
            SetActive(Index);
        }

        /// <summary>
        /// 设置播放器背景为默认背景
        /// </summary>
        private void SetDefault()
        {
            RecordTimer.Enabled = false;
            recording_Time = 0;
            PlayTimer.Enabled = false;
            playing_Time = 0;
            VideoPlayer.Image = Properties.Resources.DVRPlayer;
            SetStateInfo("准备就绪");
            Info_Seconds.Text = "0s";

        }


        /// <summary>
        /// 退出播放
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Button_Quit_Click(object sender, EventArgs e)
        {
            _setActive();
            Release();
        }


        void ShowError(string msg)
        {
            ActionBar.Show();
            SetStateInfo(msg.Replace(Environment.NewLine, ""));
            MessageBox.Show(msg, "错误", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
        void ShowExclamation(string msg)
        {
            MessageBox.Show(msg, "警告", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }

        void SetStateInfo(string msg, string tip = "")
        {
            if (string.IsNullOrWhiteSpace(tip))
            {
                tip = msg;
            }

            Info_State.Text = msg;
            MessageTip.SetToolTip(Info_State, tip);
        }

        #endregion

        


        #region 视频属性

        public Video VideoInfo
        {
            get;set;
        }

        ISDK sdk = null;
        public ISDK SDK
        {
            get
            {
                return sdk;
            }
            set
            {
                sdk = value;
                switch (sdk.SDKType)
                {
                    case SDKTYPE.Direct_SDK:
                        break;
                    case SDKTYPE.Platform_SDK:
                        IsInit = true;
                        IsLogin = true;
                        break;
                    default:
                        break;
                }
            }
        }

        public bool IsInit
        {
            get;
            private set;
        }

        public bool IsLogin
        {
            get;private set;
        }
        #endregion

        /// <summary>
        /// 录像按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Button_Record_Click(object sender, EventArgs e)
        {
            _setActive();
            //IsRecording = !IsRecording;
            if (!IsPlaying)
            {
                ShowExclamation("视频尚未播放，无法录制。");
                return;
            }

            if (IsRecording)
            {
                SDK.StopRecord();
                IsRecording = false;
                SetStateInfo("已停止录像");
            }
            else
            {
                try
                {
                    SDK.StartRecord();
                    IsRecording = true;
                    SetStateInfo("正在录像");
                }catch(Exception ex)
                {
                    ShowError(ex.Message);
                }
            }
        }

        /// <summary>
        /// 截图按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Button_ScrnShot_Click(object sender, EventArgs e)
        {
            _setActive();
            if (!IsPlaying)
            {
                ShowExclamation("视频尚未播放，无法截图！");
                return;
            }
            string file= Capture2Image();
            SetStateInfo("已截图", file);
        }

                
        public string Capture2Base64()
        {
            if (!IsPlaying)
            {
                ShowError("尚未播放！");
                return"";
            }
            try
            {
                return SDK.Capture2Base64();
            }catch(Exception ex)
            {
                ShowError(ex.Message);
                return "";
            }
        }

        public int GetPlayingTime()
        {
            return playing_Time;
        }
        

        public void Release()
        {
            SetActive(Index);
            try
            {
                if (IsRecording)
                {
                    StopRecord();
                }
                if (IsPlaying)
                {
                    StopPlay();
                }

                if (SDK != null && SDK.SDKType != SDKTYPE.Platform_SDK)
                {
                    if (IsLogin)
                    {
                        LogOut();
                    }
                    SDK.Release();
                    IsInit = false;
                }

                SetDefault();
                VideoPlayer.Refresh();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void ReInit()
        {
            SetActive(Index);
            try
            {
                if (IsRecording)
                {
                    try
                    {
                        StopRecord();
                    }catch(Exception ex)
                    {

                    }
                }
                if (IsPlaying)
                {
                    try
                    {
                        StopPlay();
                    }
                    catch (Exception ex)
                    {

                    }
                }
                if (IsLogin)
                {
                    try
                    {
                        LogOut();
                    }
                    catch (Exception ex)
                    {

                    }
                }

                if (SDK != null && SDK.SDKType != SDKTYPE.Platform_SDK)
                {
                    sdk.Release();
                    IsInit = false;
                }

                SetDefault();
                VideoPlayer.Refresh();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void Login()
        {
            if (SDK == null)
            {
                ShowError("SDK未定义");
                return;
            }
            if (!IsInit)
            {
                ShowError("尚未初始化！");
                return;
            }
            if (IsLogin)
            {
                ShowExclamation("已经登录！");
                return;
            }
            try
            {
                SDK.VideoInfo = VideoInfo;
                SDK.Login(VideoInfo.LoginInfo);
                IsLogin = true;
            }catch(Exception ex)
            {
                ShowError(ex.Message);
            }
        }

        public void LogOut()
        {
            if (!IsLogin)
            {
                //ShowError("尚未登录！");
                return;
            }
            try
            {
                SDK.LogOut();
                IsLogin = false;
            }catch(Exception ex)
            {
                //ShowError(ex.Message);
            }
        }

        public void StartPlay()
        {
            if (!IsLogin)
            {
                //ShowError("尚未登录！");
                return;
            }
            try
            {
                //Release();
                SDK.VideoInfo.UUID = VideoInfo.UUID;
                SDK.VideoInfo.Channel = VideoInfo.Channel;
                SDK.StartPlay(VideoPlayer.Handle);
                IsPlaying = true;
            }
            catch (Exception ex)
            {
                ShowError(ex.Message);
            }
        }

        public void StartRecord()
        {
            if (!IsPlaying)
            {
                ShowError("尚未开始播放视频！");
                return;
            }
            try
            {
                SDK.StartRecord();
                IsRecording = true;
            }catch(Exception ex)
            {
                ShowError(ex.Message);
            }
        }

        public void StopRecord()
        {
            if (!IsRecording)
            {
                ShowError("尚未开始录像！");
                return;
            }
            try
            {
                SDK.StopRecord();
                IsRecording = false;
            }catch(Exception ex)
            {
                ShowError(ex.Message);
            }
        }

        public string Capture2Image()
        {
            if (!IsPlaying)
            {
                ShowError("尚未播放！");
                return "";
            }
            try
            {
                return SDK.Capture2Image();
            }catch(Exception ex)
            {
                ShowError(ex.Message);
                return "";
            }
        }

        public void CamerControl(Direction direction, uint step, bool stop = false)
        {
            if (!IsPlaying)
            {
                ShowError("尚未播放！");
                return;
            }
            try
            {
                SDK.CamerControl(direction, step, stop);
            }catch(Exception ex)
            {
                ShowError(ex.Message);
            }
        }

        public void StopPlay()
        {
            if (!IsPlaying)
            {
                ShowError("尚未播放！");
                return;
            }
            try
            {
                SDK.StopPlay();
                IsPlaying = false;
            }
            catch(Exception ex)
            {
                ShowError(ex.Message);
            }
        }
    }
}
