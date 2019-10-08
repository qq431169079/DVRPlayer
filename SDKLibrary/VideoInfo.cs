using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SDKLibrary
{
    /// <summary>
    /// 视频类型
    /// </summary>
    public enum VideoType
    {
        /// <summary>
        /// 海康
        /// </summary>
        Haikang = 0,
        /// <summary>
        /// 大华
        /// </summary>
        Dahua = 1,
        /// <summary>
        /// 兴视捷
        /// </summary>
        Xinshijie = 3,
        /// <summary>
        /// 雄迈
        /// </summary>
        XiongMai = 4,
        /// <summary>
        /// 上海诚丰
        /// </summary>
        ShangHaiChengFeng = 5,
        /// <summary>
        /// 平台接入-英飞拓
        /// </summary>
        Platform_Infinova = 101,
        /// <summary>
        /// 平台接入-海康
        /// </summary>
        Platform_Hik = 102
    }

    /// <summary>
    /// 视频实体
    /// </summary>
    public class Video
    {
        /// <summary>
        /// 视频类型
        /// </summary>
        public VideoType Type { get; set; }

        /// <summary>
        /// 视频的uuid，平台接入使用（同一个视频，每次登录都会改变）
        /// </summary>
        public string UUID { get; set; }

        /// <summary>
        /// 视频所属设备id，平台接入使用
        /// </summary>
        public string DeviceID { get; set; }

        /// <summary>
        /// 视频id标识，与SDK无关
        /// </summary>
        public string Id { get; set; }

        /// <summary>
        /// 视频名称
        /// </summary>
        public string VideoName { get; set; }
        
        /// <summary>
        /// 视频登录信息
        /// </summary>
        public LoginInfo LoginInfo { get; set; }

        /// <summary>
        /// 视频播放过程信息
        /// </summary>
        public PlayInfo PlayInfo { get; set; }

        /// <summary>
        /// 视频通道号
        /// </summary>
        public int Channel { get; set; }

        /// <summary>
        /// 摄像头是否是球机
        /// </summary>
        public bool IsPTZ { get; set; }
        
        public override string ToString()
        {
            return VideoName;
        }
    }

    /// <summary>
    /// 视频/平台登录信息
    /// </summary>
    public class LoginInfo
    {
        public string Ip { get; set; }
        public int Port { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
    }

    /// <summary>
    /// 播放过程信息-一般是平台使用
    /// </summary>
    public class PlayInfo
    {
        /// <summary>
        /// 播放句柄，SDK播放成功后返回，截图、录像和停止播放时用到
        /// </summary>
        public int PlayHandle { get; set; }
        /// <summary>
        /// 登录句柄，SDK登录成功后返回
        /// </summary>
        public int LoginHandle { get; set; }
    }


}
