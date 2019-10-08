using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SDKLibrary
{
    public interface IPlugin
    {

        #region 属性
        /// <summary>
        /// 插件类型
        /// </summary>
        PluginType PluginType { get; set; }

        /// <summary>
        /// 平台SDK，平台类型时有效，在初始化时指定
        /// </summary>
        ISDK PlatformSDK { get; set; }
        #endregion

        #region 方法

        /// <summary>
        /// 开始播放
        /// </summary>
        /// <param name="ip">登录ip</param>
        /// <param name="port">登录端口</param>
        /// <param name="channel">实际通道号</param>
        /// <param name="username">登录用户名</param>
        /// <param name="password">登录密码</param>
        /// <param name="uuid">视频uuid，部分平台播放使用</param>
        /// <param name="playerindex">播放器id,1-4,0为自动选择</param>
        void StartPlay(int videotype,string ip, int port, int channel, string username, string password, string uuid,int playerindex=0);

        /// <summary>
        /// 视频截图并保存到文件
        /// </summary>
        /// <param name="playerindex">播放器id，1-4，0为当前激活的播放器，非必填</param>
        /// <returns>返回保存文件的文件名</returns>
        string ScreenShot(int playerindex = 0);

        /// <summary>
        /// 截图并返回图片Base64编码
        /// </summary>
        /// <param name="playerindex">播放器id，1-4，0为自动选择，非必填</param>
        /// <returns></returns>
        string ScreenShot_Base64(int playerindex = 0);

        /// <summary>
        /// 云台控制
        /// </summary>
        /// <param name="direction">转动方向</param>
        /// <param name="step">步长，1-9，建议4</param>
        /// <param name="stop">是否停止，默认为否（即启动）</param>
        /// <param name="playerindex">播放器id，1-4，默认为0（当前激活的）</param>
        void CammerControl(int direction, uint step, bool stop=false,int playerindex=0);
        
        /// <summary>
        /// 退出插件，释放资源
        /// </summary>
        void Release();

        /// <summary>
        /// 获取视频列表
        /// </summary>
        /// <returns>返回json格式的video类型列表</returns>
        string GetVideoList();

        List<Video> GetListVideo();

        #endregion
    }

    /// <summary>
    /// 插件类型，初始化插件时指定
    /// </summary>
    public enum PluginType
    {
        /// <summary>
        /// 直连
        /// </summary>
        Direct_Connection_Plugin=0,
        /// <summary>
        /// 平台连接
        /// </summary>
        PlatForm_Connection_Plugin=1
    }
}
