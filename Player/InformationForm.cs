using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Player
{
    public partial class InformationForm : Form
    {
        public InformationForm()
        {
            InitializeComponent();
        }



        public void ShowError(string title,string message,string detail)
        {
            MessageIcon.Image = Properties.Resources.Icon_Error;
            this.Text = title;
            Info.Text = message;
            InformationBox.Text = detail;
            this.ShowDialog();
        }

        public void ShowWarning(string title, string message, string detail)
        {
            MessageIcon.Image = Properties.Resources.Icon_Warning;
            this.Text = title;
            Info.Text = message;
            InformationBox.Text = detail;
            this.ShowDialog();
        }

        public void ShowInformation(string title, string message, string detail)
        {
            MessageIcon.Image = Properties.Resources.Icon_Info;
            this.Text = title;
            Info.Text = message;
            InformationBox.Text = detail;
            this.ShowDialog();
        }


        private void DetailButton_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (DetailButton.Text == "显示详情")
            {
                DetailButton.Text = "关闭详情";
                InformationBox.Show();
                this.Height = 306;
            }
            else
            {
                DetailButton.Text = "显示详情";
                InformationBox.Hide();
                this.Height = 164;
            }
        }

        private void OKButton_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
