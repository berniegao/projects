using System;
using System.Collections.Generic;
using System.Text;

namespace PulseComm
{
    public abstract class CommHexInfoBase
    {
        protected static string EMPTY_DATA = "0600000000000006";
        protected string _data;
        protected int[] _dataArray;
        protected int[] _dataHexArray;
        protected bool _passValidation = false;
        public delegate void PopupMsg(String msg);
        public PopupMsg OnPopupMsg;

        protected void Init()
        {
            _dataArray = new int[_DataByteLength];
        }
        public bool IsEmpty
        {
            get
            {
                return _data == EMPTY_DATA;
            }
        }
        public string DigestData(string data)
        {
            if (data.Length < _DataByteLength * 2)
                return data;
            _data = data.Substring(0, _DataByteLength * 2);
            return data.Substring(_DataByteLength * 2 - 1, data.Length - _DataByteLength * 2);
        }
 
        protected void _ParseData()
        {
            for (int i = 0; i < _DataByteLength * 2 -1; i++)
            {
                _dataArray[i] = Convert.ToInt32(_data.Substring(i*2, 2), 10);
                _dataHexArray[i] = Convert.ToInt32(_data.Substring(i * 2, 2), 16);
            }
            _dataArray[0] = Convert.ToInt32(_data.Substring(0, 2), 16);
            _dataArray[_DataByteLength - 1] = Convert.ToInt32(_data.Substring(_DataByteLength * 2 - 2, 2), 16);
        }

        public abstract double GetCenterPosi();
        public abstract double GetDiameter();
        protected abstract int _DataByteLength { get; }
        public abstract bool PassValidate(out string msg);
    }
}
