using System;
using System.Collections.Generic;
using System.Text;

namespace PulseComm
{
    public class CommHexInfo
    {
        protected int B0 { get; set; }
        protected int B1 { get; set; }
        protected int B2 { get; set; }
        protected int B3 { get; set; }
        protected int B4 { get; set; }
        protected int B5 { get; set; }
        protected int B6 { get; set; }
        protected int B7 { get; set; }
        protected int B8 { get; set; }
        private string _msg;
        //Convert.ToInt32(”FF”, 16)
        public virtual bool IsValidate
        {
            get
            {
                if (string.IsNullOrEmpty(ReceiveData) || ReceiveData.Length != 18)
                {
                    _msg = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 接收到数据：" + ReceiveData
                               + "      接收到数据不是18位";
                    return false;
                }
                _ParseData();
                if (B0 == 0xA7 && B8 == 0xA8 && B7 == (B1 + B2 + B3 + B4 + B5 + B6) % 100)
                {
                    _msg = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 接收到数据：" + ReceiveData
                                + "      中心位置 = " + GetCenterPosi()
                                + "mm     测量外径 = " + GetDiameter() + "mm" + "";
                    return true;
                }
                else
                {
                    _msg = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 接收到数据：" + ReceiveData
                                + "      校验位出错";
                    return false;
                }
            }
        }

        public virtual double GetCenterPosi()
        {
            int sign = 1;
            if (B1 / 80 == 1)
                sign = -1;
            return sign * (B1 % 10 * 10 + B2 / 10 + B2 % 10 * 01 + B3 * 0.001);
        }
        public virtual double GetDiameter()
        {
            return B4 * 10 + B5 / 10 + B5 % 10 * 0.1 + B6 * 0.001;
        }
        public virtual string ReceiveData { get; set; }

        protected virtual void _ParseData()
        {
            B0 = Convert.ToInt32(ReceiveData.Substring(0, 2), 16);
            B1 = Convert.ToInt32(ReceiveData.Substring(2, 2), 10);
            B2 = Convert.ToInt32(ReceiveData.Substring(4, 2), 10);
            B3 = Convert.ToInt32(ReceiveData.Substring(6, 2), 10);
            B4 = Convert.ToInt32(ReceiveData.Substring(8, 2), 10);
            B5 = Convert.ToInt32(ReceiveData.Substring(10, 2), 10);
            B6 = Convert.ToInt32(ReceiveData.Substring(12, 2), 10);
            B7 = Convert.ToInt32(ReceiveData.Substring(14, 2), 10);
            B8 = Convert.ToInt32(ReceiveData.Substring(16, 2), 16);
        }
        public virtual string GetMessage()
        {

            return _msg;
        }
    }
}
