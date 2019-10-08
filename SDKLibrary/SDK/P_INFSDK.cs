using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DVRSDK;
using System.Drawing;
using System.IO;

namespace SDKLibrary
{
    public class P_INFSDK : ISDK
    {

        public SDKTYPE SDKType { get { return SDKTYPE.Platform_SDK; } }

        public Video VideoInfo
        {
            get;set;
        }
        

        public string Capture2Base64()
        {
            string file = Capture2Image();
            Bitmap bmp = new Bitmap(file);

            using (MemoryStream ms1 = new MemoryStream())
            {
                bmp.Save(ms1, System.Drawing.Imaging.ImageFormat.Jpeg);
                byte[] arr1 = new byte[ms1.Length];
                ms1.Position = 0;
                ms1.Read(arr1, 0, (int)ms1.Length);
                ms1.Close();
                return Convert.ToBase64String(arr1);
            }
        }

        public string Capture2Image()
        {
            string fileName = Helper.UniqueFile(SaveFileType.Picture, FileExtensionType.jpg);
            try
            {
                int rst = INFPlatformSDK.INF_PLAYCTRL_CapturePicture(VideoInfo.PlayInfo.PlayHandle,fileName,0);
                if (rst != 0)
                {
                    throw new Exception("错误码[" + rst + "]" + GetErrorMessage(rst));
                }
            }
            catch (Exception ex)
            {
                throw new Exception("[英飞拓平台]截图失败：" + Environment.NewLine + ex.Message);
            }
            return fileName;
        }

        public void Release()
        {
            INFPlatformSDK.INF_NET_UnInit();
        }

        public void Init()
        {
            try
            {
                int init = INFPlatformSDK.INF_NET_Init();
                if (init != 0)
                {
                    throw new Exception("错误码[" + init + "]"+ GetErrorMessage(init));
                }
            }catch(Exception ex)
            {
                throw new Exception("[英飞拓平台]SDK初始化失败："+ Environment.NewLine + ex.Message);
            }

        }

        /// <summary>
        /// 端口号9981
        /// </summary>
        public void Login(LoginInfo logininfo)
        {
            try
            {
                int loginid = -1;
                int status = INFPlatformSDK.INF_NET_Login(out loginid, logininfo.Ip, logininfo.Port, logininfo.UserName, logininfo.Password);

                if (status == 204) return;

                if (loginid < 0)
                {
                    throw new Exception("错误码为：" + status + GetErrorMessage(status));
                }
                VideoInfo.PlayInfo.LoginHandle = loginid;
            }catch(Exception ex)
            {
                throw new Exception("[英飞拓平台]设备登录失败" + Environment.NewLine + ex.Message);
            }

        }

        public void LogOut()
        {
            try
            {
                INFPlatformSDK.INF_NET_Logout(VideoInfo.PlayInfo.LoginHandle);
            }catch(Exception ex)
            {
                throw new Exception("[英飞拓平台]设备注销登录失败" + Environment.NewLine + ex.Message);
            }
        }

        public void StartPlay(IntPtr handle)
        {
            try
            {
                int playid = -1;
                int play= INFPlatformSDK.INF_NET_RealPlay(out playid, VideoInfo.PlayInfo.LoginHandle, VideoInfo.Channel, VideoInfo.LoginInfo.Port, handle, 0, 0);
                if (play != 0)
                {
                    throw new Exception("错误码：" + play+ GetErrorMessage(play));
                }
            }catch(Exception ex)
            {
                throw new Exception("[英飞拓平台]设备预览失败" + Environment.NewLine + ex.Message);
            }
        }

        public void StartRecord()
        {
            string fileName = Helper.UniqueFile(SaveFileType.Video, FileExtensionType.mp4);
            try
            {
                int rst = INFPlatformSDK.INF_PLAYCTRL_StartLocalRecord(VideoInfo.PlayInfo.PlayHandle, fileName);
                if (rst != 0)
                {
                    throw new Exception("错误码：" + rst + GetErrorMessage(rst));
                }
            }catch(Exception ex)
            {
                throw new Exception("[英飞拓平台]录像失败" + Environment.NewLine + ex.Message);
            }
        }

        public void StopPlay()
        {
            try
            {
                int play = INFPlatformSDK.INF_NET_StopRealPlay(VideoInfo.PlayInfo.PlayHandle);
                if (play != 0)
                {
                    throw new Exception("错误码：" + play+GetErrorMessage(play));
                }
            }
            catch (Exception ex)
            {
                throw new Exception("[英飞拓平台]设备停止预览失败" + Environment.NewLine + ex.Message);
            }
        }

