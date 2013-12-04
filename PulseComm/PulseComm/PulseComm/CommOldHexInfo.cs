using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace PulseComm
{
    public class CommOldHexInfo : CommHexInfoBase
    {
        private const int MINI_HIT_COUNT = 4;
        private static Regex IDLE_REGEX = new Regex("0600000000000006");
        private const int CONTENT_LENGTH = 16;

        public static Boolean TryParse(string data)
        {
            int count = IDLE_REGEX.Matches(data).Count;
            if (count >= MINI_HIT_COUNT)
                return true;
            else
                return false;
        }

        public override bool PassValidate(out string msg)
        {
            msg = string.Empty;
            bool result = false;
            if (_dataArray[0] != 06)
            {
                msg = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 接收到数据：" + _data
                               + "      起始位不是06";
                result = false;
            }
            else if (_dataHexArray[7] != (_dataHexArray[0] ^ _dataHexArray[1] ^ _dataHexArray[2] ^ _dataHexArray[3]
                ^ _dataHexArray[4] ^ _dataHexArray[5] ^ _dataHexArray[6]))
            {
                msg = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 接收到数据：" + _data
                               + "      校验位不匹配";
                result = false;
            }
            else
            {
                msg = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 接收到数据：" + _data
                                + "      中心位置 = " + GetCenterPosi()
                                + "mm     测量外径 = " + GetDiameter() + "mm" + "";
                result = true;
            }
            if (OnPopupMsg != null)
                OnPopupMsg(msg);
            return result;
        }

        public override double GetCenterPosi()
        {
            double centerPosi = 0;
            centerPosi += _dataArray[1] % 10 * 10;
            centerPosi += _dataArray[2] / 10;
            centerPosi += _dataArray[3] / 1000;
            if (_dataArray[1] / 10 == 8)
                centerPosi *= -1;
            return centerPosi;
        }

        public override double GetDiameter()
        {
            double diameter = 0;
            diameter += _dataArray[4] * 10;
            diameter += _dataArray[5] / 10;
            diameter += _dataArray[6] / 1000;
            return diameter;
        }

        protected override int _DataByteLength
        {
            get
            {
                return 8;
            }
        }
    }
}
