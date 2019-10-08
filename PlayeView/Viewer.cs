using DVRSDK;
using SDKLibrary;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Windows.Forms;

namespace PlayeView
{
    public partial class Form_Viewer : Form
    {
        List< Video_Type> videoType = new List<Video_Type>();
        public Form_Viewer()
        {
            InitializeComponent();
            videoType.Add(new Video_Type { TypeId = 0, TypeName = "直连接入-海康" });
            videoType.Add(new Video_Type { TypeId = 1, TypeName = "直连接入-大华" });
            videoType.Add(new Video_Type { TypeId = 3, TypeName = "直连接入-兴视捷" });
            videoType.Add(new Video_Type { TypeId = 4, TypeName = "直连接入-雄迈" });
            videoType.Add(new Video_Type { TypeId = 5, TypeName = "直连接入-上海诚丰" });
            videoType.Add(new Video_Type { TypeId = 101, TypeName = "平台接入-英飞拓" });
            videoType.Add(new Video_Type { TypeId = 102, TypeName = "平台接入-海康" });

            combo_VideoType.DataSource = videoType;
            combo_VideoType.DisplayMember = "TypeName";
            combo_VideoType.ValueMember = "TypeId";
            combo_VideoType.SelectedIndex = 0;


            button_up.MouseDown += new MouseEventHandler(Control_Start_Up);
            button_up.MouseUp += new MouseEventHandler(Control_Stop_Up);

            button_down.MouseDown += new MouseEventHandler(Control_Start_Down);
            button_down.MouseUp += new MouseEventHandler(Control_Stop_Down);

            button_left.MouseDown += new MouseEventHandler(Control_Start_Left);
            button_left.MouseUp += new MouseEventHandler(Control_Stop_Left);

            button_right.MouseDown += new MouseEventHandler(Control_Start_Right);
            button_right.MouseUp += new MouseEventHandler(Control_Stop_Right);

            button_upleft.MouseDown += new MouseEventHandler(Control_Start_UpLeft);
            button_upleft.MouseUp += new MouseEventHandler(Control_Stop_UpLeft);

            button_upright.MouseDown += new MouseEventHandler(Control_Start_UpRight);
            button_upright.MouseUp += new MouseEventHandler(Control_Stop_UpRight);

            button_downleft.MouseDown += new MouseEventHandler(Control_Start_DownLeft);
            button_downleft.MouseUp += new MouseEventHandler(Control_Stop_DownLeft);

            button_downright.MouseDown += new MouseEventHandler(Control_Start_DownRight);
            button_downright.MouseUp += new MouseEventHandler(Control_Stop_DownRight);

            button_zoomin.MouseDown += new MouseEventHandler(Control_Start_ZoomIn);
            button_zoomin.MouseUp += new MouseEventHandler(Control_Stop_ZoomIn);

            button_zoomout.MouseDown += new MouseEventHandler(Control_Start_ZoomOut);
            button_zoomout.MouseUp += new MouseEventHandler(Control_Stop_ZoomOut);


            listBox1.DoubleClick += new EventHandler(PlatformPlay);


            VideoPlayer.InitPlayer();

        }

        void PlatformPlay(object sender,EventArgs e)
        {
            try
            {
                string ipAddress = text_Ip.Text;
                int port = int.Parse(text_Port.Text);
                string userName = text_UserName.Text;
                string password = text_Password.Text;
                int vt = (int)combo_VideoType.SelectedValue;
                int channel = int.Parse(text_Channal.Text);
                string uuid = "";
                if (listBox1.SelectedItem != null)
                {
                    uuid = listBox1.SelectedValue.ToString();
                }
                VideoPlayer.StartPlay(int.Parse(combo_VideoType.SelectedValue.ToString()), text_Ip.Text, int.Parse(text_Port.Text), int.Parse(text_Channal.Text), text_UserName.Text, text_Password.Text, uuid);
            }
            catch (Exception ex)
            {
                MessageBox.Show("发生了错误，信息如下：" + Environment.NewLine + GetAllException(ex));
            }
        }

        private void btn_Play_Click(object sender, EventArgs e)
        {
            Video_Type vt = (Video_Type)combo_VideoType.SelectedItem;
            VideoPlayer.StartPlay(vt.TypeId, text_Ip.Text, int.Parse(text_Port.Text), int.Parse(text_Channal.Text), text_UserName.Text, text_Password.Text, "");
        }

        string GetAllException(Exception ex)
        {
            string result = "";
            if (ex.InnerException != null)
            {
                result += "InnerException:" + ex.Message + Environment.NewLine;
            }
            result += ex.Message;
            return result;
        }

