using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
namespace SiXi.Logs
{
    /// <summary>
    /// 写日志的类
    /// </summary>
    public class Log
    {
        #region 方法
        #region 写入日志
        /// <summary>
        /// 写入日常日志
        /// </summary>
        /// <param name="msg">要写入日志的信息</param>
        public static void WriteNomalLog(string msg)
        {
            try
            {
                //如果是同一天的话，则打开文件在末尾写入。如果不是同一天，则创建文件写入文件
                //新建文件
                //写入文件
                if (!Directory.Exists("logs"))
                {
                    Directory.CreateDirectory("logs");
                }
                //判断是否存在文件
                if (File.Exists("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Nomal.log"))
                {
                    //如果存在文件，
                    using (StreamWriter sw = new StreamWriter("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Nomal.log", true))
                    {

                        lock (sw)
                        {
                            sw.WriteLine(msg);
                            sw.Close();
                            sw.Dispose();
                        }
                    }
                    return;

                }
                using (StreamWriter sw2 = new StreamWriter("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Nomal.log", true))
                {
                    lock (sw2)
                    {
                        sw2.WriteLine(msg);
                        sw2.Close();
                        sw2.Dispose();
                    }
                }
            }
            catch (IOException ex)
            {
                //throw ex;
            }
            catch (Exception ex)
            {
                //throw ex;
            }

        }//日志文件结束

        /// <summary>
        /// 写异常日志
        /// </summary>
        /// <param name="e2">异常的实体</param>
        public static void WriteExceptionLog(Exception e2)
        {
            try
            {
                //如果是同一天的话，则打开文件在末尾写入。如果不是同一天，则创建文件写入文件
                //新建文件
                //写入文件
                if (!Directory.Exists("logs"))
                {
                    Directory.CreateDirectory("logs");
                }
                //判断是否存在文件
                if (File.Exists("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Exception.log"))
                {
                    //如果存在文件，
                    using (StreamWriter sw = new StreamWriter("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Exception.log", true))
                    {

                        lock (sw)
                        {
                            sw.WriteLine(e2.ToString());
                            sw.Close();
                            sw.Dispose();
                        }
                    }
                    return;

                }
                using (StreamWriter sw2 = new StreamWriter("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Exception.log", true))
                {
                    lock (sw2)
                    {
                        sw2.WriteLine(e2.ToString());
                        sw2.Close();
                        sw2.Dispose();
                    }
                }
            }
            catch (IOException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }//日志文件结束

        /// <summary>
        /// 写入调试日志
        /// </summary>
        /// <param name="msg">要写入日志的信息</param>
        public static void WriteDebugLog(string msg)
        {
            try
            {
                //如果是同一天的话，则打开文件在末尾写入。如果不是同一天，则创建文件写入文件
                //新建文件
                //写入文件
                if (!Directory.Exists("logs"))
                {
                    Directory.CreateDirectory("logs");
                }
                //判断是否存在文件
                if (File.Exists("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Debug.log"))
                {
                    //如果存在文件，
                    using (StreamWriter sw = new StreamWriter("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Debug.log", true))
                    {

                        lock (sw)
                        {
                            sw.WriteLine(msg);
                            sw.Close();
                            sw.Dispose();
                        }
                    }
                    return;

                }
                using (StreamWriter sw2 = new StreamWriter("logs/" + DateTime.Now.ToString("yyyyMMdd") + "Debug.log", true))
                {
                    lock (sw2)
                    {
                        sw2.WriteLine(msg);
                        sw2.Close();
                        sw2.Dispose();
                    }
                }
            }
            catch (IOException ex)
            {
                throw ex;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }//日志文件结束

        #endregion
        #endregion
    }
}