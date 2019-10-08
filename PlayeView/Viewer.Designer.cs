namespace PlayeView
{
    partial class Form_Viewer
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

        #region Windows 窗体设计器生成的代码

        /// <summary>
        /// 设计器支持所需的方法 - 不要修改
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form_Viewer));
            this.text_Ip = new System.Windows.Forms.TextBox();
            this.text_Port = new System.Windows.Forms.TextBox();
            this.text_UserName = new System.Windows.Forms.TextBox();
            this.text_Password = new System.Windows.Forms.TextBox();
            this.combo_VideoType = new System.Windows.Forms.ComboBox();
            this.btn_Play = new System.Windows.Forms.Button();
            this.text_Channal = new System.Windows.Forms.TextBox();
            this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
            this.lab_ctype = new System.Windows.Forms.Label();
            this.listBox1 = new System.Windows.Forms.ListBox();
            this.button2 = new System.Windows.Forms.Button();
            this.VideoPlayer = new Player.MuitlyPlayer();
            this.button_up = new System.Windows.Forms.Button();
            this.button_down = new System.Windows.Forms.Button();
            this.button_left = new System.Windows.Forms.Button();
            this.button_right = new System.Windows.Forms.Button();
            this.button_upleft = new System.Windows.Forms.Button();
            this.button_upright = new System.Windows.Forms.Button();
            this.button_downleft = new System.Windows.Forms.Button();
            this.button_downright = new System.Windows.Forms.Button();
            this.button_zoomin = new System.Windows.Forms.Button();
            this.button_zoomout = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // text_Ip
            // 
            this.text_Ip.Location = new System.Drawing.Point(226, 628);
            this.text_Ip.Name = "text_Ip";
            this.text_Ip.Size = new System.Drawing.Size(135, 21);
            this.text_Ip.TabIndex = 1;
            this.text_Ip.Text = "192.168.100.236";
            this.toolTip1.SetToolTip(this.text_Ip, "IP地址");
            this.text_Ip.TextChanged += new System.EventHandler(this.text_Ip_TextChanged);
            // 
            // text_Port
            // 
            this.text_Port.Location = new System.Drawing.Point(367, 628);
            this.text_Port.Name = "text_Port";
            this.text_Port.Size = new System.Drawing.Size(72, 21);
            this.text_Port.TabIndex = 2;
            this.text_Port.Text = "9981";
            this.toolTip1.SetToolTip(this.text_Port, "端口号");
            this.text_Port.TextChanged += new System.EventHandler(this.text_Port_TextChanged);
            // 
            // text_UserName
            // 
            this.text_UserName.Location = new System.Drawing.Point(526, 628);
            this.text_UserName.Name = "text_UserName";
            this.text_UserName.Size = new System.Drawing.Size(72, 21);
            this.text_UserName.TabIndex = 4;
            this.text_UserName.Text = "admin";
            this.toolTip1.SetToolTip(this.text_UserName, "用户名");
            this.text_UserName.TextChanged += new System.EventHandler(this.text_UserName_TextChanged);
            // 
            // text_Password
            // 
            this.text_Password.Location = new System.Drawing.Point(604, 628);
            this.text_Password.Name = "text_Password";
            this.text_Password.PasswordChar = '*';
            this.text_Password.Size = new System.Drawing.Size(72, 21);
            this.text_Password.TabIndex = 5;
            this.text_Password.Text = "admin";
            this.toolTip1.SetToolTip(this.text_Password, "登录密码");
            this.text_Password.TextChanged += new System.EventHandler(this.text_Password_TextChanged);
            // 
            // combo_VideoType
            // 
            this.combo_VideoType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.combo_VideoType.FormattingEnabled = true;
            this.combo_VideoType.Location = new System.Drawing.Point(14, 629);
            this.combo_VideoType.Name = "combo_VideoType";
            this.combo_VideoType.Size = new System.Drawing.Size(151, 20);
            this.combo_VideoType.TabIndex = 6;
            this.combo_VideoType.SelectedIndexChanged += new System.EventHandler(this.combo_VideoType_SelectedIndexChanged);
            // 
            // btn_Play
            // 
            this.btn_Play.Location = new System.Drawing.Point(784, 626);
            this.btn_Play.Name = "btn_Play";
            this.btn_Play.Size = new System.Drawing.Size(75, 23);
            this.btn_Play.TabIndex = 7;
            this.btn_Play.Text = "播放";
            this.btn_Play.UseVisualStyleBackColor = true;
            this.btn_Play.Click += new System.EventHandler(this.btn_Play_Click);
            // 
            // text_Channal
            // 
            this.text_Channal.Location = new System.Drawing.Point(445, 628);
            this.text_Channal.Name = "text_Channal";
            this.text_Channal.Size = new System.Drawing.Size(72, 21);
            this.text_Channal.TabIndex = 3;
            this.text_Channal.Text = "1";
            this.toolTip1.SetToolTip(this.text_Channal, "通道号");
            this.text_Channal.TextChanged += new System.EventHandler(this.text_Channal_TextChanged);
            // 
            // lab_ctype
            // 
            this.lab_ctype.AutoSize = true;
            this.lab_ctype.Location = new System.Drawing.Point(171, 633);
            this.lab_ctype.Name = "lab_ctype";
            this.lab_ctype.Size = new System.Drawing.Size(29, 12);
            this.lab_ctype.TabIndex = 9;
            this.lab_ctype.Text = "直连";
            // 
            // listBox1
            // 
            this.listBox1.FormattingEnabled = true;
            this.listBox1.ItemHeight = 12;
            this.listBox1.Location = new System.Drawing.Point(826, 156);
            this.listBox1.Name = "listBox1";
            this.listBox1.Size = new System.Drawing.Size(295, 460);
            this.listBox1.TabIndex = 12;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(1046, 628);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 13;
            this.button2.Text = "设备列表";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // VideoPlayer
            // 
            this.VideoPlayer.BackColor = System.Drawing.Color.Black;
            this.VideoPlayer.Location = new System.Drawing.Point(12, 12);
            this.VideoPlayer.Name = "VideoPlayer";
            this.VideoPlayer.PlatformSDK = null;
            this.VideoPlayer.PluginType = SDKLibrary.PluginType.Direct_Connection_Plugin;
            this.VideoPlayer.Size = new System.Drawing.Size(808, 608);
            this.VideoPlayer.TabIndex = 0;
            // 
            // button_up
            // 
            this.button_up.Location = new System.Drawing.Point(943, 24);
            this.button_up.Name = "button_up";
            this.button_up.Size = new System.Drawing.Size(75, 23);
            this.button_up.TabIndex = 14;
            this.button_up.Text = "上";
            this.button_up.UseVisualStyleBackColor = true;
            // 
            // button_down
            // 
            this.button_down.Location = new System.Drawing.Point(943, 120);
            this.button_down.Name = "button_down";
            this.button_down.Size = new System.Drawing.Size(75, 23);
            this.button_down.TabIndex = 15;
            this.button_down.Text = "下";
            this.button_down.UseVisualStyleBackColor = true;
            // 
            // button_left
            // 
            this.button_left.Location = new System.Drawing.Point(841, 72);
            this.button_left.Name = "button_left";
            this.button_left.Size = new System.Drawing.Size(75, 23);
            this.button_left.TabIndex = 16;
            this.button_left.Text = "左";
            this.button_left.UseVisualStyleBackColor = true;
            // 
            // button_right
            // 
            this.button_right.Location = new System.Drawing.Point(1045, 72);
            this.button_right.Name = "button_right";
            this.button_right.Size = new System.Drawing.Size(75, 23);
            this.button_right.TabIndex = 17;
            this.button_right.Text = "右";
            this.button_right.UseVisualStyleBackColor = true;
            // 
            // button_upleft
            // 
            this.button_upleft.Location = new System.Drawing.Point(841, 24);
            this.button_upleft.Name = "button_upleft";
            this.button_upleft.Size = new System.Drawing.Size(75, 23);
            this.button_upleft.TabIndex = 18;
            this.button_upleft.Text = "上左";
            this.button_upleft.UseVisualStyleBackColor = true;
            // 
            // button_upright
            // 
            this.button_upright.Location = new System.Drawing.Point(1045, 24);
            this.button_upright.Name = "button_upright";
            this.button_upright.Size = new System.Drawing.Size(75, 23);
            this.button_upright.TabIndex = 19;
            this.button_upright.Text = "上右";
            this.button_upright.UseVisualStyleBackColor = true;
            // 
            // button_downleft
            // 
            this.button_downleft.Location = new System.Drawing.Point(841, 120);
            this.button_downleft.Name = "button_downleft";
            this.button_downleft.Size = new System.Drawing.Size(75, 23);
            this.button_downleft.TabIndex = 20;
            this.button_downleft.Text = "下左";
            this.button_downleft.UseVisualStyleBackColor = true;
            // 
            // button_downright
            // 
            this.button_downright.Location = new System.Drawing.Point(1045, 120);
            this.button_downright.Name = "button_downright";
            this.button_downright.Size = new System.Drawing.Size(75, 23);
            this.button_downright.TabIndex = 21;
            this.button_downright.Text = "下右";
            this.button_downright.UseVisualStyleBackColor = true;
            // 
            // button_zoomin
            // 
            this.button_zoomin.Location = new System.Drawing.Point(943, 56);
            this.button_zoomin.Name = "button_zoomin";
            this.button_zoomin.Size = new System.Drawing.Size(75, 23);
            this.button_zoomin.TabIndex = 22;
            this.button_zoomin.Text = "放大";
            this.button_zoomin.UseVisualStyleBackColor = true;
            // 
            // button_zoomout
            // 
            this.button_zoomout.Location = new System.Drawing.Point(943, 88);
            this.button_zoomout.Name = "button_zoomout";
            this.button_zoomout.Size = new System.Drawing.Size(75, 23);
            this.button_zoomout.TabIndex = 23;
            this.button_zoomout.Text = "缩小";
            this.button_zoomout.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(682, 626);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(96, 23);
            this.button1.TabIndex = 24;
            this.button1.Text = "手动初始化";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.Color.Gray;
            this.label1.Location = new System.Drawing.Point(915, 633);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(125, 12);
            this.label1.TabIndex = 25;
            this.label1.Text = "双击列表播放平台视频";
            // 
            // Form_Viewer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1132, 662);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.button_zoomout);
            this.Controls.Add(this.button_zoomin);
            this.Controls.Add(this.button_downright);
            this.Controls.Add(this.button_downleft);
            this.Controls.Add(this.button_upright);
            this.Controls.Add(this.button_upleft);
            this.Controls.Add(this.button_right);
            this.Controls.Add(this.button_left);
            this.Controls.Add(this.button_down);
            this.Controls.Add(this.button_up);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.listBox1);
            this.Controls.Add(this.lab_ctype);
            this.Controls.Add(this.btn_Play);
            this.Controls.Add(this.combo_VideoType);
            this.Controls.Add(this.text_Password);
            this.Controls.Add(this.text_UserName);
            this.Controls.Add(this.text_Channal);
            this.Controls.Add(this.text_Port);
            this.Controls.Add(this.text_Ip);
            this.Controls.Add(this.VideoPlayer);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "Form_Viewer";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Viewer";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Player.MuitlyPlayer VideoPlayer;
        private System.Windows.Forms.TextBox text_Ip;
        private System.Windows.Forms.TextBox text_Port;
        private System.Windows.Forms.TextBox text_UserName;
        private System.Windows.Forms.TextBox text_Password;
        private System.Windows.Forms.ComboBox combo_VideoType;
        private System.Windows.Forms.Button btn_Play;
        private System.Windows.Forms.TextBox text_Channal;
        private System.Windows.Forms.ToolTip toolTip1;
        private System.Windows.Forms.Label lab_ctype;
        private System.Windows.Forms.ListBox listBox1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button_up;
        private System.Windows.Forms.Button button_down;
        private System.Windows.Forms.Button button_left;
        private System.Windows.Forms.Button button_right;
        private System.Windows.Forms.Button button_upleft;
        private System.Windows.Forms.Button button_upright;
        private System.Windows.Forms.Button button_downleft;
        private System.Windows.Forms.Button button_downright;
        private System.Windows.Forms.Button button_zoomin;
        private System.Windows.Forms.Button button_zoomout;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
    }
}

