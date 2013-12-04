namespace PulseComm
{
    partial class Main
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.serialPort1 = new System.IO.Ports.SerialPort(this.components);
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.chBoxIsHex = new System.Windows.Forms.CheckBox();
            this.comboBoxParity = new System.Windows.Forms.ComboBox();
            this.btnOpenSerialPort = new System.Windows.Forms.Button();
            this.LBPortState = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.ComboBoxPortNum = new System.Windows.Forms.ComboBox();
            this.comboBoxBondRate = new System.Windows.Forms.ComboBox();
            this.btnCloseSerialPort = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBoxStopBit = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.comboBoxDateBits = new System.Windows.Forms.ComboBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.txtBoxMSG = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.checkBoxTrimSpace = new System.Windows.Forms.CheckBox();
            this.btnSend = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.checkBox2 = new System.Windows.Forms.CheckBox();
            this.button1 = new System.Windows.Forms.Button();
            this.txtBoxSend = new System.Windows.Forms.TextBox();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // serialPort1
            // 
            this.serialPort1.DataReceived += new System.IO.Ports.SerialDataReceivedEventHandler(this.serialPort1_DataReceived);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.chBoxIsHex);
            this.groupBox2.Controls.Add(this.comboBoxParity);
            this.groupBox2.Controls.Add(this.btnOpenSerialPort);
            this.groupBox2.Controls.Add(this.LBPortState);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.ComboBoxPortNum);
            this.groupBox2.Controls.Add(this.comboBoxBondRate);
            this.groupBox2.Controls.Add(this.btnCloseSerialPort);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.comboBoxStopBit);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.comboBoxDateBits);
            this.groupBox2.Location = new System.Drawing.Point(7, 2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(880, 71);
            this.groupBox2.TabIndex = 24;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "设置";
            // 
            // chBoxIsHex
            // 
            this.chBoxIsHex.AutoSize = true;
            this.chBoxIsHex.Checked = true;
            this.chBoxIsHex.CheckState = System.Windows.Forms.CheckState.Checked;
            this.chBoxIsHex.Location = new System.Drawing.Point(532, 21);
            this.chBoxIsHex.Name = "chBoxIsHex";
            this.chBoxIsHex.Size = new System.Drawing.Size(74, 17);
            this.chBoxIsHex.TabIndex = 18;
            this.chBoxIsHex.Text = "十六进制";
            this.chBoxIsHex.UseVisualStyleBackColor = true;
            // 
            // comboBoxParity
            // 
            this.comboBoxParity.FormattingEnabled = true;
            this.comboBoxParity.Items.AddRange(new object[] {
            "Even",
            "Mark",
            "None",
            "Odd",
            "Space"});
            this.comboBoxParity.Location = new System.Drawing.Point(458, 18);
            this.comboBoxParity.Name = "comboBoxParity";
            this.comboBoxParity.Size = new System.Drawing.Size(59, 21);
            this.comboBoxParity.TabIndex = 11;
            // 
            // btnOpenSerialPort
            // 
            this.btnOpenSerialPort.Location = new System.Drawing.Point(612, 16);
            this.btnOpenSerialPort.Name = "btnOpenSerialPort";
            this.btnOpenSerialPort.Size = new System.Drawing.Size(121, 25);
            this.btnOpenSerialPort.TabIndex = 2;
            this.btnOpenSerialPort.Text = "打开";
            this.btnOpenSerialPort.UseVisualStyleBackColor = true;
            this.btnOpenSerialPort.Click += new System.EventHandler(this.btnOpenSerialPort_Click);
            // 
            // LBPortState
            // 
            this.LBPortState.AutoSize = true;
            this.LBPortState.ForeColor = System.Drawing.SystemColors.ActiveCaption;
            this.LBPortState.Location = new System.Drawing.Point(57, 45);
            this.LBPortState.Name = "LBPortState";
            this.LBPortState.Size = new System.Drawing.Size(46, 13);
            this.LBPortState.TabIndex = 6;
            this.LBPortState.Text = "NotNow";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(11, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(34, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "状态:";
            // 
            // ComboBoxPortNum
            // 
            this.ComboBoxPortNum.FormattingEnabled = true;
            this.ComboBoxPortNum.Location = new System.Drawing.Point(60, 18);
            this.ComboBoxPortNum.Name = "ComboBoxPortNum";
            this.ComboBoxPortNum.Size = new System.Drawing.Size(49, 21);
            this.ComboBoxPortNum.TabIndex = 3;
            // 
            // comboBoxBondRate
            // 
            this.comboBoxBondRate.FormattingEnabled = true;
            this.comboBoxBondRate.Items.AddRange(new object[] {
            "1200",
            "2400",
            "4800",
            "9600",
            "19200"});
            this.comboBoxBondRate.Location = new System.Drawing.Point(257, 18);
            this.comboBoxBondRate.Name = "comboBoxBondRate";
            this.comboBoxBondRate.Size = new System.Drawing.Size(58, 21);
            this.comboBoxBondRate.TabIndex = 15;
            // 
            // btnCloseSerialPort
            // 
            this.btnCloseSerialPort.Enabled = false;
            this.btnCloseSerialPort.Location = new System.Drawing.Point(739, 16);
            this.btnCloseSerialPort.Name = "btnCloseSerialPort";
            this.btnCloseSerialPort.Size = new System.Drawing.Size(121, 25);
            this.btnCloseSerialPort.TabIndex = 7;
            this.btnCloseSerialPort.Text = "关闭";
            this.btnCloseSerialPort.UseVisualStyleBackColor = true;
            this.btnCloseSerialPort.Click += new System.EventHandler(this.btnCloseSerialPort_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "串口号:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(204, 22);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(46, 13);
            this.label6.TabIndex = 14;
            this.label6.Text = "波特率:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(321, 22);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(46, 13);
            this.label5.TabIndex = 13;
            this.label5.Text = "停止位:";
            // 
            // comboBoxStopBit
            // 
            this.comboBoxStopBit.FormattingEnabled = true;
            this.comboBoxStopBit.Items.AddRange(new object[] {
            "1",
            "1.5",
            "2"});
            this.comboBoxStopBit.Location = new System.Drawing.Point(374, 18);
            this.comboBoxStopBit.Name = "comboBoxStopBit";
            this.comboBoxStopBit.Size = new System.Drawing.Size(38, 21);
            this.comboBoxStopBit.TabIndex = 12;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(109, 22);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(46, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "数据位:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(418, 22);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(34, 13);
            this.label4.TabIndex = 10;
            this.label4.Text = "校验:";
            // 
            // comboBoxDateBits
            // 
            this.comboBoxDateBits.FormattingEnabled = true;
            this.comboBoxDateBits.Items.AddRange(new object[] {
            "5",
            "6",
            "7",
            "8"});
            this.comboBoxDateBits.Location = new System.Drawing.Point(160, 18);
            this.comboBoxDateBits.Name = "comboBoxDateBits";
            this.comboBoxDateBits.Size = new System.Drawing.Size(39, 21);
            this.comboBoxDateBits.TabIndex = 9;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.txtBoxMSG);
            this.groupBox3.Location = new System.Drawing.Point(7, 79);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(880, 370);
            this.groupBox3.TabIndex = 27;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "采样";
            // 
            // txtBoxMSG
            // 
            this.txtBoxMSG.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.txtBoxMSG.Location = new System.Drawing.Point(8, 19);
            this.txtBoxMSG.Multiline = true;
            this.txtBoxMSG.Name = "txtBoxMSG";
            this.txtBoxMSG.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txtBoxMSG.Size = new System.Drawing.Size(868, 345);
            this.txtBoxMSG.TabIndex = 0;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.checkBoxTrimSpace);
            this.groupBox1.Controls.Add(this.btnSend);
            this.groupBox1.Controls.Add(this.checkBox1);
            this.groupBox1.Controls.Add(this.checkBox2);
            this.groupBox1.Controls.Add(this.button1);
            this.groupBox1.Controls.Add(this.txtBoxSend);
            this.groupBox1.Location = new System.Drawing.Point(7, 309);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(880, 140);
            this.groupBox1.TabIndex = 28;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "发送窗口";
            this.groupBox1.Visible = false;
            // 
            // checkBoxTrimSpace
            // 
            this.checkBoxTrimSpace.AutoSize = true;
            this.checkBoxTrimSpace.Location = new System.Drawing.Point(89, 120);
            this.checkBoxTrimSpace.Name = "checkBoxTrimSpace";
            this.checkBoxTrimSpace.Size = new System.Drawing.Size(98, 17);
            this.checkBoxTrimSpace.TabIndex = 7;
            this.checkBoxTrimSpace.Text = "去掉所有空格";
            this.checkBoxTrimSpace.UseVisualStyleBackColor = true;
            this.checkBoxTrimSpace.Visible = false;
            // 
            // btnSend
            // 
            this.btnSend.Enabled = false;
            this.btnSend.Location = new System.Drawing.Point(8, 115);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(75, 25);
            this.btnSend.TabIndex = 5;
            this.btnSend.Text = "Send";
            this.btnSend.UseVisualStyleBackColor = true;
            this.btnSend.Visible = false;
            this.btnSend.Click += new System.EventHandler(this.btnSend_Click);
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(151, 216);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(98, 17);
            this.checkBox1.TabIndex = 4;
            this.checkBox1.Text = "去掉所有空格";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // checkBox2
            // 
            this.checkBox2.AutoSize = true;
            this.checkBox2.Location = new System.Drawing.Point(102, 213);
            this.checkBox2.Name = "checkBox2";
            this.checkBox2.Size = new System.Drawing.Size(48, 17);
            this.checkBox2.TabIndex = 3;
            this.checkBox2.Text = "HEX";
            this.checkBox2.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(6, 209);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 25);
            this.button1.TabIndex = 2;
            this.button1.Text = "Send";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // txtBoxSend
            // 
            this.txtBoxSend.Location = new System.Drawing.Point(6, 22);
            this.txtBoxSend.Multiline = true;
            this.txtBoxSend.Name = "txtBoxSend";
            this.txtBoxSend.Size = new System.Drawing.Size(868, 85);
            this.txtBoxSend.TabIndex = 1;
            this.txtBoxSend.Visible = false;
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(894, 461);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Main";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "跳动通讯";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.IO.Ports.SerialPort serialPort1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox comboBoxParity;
        private System.Windows.Forms.Button btnOpenSerialPort;
        private System.Windows.Forms.ComboBox ComboBoxPortNum;
        private System.Windows.Forms.ComboBox comboBoxBondRate;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label LBPortState;
        private System.Windows.Forms.ComboBox comboBoxStopBit;
        private System.Windows.Forms.Button btnCloseSerialPort;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox comboBoxDateBits;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txtBoxMSG;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnSend;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.CheckBox checkBox2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox txtBoxSend;
        private System.Windows.Forms.CheckBox chBoxIsHex;
        private System.Windows.Forms.CheckBox checkBoxTrimSpace;
    }
}

