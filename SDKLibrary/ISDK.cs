using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SDKLibrary
{
    /// <summary>
    /// SDK封装接口
    /// </summary>
    public interface ISDK
    {
        Video VideoInfo { get; set; }

        SDKTYPE SDKType { get; }

        /// <summary>
        /// 初始化SDK
        /// </summary>
        void Init();
        
        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="logininfo">登录信息</param>
        /// <returns></returns>
        void Login(LoginInfo logininfo);

        /// <summary>
        /// 登出
        /// </summary>
        /// <returns></returns>
        void LogOut();

        /// <summary>
        /// 播放视频,通道号和uuid按需传值
        /// </summary>
        /// <param name="channel">通道号</param>
        /// <param name="uuid">uuid（部分平台）</param>
        /// <param name="handle">播放器句柄</param>
        /// <returns></returns>
        void StartPlay(IntPtr handle);

        /// <summary>
        /// 停止播放
        /// </summary>
        /// <returns></returns>
        void StopPlay();

        /// <summary>
        /// 启动录制
        /// </summary>
        /// <returns></returns>
        void StartRecord();

        /// <summary>
        /// 停止录制
        /// </summary>
        /// <returns>返回录像的物理存储路径</returns>
        void StopRecord();

        /// <summary>
        /// 截图
        /// </summary>
        /// <returns>返回图片的base64编码</returns>
        string Capture2Base64();

        /// <summary>
        /// 保存到图片文件
        /// </summary>
        /// <returns>返回图片的物理存储路径</returns>
        string Capture2Image();

        /// <summary>
        /// 云台控制
        /// </summary>
        /// <param name="direction">控制方向</param>
        /// <param name="step">步长</param>
        /// <param name="stop">停止标识，默认为启动</param>
        /// <param name="channel">要操作的视频通道号</param>
        /// <param name="uuid">要操作的视频uuid（平台）</param>
        void CamerControl(Direction direction, uint step,bool stop=false);
        
        /// <summary>
        /// 获取平台视频列表（部分平台支持）
        /// </summary>
        /// <returns></returns>
        List<Video> GetVideoList();

        /// <summary>
        /// 释放资源，一般是直连需要
        /// </summary>
        void Release();
    }

    public enum SDKTYPE
    {
        /// <summary>
        /// 直连
        /// </summary>
        Direct_SDK=0,
        /// <summary>
        /// 平台
        /// </summary>
        Platform_SDK=1
    }
}