        private void combo_VideoType_SelectedIndexChanged(object sender, EventArgs e)
        {
            Video_Type vt = (Video_Type)combo_VideoType.SelectedItem;
            switch (vt.TypeId)
            {
                case 0:
                    VideoPlayer.InitPlayer();
                    break;
                case 1:
                    VideoPlayer.InitPlayer();
                    break;
                case 3:
                    VideoPlayer.InitPlayer();
                    break;
                case 101:
                    text_Ip.Text = "192.168.4.11";
                    text_Port.Text = "9981";
                    text_UserName.Text = "admin";
                    text_Password.Text = "admin";

                    VideoPlayer.InitPlayerP(vt.TypeId, text_Ip.Text, int.Parse(text_Port.Text), text_UserName.Text, text_Password.Text);
                    break;
                case 102:
                    text_Ip.Text = "192.168.91.252";
                    text_Port.Text = "80";
                    text_UserName.Text = "admin";
                    text_Password.Text = "Hnc123456";

                    VideoPlayer.InitPlayerP(vt.TypeId, text_Ip.Text, int.Parse(text_Port.Text), text_UserName.Text, text_Password.Text);
                    break;
                default:
                    break;
            }

            switch (VideoPlayer.PluginType)
            {
                case PluginType.Direct_Connection_Plugin:
                    lab_ctype.Text = "直连";
                    btn_Play.Enabled = true;
                    button2.Enabled = false;
                    break;
                case PluginType.PlatForm_Connection_Plugin:
                    lab_ctype.Text = "平台";
                    btn_Play.Enabled = false;
                    button2.Enabled = true;
                    break;
                default:
                    lab_ctype.Text = "错误";
                    break;
            }
        }

        private void text_Password_TextChanged(object sender, EventArgs e)
        {

        }

        private void text_UserName_TextChanged(object sender, EventArgs e)
        {

        }

        private void text_Channal_TextChanged(object sender, EventArgs e)
        {

        }

        private void text_Port_TextChanged(object sender, EventArgs e)
        {

        }

        private void text_Ip_TextChanged(object sender, EventArgs e)
        {

        }
        
        
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string ipAddress = text_Ip.Text;
                int port = int.Parse(text_Port.Text);
                string userName = text_UserName.Text;
                string password = text_Password.Text;
                int vt = (int)combo_VideoType.SelectedValue;
                int channel = int.Parse(text_Channal.Text);
                string uuid = listBox1.SelectedValue.ToString();
                VideoPlayer.StartPlay(0, "", 0, 0, "", "", uuid);
            }
            catch (Exception ex)
            {
                MessageBox.Show("发生了错误，信息如下：" + Environment.NewLine + GetAllException(ex));
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            
            List<Video> lvi = VideoPlayer.GetListVideo();
            if (lvi != null)
            {
                listBox1.DataSource = lvi;
                listBox1.DisplayMember = "VideoName";
                listBox1.ValueMember = "UUID";
                listBox1.SelectedIndex = 0;
            }

        }

        private void Control_Start_Up(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(0);
        }
        private void Control_Stop_Up(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(0,4,true);
        }

        private void Control_Start_Down(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(1);
        }

        private void Control_Stop_Down(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(1, 4, true);
        }

        private void Control_Start_Left(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(2);
        }

        private void Control_Stop_Left(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(2, 4, true);
        }

        private void Control_Start_Right(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(3);
        }

        private void Control_Stop_Right(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(3, 4, true);
        }

        private void Control_Start_UpLeft(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(4);
        }

        private void Control_Stop_UpLeft(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(4, 4, true);
        }

        private void Control_Start_UpRight(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(5);
        }

        private void Control_Stop_UpRight(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(5, 4, true);
        }

        private void Control_Start_DownLeft(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(6);
        }

        private void Control_Stop_DownLeft(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(6, 4, true);
        }

        private void Control_Start_DownRight(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(7);
        }

        private void Control_Stop_DownRight(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(7, 4, true);
        }

        private void Control_Start_ZoomIn(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(8);
        }

        private void Control_Stop_ZoomIn(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(8, 4, true);
        }

        private void Control_Start_ZoomOut(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(9);
        }

        private void Control_Stop_ZoomOut(object sender, EventArgs e)
        {
            VideoPlayer.CammerControl(9, 4, true);
        }

        private void button1_Click_1(object sender, EventArgs e)
        {

            Video_Type vt = (Video_Type)combo_VideoType.SelectedItem;
            VideoPlayer.InitPlayerP(vt.TypeId, text_Ip.Text, int.Parse(text_Port.Text), text_UserName.Text, text_Password.Text);
        }
    }



    public class Video_Type
    {
        public string TypeName { get; set; }
        public int TypeId { get; set; }
    }
    
}
