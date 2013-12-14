using System;
using System.Collections.Generic;
using System.Text;

namespace PulseComm
{
    public class JumpSampling
    {
        IList<CommHexInfo> _comList;
        double _max, _min;
        bool _start;
        string _msg;

        public bool IsStarted { get { return _start; } }

        public string GetMessage()
        {
            return _msg;
        }

        private void Start()
        {
            _msg = "========================== \r\n"
                + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 开始采样";
            _start = true;
            _comList = new List<CommHexInfo>();
            _max = 0;
            _min = double.MaxValue;
        }
        private void End()
        {
            _msg = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "    ---- 采样结束，跳动值为： " + GetJumpValue().ToString() + "mm \r\n";
            _start = false;
        }
        public void AddSample(CommHexInfo info)
        {
            string msg;
            bool passValidate = info.IsValidate;
            if (!passValidate)
            {
                return;
                //throw new Exception();
            }
            _comList.Add(info);
            double value = info.GetCenterPosi() + info.GetDiameter();
            if (value > _max)
                _max = value;
            if (value < _min)
                _min = value;
        }

        public double GetJumpValue()
        {
            if (this._comList == null || this._comList.Count == 0)
                return 0;
            return _max - _min;
        }
    }
}
