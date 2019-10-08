namespace Player
{
    partial class SinglePlayer
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SinglePlayer));
            this.Mask_Recording_Seconds = new System.Windows.Forms.Label();
            this.MessageTip = new System.Windows.Forms.ToolTip(this.components);
            this.Button_Record = new System.Windows.Forms.PictureBox();
            this.Button_ScrnShot = new System.Windows.Forms.PictureBox();
            this.Button_Quit = new System.Windows.Forms.PictureBox();
            this.ActionBar = new System.Windows.Forms.FlowLayoutPanel();
            this.Info_State = new System.Windows.Forms.Label();
            this.Info_Seconds = new System.Windows.Forms.Label();
            this.Mask_Recording = new System.Windows.Forms.PictureBox();
            this.VideoPlayer = new System.Windows.Forms.PictureBox();
            this.PlayerBorder = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.Button_Record)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Button_ScrnShot)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Button_Quit)).BeginInit();
            this.ActionBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Mask_Recording)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.VideoPlayer)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.PlayerBorder)).BeginInit();
            this.SuspendLayout();
            // 
            // Mask_Recording_Seconds
            // 
            this.Mask_Recording_Seconds.AutoSize = true;
            this.Mask_Recording_Seconds.BackColor = System.Drawing.Color.Transparent;
            this.Mask_Recording_Seconds.Font = new System.Drawing.Font("宋体", 9F);
            this.Mask_Recording_Seconds.ForeColor = System.Drawing.Color.Red;
            this.Mask_Recording_Seconds.Location = new System.Drawing.Point(24, 7);
            this.Mask_Recording_Seconds.Name = "Mask_Recording_Seconds";
            this.Mask_Recording_Seconds.Size = new System.Drawing.Size(17, 12);
            this.Mask_Recording_Seconds.TabIndex = 3;
            this.Mask_Recording_Seconds.Text = "0s";
            this.Mask_Recording_Seconds.Visible = false;
            // 
            // Button_Record
            // 
            this.Button_Record.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.Button_Record.Image = global::Player.Properties.Resources.Icon_Record;
            this.Button_Record.Location = new System.Drawing.Point(2, 3);
            this.Button_Record.Margin = new System.Windows.Forms.Padding(2, 3, 0, 3);
            this.Button_Record.Name = "Button_Record";
            this.Button_Record.Size = new System.Drawing.Size(18, 18);
            this.Button_Record.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.Button_Record.TabIndex = 8;
            this.Button_Record.TabStop = false;
            this.MessageTip.SetToolTip(this.Button_Record, "录像");
            this.Button_Record.Click += new System.EventHandler(this.Button_Record_Click);
            // 
            // Button_ScrnShot
            // 
            this.Button_ScrnShot.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.Button_ScrnShot.Image = global::Player.Properties.Resources.Icon_ScreenHoot;
            this.Button_ScrnShot.Location = new System.Drawing.Point(22, 3);
            this.Button_ScrnShot.Margin = new System.Windows.Forms.Padding(2, 3, 0, 3);
            this.Button_ScrnShot.Name = "Button_ScrnShot";
            this.Button_ScrnShot.Size = new System.Drawing.Size(18, 18);
            this.Button_ScrnShot.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.Button_ScrnShot.TabIndex = 9;
            this.Button_ScrnShot.TabStop = false;
            this.MessageTip.SetToolTip(this.Button_ScrnShot, "截图");
            this.Button_ScrnShot.Click += new System.EventHandler(this.Button_ScrnShot_Click);
            // 
            // Button_Quit
            // 
            this.Button_Quit.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.Button_Quit.Image = global::Player.Properties.Resources.Icon_Logout;
            this.Button_Quit.Location = new System.Drawing.Point(374, 3);
            this.Button_Quit.Margin = new System.Windows.Forms.Padding(2, 3, 0, 3);
            this.Button_Quit.Name = "Button_Quit";
            this.Button_Quit.Size = new System.Drawing.Size(18, 18);
            this.Button_Quit.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.Button_Quit.TabIndex = 12;
            this.Button_Quit.TabStop = false;
            this.MessageTip.SetToolTip(this.Button_Quit, "退出");
            this.Button_Quit.Click += new System.EventHandler(this.Button_Quit_Click);
            // 
            // ActionBar
            // 
            this.ActionBar.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.ActionBar.BackColor = System.Drawing.Color.Transparent;
            this.ActionBar.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("ActionBar.BackgroundImage")));
            this.ActionBar.Controls.Add(this.Button_Record);
            this.ActionBar.Controls.Add(this.Button_ScrnShot);
            this.ActionBar.Controls.Add(this.Info_State);
            this.ActionBar.Controls.Add(this.Info_Seconds);
            this.ActionBar.Controls.Add(this.Button_Quit);
            this.ActionBar.Location = new System.Drawing.Point(5, 275);
            this.ActionBar.Name = "ActionBar";
            this.ActionBar.Size = new System.Drawing.Size(394, 24);
            this.ActionBar.TabIndex = 8;
            this.ActionBar.Visible = false;
            // 
            // Info_State
            // 
            this.Info_State.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.Info_State.Font = new System.Drawing.Font("宋体", 8F);
            this.Info_State.ForeColor = System.Drawing.Color.White;
            this.Info_State.Location = new System.Drawing.Point(43, 3);
            this.Info_State.Margin = new System.Windows.Forms.Padding(3);
            this.Info_State.Name = "Info_State";
            this.Info_State.Size = new System.Drawing.Size(236, 18);
            this.Info_State.TabIndex = 10;
            this.Info_State.Text = "准备就绪";
            this.Info_State.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // Info_Seconds
            // 
            this.Info_Seconds.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.Info_Seconds.Font = new System.Drawing.Font("宋体", 8F);
            this.Info_Seconds.ForeColor = System.Drawing.Color.White;
            this.Info_Seconds.Location = new System.Drawing.Point(285, 3);
            this.Info_Seconds.Margin = new System.Windows.Forms.Padding(3);
            this.Info_Seconds.Name = "Info_Seconds";
            this.Info_Seconds.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.Info_Seconds.Size = new System.Drawing.Size(84, 18);
            this.Info_Seconds.TabIndex = 11;
            this.Info_Seconds.Text = "0S";
            this.Info_Seconds.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // Mask_Recording
            // 
            this.Mask_Recording.BackColor = System.Drawing.Color.Transparent;
            this.Mask_Recording.Image = ((System.Drawing.Image)(resources.GetObject("Mask_Recording.Image")));
            this.Mask_Recording.Location = new System.Drawing.Point(3, 3);
            this.Mask_Recording.Name = "Mask_Recording";
            this.Mask_Recording.Size = new System.Drawing.Size(18, 18);
            this.Mask_Recording.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.Mask_Recording.TabIndex = 2;
            this.Mask_Recording.TabStop = false;
            this.Mask_Recording.Visible = false;
            // 
            // VideoPlayer
            // 
            this.VideoPlayer.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.VideoPlayer.BackColor = System.Drawing.Color.Black;
            this.VideoPlayer.Image = global::Player.Properties.Resources.DVRPlayer;
            this.VideoPlayer.Location = new System.Drawing.Point(2, 2);
            this.VideoPlayer.Name = "VideoPlayer";
            this.VideoPlayer.Size = new System.Drawing.Size(400, 300);
            this.VideoPlayer.SizeMode = System.Windows.Forms.PictureBoxSizeMode.CenterImage;
            this.VideoPlayer.TabIndex = 1;
            this.VideoPlayer.TabStop = false;
            this.VideoPlayer.Click += new System.EventHandler(this.VideoPlayer_Click);
            // 
            // PlayerBorder
            // 
            this.PlayerBorder.BackColor = System.Drawing.Color.Black;
            this.PlayerBorder.Dock = System.Windows.Forms.DockStyle.Fill;
            this.PlayerBorder.Location = new System.Drawing.Point(0, 0);
            this.PlayerBorder.Name = "PlayerBorder";
            this.PlayerBorder.Size = new System.Drawing.Size(404, 304);
            this.PlayerBorder.TabIndex = 0;
            this.PlayerBorder.TabStop = false;
            // 
            // SinglePlayer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Black;
            this.Controls.Add(this.ActionBar);
            this.Controls.Add(this.Mask_Recording_Seconds);
            this.Controls.Add(this.Mask_Recording);
            this.Controls.Add(this.VideoPlayer);
            this.Controls.Add(this.PlayerBorder);
            this.Name = "SinglePlayer";
            this.Size = new System.Drawing.Size(404, 304);
            ((System.ComponentModel.ISupportInitialize)(this.Button_Record)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Button_ScrnShot)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Button_Quit)).EndInit();
            this.ActionBar.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Mask_Recording)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.VideoPlayer)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.PlayerBorder)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox PlayerBorder;
        private System.Windows.Forms.PictureBox VideoPlayer;
        private System.Windows.Forms.PictureBox Mask_Recording;
        private System.Windows.Forms.Label Mask_Recording_Seconds;
        private System.Windows.Forms.FlowLayoutPanel ActionBar;
        private System.Windows.Forms.PictureBox Button_Record;
        private System.Windows.Forms.ToolTip MessageTip;
        private System.Windows.Forms.PictureBox Button_ScrnShot;
        private System.Windows.Forms.Label Info_State;
        private System.Windows.Forms.Label Info_Seconds;
        private System.Windows.Forms.PictureBox Button_Quit;
    }
}
