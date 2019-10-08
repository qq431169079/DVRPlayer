using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace SDKLibrary
{
    public static class Helper
    {
        /// <summary>
        /// 文件名称
        /// </summary>
        static string UniqueFileName
        {
            get
            {
                Random rnd = new Random();
                return string.Format("{0:yyyyMMddHHmmssffff}_{1}", DateTime.Now, rnd.Next(9999));
            }
        }

        /// <summary>
        /// 截图存储目录
        /// </summary>
        static string PictureFolder
        {
            get
            {
                string folder = @"C:\DVRPlayer\Capture\" + string.Format(@"{0:yyyyMMdd}\", DateTime.Now);
                if (!Directory.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }
                return folder;
            }
        }

        /// <summary>
        /// 录像存储目录
        /// </summary>
        static string VideoFolder
        {
            get
            {
                string folder = @"C:\DVRPlayer\Record\" + string.Format(@"{0:yyyyMMdd}\", DateTime.Now);
                if (!Directory.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }
                return folder;
            }
        }

        /// <summary>
        /// 录像存储目录
        /// </summary>
        public static string LogFolder
        {
            get
            {
                string folder = @"C:\DVRPlayer\Log\" + string.Format(@"{0:yyyyMMdd}\", DateTime.Now);
                if (!Directory.Exists(folder))
                {
                    Directory.CreateDirectory(folder);
                }
                return folder;
            }
        }

        /// <summary>
        /// 获取唯一的文件
        /// </summary>
        /// <param name="fileType"></param>
        /// <param name="extension"></param>
        /// <returns></returns>
        public static string UniqueFile(SaveFileType fileType, FileExtensionType extension)
        {
            string fileName = "";
            switch (fileType)
            {
                case SaveFileType.Picture:
                    fileName = PictureFolder + UniqueFileName + GetExtension(extension);
                    break;
                case SaveFileType.Video:
                    fileName = VideoFolder + UniqueFileName + GetExtension(extension);
                    break;
                case SaveFileType.Log:
                    fileName = LogFolder + UniqueFileName + GetExtension(extension);
                    break;
                default:
                    break;
            }
            return fileName;
        }

        public static string GetDateFolder(SaveFileType fileType)
        {
            switch (fileType)
            {
                case SaveFileType.Picture:
                    return PictureFolder;
                case SaveFileType.Video:
                    return VideoFolder;
                case SaveFileType.Log:
                    return LogFolder;
                default:
                    return "";
            }
        }

        static string GetExtension(FileExtensionType extension)
        {
            string result = "";
            switch (extension)
            {
                case FileExtensionType.jpg:
                    result = ".jpg";
                    break;
                case FileExtensionType.bmp:
                    result = ".bmp";
                    break;
                case FileExtensionType.png:
                    result = ".png";
                    break;
                case FileExtensionType.dav:
                    result = ".dav";
                    break;
                case FileExtensionType.mp4:
                    result = ".mp4";
                    break;
                case FileExtensionType.log:
                    result = ".log";
                    break;
                case FileExtensionType.avi:
                    result = ".avi";
                    break;
                default:
                    break;
            }
            return result;
        }

    }



    /// <summary>
    /// 存储文件类型
    /// </summary>
    public enum SaveFileType
    {
        Picture = 0,
        Video = 1,
        Log = 2
    }

    /// <summary>
    /// 文件类型
    /// </summary>
    public enum FileExtensionType
    {
        jpg = 0,
        bmp = 1,
        png = 2,
        dav = 3,
        mp4 = 4,
        log = 5,
        avi = 6
    }

    /// <summary>
    /// 云台移动方向
    /// </summary>
    public enum Direction
    {
        Up = 0,
        Down = 1,
        Left = 2,
        Right = 3,
        UpLeft = 4,
        UpRight = 5,
        DownLeft = 6,
        DownRight = 7,
        ZoomIn = 8,
        ZoomOut = 9
    }
}
