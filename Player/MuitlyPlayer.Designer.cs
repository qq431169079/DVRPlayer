namespace Player
{
    partial class MuitlyPlayer
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
            this.Player1 = new Player.SinglePlayer();
            this.Player2 = new Player.SinglePlayer();
            this.Player3 = new Player.SinglePlayer();
            this.Player4 = new Player.SinglePlayer();
            this.SuspendLayout();
            // 
            // Player1
            // 
            this.Player1.BackColor = System.Drawing.Color.Transparent;
            this.Player1.Index = 0;
            this.Player1.IsActive = false;
            this.Player1.Location = new System.Drawing.Point(0, 0);
            this.Player1.Margin = new System.Windows.Forms.Padding(0);
            this.Player1.Name = "Player1";
            this.Player1.Size = new System.Drawing.Size(404, 304);
            this.Player1.TabIndex = 0;
            // 
            // Player2
            // 
            this.Player2.BackColor = System.Drawing.Color.Transparent;
            this.Player2.Index = 0;
            this.Player2.IsActive = false;
            this.Player2.Location = new System.Drawing.Point(404, 0);
            this.Player2.Margin = new System.Windows.Forms.Padding(0);
            this.Player2.Name = "Player2";
            this.Player2.Size = new System.Drawing.Size(404, 304);
            this.Player2.TabIndex = 1;
            // 
            // Player3
            // 
            this.Player3.BackColor = System.Drawing.Color.Transparent;
            this.Player3.Index = 0;
            this.Player3.IsActive = false;
            this.Player3.Location = new System.Drawing.Point(0, 304);
            this.Player3.Margin = new System.Windows.Forms.Padding(0);
            this.Player3.Name = "Player3";
            this.Player3.Size = new System.Drawing.Size(404, 304);
            this.Player3.TabIndex = 2;
            // 
            // Player4
            // 
            this.Player4.BackColor = System.Drawing.Color.Transparent;
            this.Player4.Index = 0;
            this.Player4.IsActive = false;
            this.Player4.Location = new System.Drawing.Point(404, 304);
            this.Player4.Margin = new System.Windows.Forms.Padding(0);
            this.Player4.Name = "Player4";
            this.Player4.Size = new System.Drawing.Size(404, 304);
            this.Player4.TabIndex = 3;
            // 
            // MuitlyPlayer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Black;
            this.Controls.Add(this.Player4);
            this.Controls.Add(this.Player3);
            this.Controls.Add(this.Player2);
            this.Controls.Add(this.Player1);
            this.Name = "MuitlyPlayer";
            this.Size = new System.Drawing.Size(808, 608);
            this.ResumeLayout(false);

        }

        #endregion

        private SinglePlayer Player1;
        private SinglePlayer Player2;
        private SinglePlayer Player3;
        private SinglePlayer Player4;
    }
}
