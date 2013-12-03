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
            AnalyzeMachineType();
            ProcessData();
        }

        private void ProcessData()
        {
            if (_probingPhase)
                return;
            CommHexInfoBase info = NewCommHexInfo;
            while (string.IsNullOrEmpty( _remainedData)  && _remainedData != info.DigestData(_remainedData))
            {
                if (info.IsEmpty)
                    continue;
                else
                    _sampling.AddSample(info);
            }
        }

        private CommHexInfoBase NewCommHexInfo
        {
            get
            {
                return new CommOldHexInfo();
            }
        }


        private void AnalyzeMachineType()
        {
            if (_probingPhase && _remainedData.Length > 100 && CommOldHexInfo.TryParse(_remainedData))
            {
                _machineVersion = MachineVersion.Old;
                _probingPhase = false;
            }
        }


        enum MachineVersion
        {
            Old,
            New
        }
    }
}
