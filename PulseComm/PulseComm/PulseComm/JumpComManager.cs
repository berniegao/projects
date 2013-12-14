using System;
using System.Collections.Generic;
using System.Text;

namespace PulseComm
{
    public class JumpComManager
    {
        private string _remainedData = string.Empty;
        private bool _probingPhase = true;
        private MachineVersion _machineVersion;
        private JumpSampling _sampling;

        public event EventHandler<EventArgs> onMessagePopup;

        public JumpComManager()
        {
            _sampling = new JumpSampling();
        }

        public void PushData(string data)
        {
            _remainedData += data;
            ProcessData();
        }

        private void ProcessData()
        {
            if (_probingPhase)
                return;
           
                    _sampling.AddSample(info);
        }

        private CommHexInfo NewCommHexInfo
        {
            get
            {
                return new CommHexInfo();
            }
        }



        enum MachineVersion
        {
            Old,
            New
        }
    }
}
