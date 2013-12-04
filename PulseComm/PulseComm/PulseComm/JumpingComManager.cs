using System;
using System.Collections.Generic;
using System.Text;

namespace PulseComm
{
    public class JumpingComManager
    {
        StringBuilder _receiveDataPool = new StringBuilder();
        public void PushData(string data)
        {
            _receiveDataPool.Append(data);
        }
        private void _AnalyzeReceivedData()
        {

        }

        private CommHexInfo _GetHexInfoObj()
        {
            if (_receiveDataPool.Length >= 60 &&  CommOldHexInfo.TryParse(_receiveDataPool.ToString().Substring(0, 60)))
            {
               return new CommOldHexInfo();
            }
            return null;
        }
        //private void _PickSample()
        //{
        //    int length = _receiveDataPool.Length;
        //    if()
        //}
        
    }
}