        public void StopRecord()
        {
            try
            {
                int rst = INFPlatformSDK.INF_PLAYCTRL_StopLocalRecord(VideoInfo.PlayInfo.PlayHandle);
                if (rst != 0)
                {
                    throw new Exception("错误码：" + rst + GetErrorMessage(rst));
                }
            }catch(Exception ex)
            {
                throw new Exception("[英飞拓平台]停止录像失败" + Environment.NewLine + ex.Message);
            }
        }

        string GetErrorMessage(int errId)
        {
            string result = "";
            switch (errId)
            {
                case 6000:
                    result = "连接强制关闭";
                    break;
                case 6001:
                    result = "连接超时";
                    break;
                case 6002:
                    result = "连接关闭";
                    break;
                case 6003:
                    result = "接收数据出错";
                    break;
                case 6004:
                    result = "回放出错";
                    break;
                case 6005:
                    result = "请求视频出错";
                    break;
                case 6006:
                    result = "音视频参数改变";
                    break;
                case 6007:
                    result = "视频连接满";
                    break;
                case 6008:
                    result = "视频丢失";
                    break;
                case 6009:
                    result = "无视频";
                    break;
                case 6010:
                    result = "不支持";
                    break;
                case 6011:
                    result = "无权限";
                    break;
                case 6012:
                    result = "前端设备不可达";
                    break;
                case 6013:
                    result = "视频下载出错";
                    break;
                case 0:
                    result = "无错误";
                    break;
                case 1:
                    result = "一般错误";
                    break;
                case 2:
                    result = "未知错误";
                    break;
                case 3:
                    result = "无效句柄";
                    break;
                case 4:
                    result = "无效参数";
                    break;
                case 5:
                    result = "未初始化";
                    break;
                case 6:
                    result = "客户连接太多，服务器忙";
                    break;
                case 7:
                    result = "超时";
                    break;
                case 8:
                    result = "不支持该命令";
                    break;
                case 9:
                    result = "接收数据异常";
                    break;
                case 102:
                    result = "连接被拒绝";
                    break;
                case 103:
                    result = "主机不可达，一般出现于客户端拔网线时的连接结果";
                    break;
                case 104:
                    result = "网络关闭";
                    break;
                case 105:
                    result = "网络不可达";
                    break;
                case 106:
                    result = "网络被复位";
                    break;
                case 107:
                    result = "连接被强行关闭";
                    break;
                case 108:
                    result = "连接被复位";
                    break;
                case 109:
                    result = "网络地址已被使用，出现于绑定端口失败时";
                    break;
                case 110:
                    result = "连接未建立";
                    break;
                case 111:
                    result = "一般网络错误";
                    break;
                case 0xA001:
                    result = "TCP端口正在被侦听";
                    break;
                case 0xA002:
                    result = "端口已经被占用";
                    break;
                case 0xA003:
                    result = "找不到侦听的TCP端口";
                    break;
                case 0xA004:
                    result = "找不到对应的SOCKET";
                    break;
                case 0xA005:
                    result = "SOCKET关联对象已经释放";
                    break;
                case 0xA006:
                    result = "回调函数指针为空";
                    break;
                case 0xA007:
                    result = "回调上下文指针为空";
                    break;
                case 201:
                    result = "用户名错误";
                    break;
                case 202:
                    result = "密码错误";
                    break;
                case 203:
                    result = "无权限";
                    break;
                case 204:
                    result = "已经登录";
                    break;
                case 205:
                    result = "用户过期";
                    break;
                case 206:
                    result = "未注册";
                    break;
                case 207:
                    result = "CMS处于备用状态";
                    break;
                case 208:
                    result = "备用CMS登录时IP与主用CMS中配置的冗余IP不匹配";
                    break;
                case 209:
                    result = "客户端登录CMS时与CMS冗余信息不匹配";
                    break;
                case 210:
                    result = "端口错误，只能为9981";
                    break;
                case 211:
                    result = "SERVER IP格式错误";
                    break;
                case 301:
                    result = "文件不存在";
                    break;
                case 302:
                    result = "定位失败，偏移超出文件范围";
                    break;
                case 303:
                    result = "转换文件类型不存在";
                    break;
                case 401:
                    result = "数据库未连接";
                    break;
                default:
                    break;
            }
            return string.IsNullOrEmpty(result)?result:Environment.NewLine+ "错误信息："+result;
        }
        
        
        
        public void CamerControl(Direction direction, uint step, bool stop = false)
        {
            throw new NotImplementedException();
        }

        public List<Video> GetVideoList()
        {
            throw new NotImplementedException("[英飞拓平台]SDK不支持获取视频列表");
        }
    }
}
