using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SDKLibrary
{
    /// <summary>
    /// 播放器SDK接口
    /// </summary>
    public interface IPlayer
    {

        #region 属性
        /// <summary>
        /// 视频属性
        /// </summary>
        Video VideoInfo { get; set; }

        /// <summary>
        /// 当前SDK
        /// </summary>
        ISDK SDK { get; set; }

        /// <summary>
        /// SDK是否已初始化
        /// </summary>
        bool IsInit { get;  }
        /// <summary>
        /// SDK是否已登录
        /// </summary>
        bool IsLogin { get;  }
        /// <summary>
        /// 是否正在播放
        /// </summary>
        bool IsPlaying { get; }
        /// <summary>
        /// 是否正在录像
        /// </summary>
        bool IsRecording { get; }
        #endregion

        #region 方法

        /// <summary>
        /// 初始化播放器
        /// </summary>
        void Init();

        /// <summary>
        /// 登录
        /// </summary>
        /// <returns></returns>
        void Login();

        /// <summary>
        /// 登出
        /// </summary>
        /// <returns></returns>
        void LogOut();

        /// <summary>
        /// 播放视频
        /// </summary>
        /// <returns></returns>
        void StartPlay();

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
        void CamerControl(Direction direction, uint step, bool stop=false);


        /// <summary>
        /// 获取播放时间
        /// </summary>
        /// <returns></returns>
        int GetPlayingTime();

        void Release();

        #endregion

    }
}
