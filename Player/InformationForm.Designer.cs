namespace Player
{
    partial class InformationForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(InformationForm));
            this.Info = new System.Windows.Forms.Label();
            this.MessageIcon = new System.Windows.Forms.PictureBox();
            this.InformationBox = new System.Windows.Forms.RichTextBox();
            this.OKButton = new System.Windows.Forms.Button();
            this.DetailButton = new System.Windows.Forms.LinkLabel();
            ((System.ComponentModel.ISupportInitialize)(this.MessageIcon)).BeginInit();
            this.SuspendLayout();
            // 
            // Info
            // 
            this.Info.AutoEllipsis = true;
            this.Info.Location = new System.Drawing.Point(87, 12);
            this.Info.Name = "Info";
            this.Info.Size = new System.Drawing.Size(325, 48);
            this.Info.TabIndex = 1;
            this.Info.Text = "提示信息";
            // 
            // MessageIcon
            // 
            this.MessageIcon.Image = global::Player.Properties.Resources.Icon_Warning;
            this.MessageIcon.Location = new System.Drawing.Point(12, 12);
            this.MessageIcon.Name = "MessageIcon";
            this.MessageIcon.Size = new System.Drawing.Size(64, 64);
            this.MessageIcon.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.MessageIcon.TabIndex = 0;
            this.MessageIcon.TabStop = false;
            // 
            // InformationBox
            // 
            this.InformationBox.BackColor = System.Drawing.Color.White;
            this.InformationBox.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.InformationBox.ForeColor = System.Drawing.Color.Red;
            this.InformationBox.Location = new System.Drawing.Point(89, 92);
            this.InformationBox.Name = "InformationBox";
            this.InformationBox.ReadOnly = true;
            this.InformationBox.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.Vertical;
            this.InformationBox.Size = new System.Drawing.Size(325, 125);
            this.InformationBox.TabIndex = 2;
            this.InformationBox.Text = "";
            this.InformationBox.Visible = false;
            // 
            // OKButton
            // 
            this.OKButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.OKButton.Location = new System.Drawing.Point(339, 93);
            this.OKButton.Name = "OKButton";
            this.OKButton.Size = new System.Drawing.Size(75, 23);
            this.OKButton.TabIndex = 3;
            this.OKButton.Text = "确定";
            this.OKButton.UseVisualStyleBackColor = true;
            this.OKButton.Click += new System.EventHandler(this.OKButton_Click);
            // 
            // DetailButton
            // 
            this.DetailButton.AutoSize = true;
            this.DetailButton.Location = new System.Drawing.Point(359, 64);
            this.DetailButton.Name = "DetailButton";
            this.DetailButton.Size = new System.Drawing.Size(53, 12);
            this.DetailButton.TabIndex = 4;
            this.DetailButton.TabStop = true;
            this.DetailButton.Text = "显示详情";
            this.DetailButton.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.DetailButton_LinkClicked);
            // 
            // InformationForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(426, 126);
            this.Controls.Add(this.DetailButton);
            this.Controls.Add(this.OKButton);
            this.Controls.Add(this.InformationBox);
            this.Controls.Add(this.Info);
            this.Controls.Add(this.MessageIcon);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "InformationForm";
            this.Text = "错误";
            ((System.ComponentModel.ISupportInitialize)(this.MessageIcon)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox MessageIcon;
        private System.Windows.Forms.Label Info;
        private System.Windows.Forms.RichTextBox InformationBox;
        private System.Windows.Forms.Button OKButton;
        private System.Windows.Forms.LinkLabel DetailButton;
    }
}