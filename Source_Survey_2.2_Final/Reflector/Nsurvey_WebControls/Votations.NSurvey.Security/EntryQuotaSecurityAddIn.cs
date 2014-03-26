namespace Votations.NSurvey.Security
{
//    using FreeTextBoxControls;
    using CKEditor;
    using Microsoft.VisualBasic;
    using System;
    using System.Collections.Specialized;
    using System.Runtime.CompilerServices;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Votations.NSurvey.BusinessRules;
    using Votations.NSurvey.Data;
    using Votations.NSurvey.DataAccess;
    using Votations.NSurvey.Resources;

    /// <summary>
    /// Checks if the quota that were set are over or if 
    /// new entries are still allowed
    /// </summary>
    public class EntryQuotaSecurityAddIn : IWebSecurityAddIn
    {
        private int _addInDbId;
        private string _description;
        private bool _disabled;
        private Label _entryCount = new Label();
        private string _languageCode;
        private TextBox _maxEntryTextBox;

//      private FreeTextBox _maxReachedMessage;
        private CKEditor.NET.CKEditorControl _maxReachedMessage;

        private int _order;
        private Table _passwordTable = new Table();
        private int _surveyId;
        private StateBag _viewState;

        public event UserAuthenticatedEventHandler UserAuthenticated;

        /// <summary>
        /// Build a row with the given control and style
        /// </summary>
        /// <param name="child"></param>
        /// <param name="rowStyle"></param>
        /// <param name="labelText"></param>
        /// <returns></returns>
        protected TableRow BuildRow(Control child, string labelText, Style rowStyle)
        {
            TableRow row = new TableRow();
            TableCell cell = new TableCell();
            if (labelText != null)
            {
                Label label = new Label();
                label.ControlStyle.Font.Bold = true;
                label.Text = labelText;
                cell.Controls.Add(label);
                cell.Wrap = false;
                if (child == null) cell.ColumnSpan = 2;
                cell.VerticalAlign = VerticalAlign.Top;
                row.Cells.Add(cell);
         
                cell = new TableCell();
            }
            else
            {
                cell.ColumnSpan = 2;
            }
            if (child != null)
            {
                cell.Controls.Add(child);
            }
            row.Cells.Add(cell);
            row.ControlStyle.CopyFrom(rowStyle);
            return row;
        }

        /// <summary>
        /// Can return keys/values of the custom 
        /// stored data during the ProcessVoterData. 
        /// At this time these data are retrieved to
        /// be shown in individual reports and for results export
        /// </summary>
        public NameValueCollection GetAddInVoterData(int voterId)
        {
            return null;
        }

        /// <summary>
        /// Must create and return the control 
        /// that will show the administration interface
        /// If none is available returns null
        /// </summary>
        public Control GetAdministrationInterface(Style controlStyle)
        {
            Table table = new Table();
            table.ControlStyle.CopyFrom(controlStyle);
            table.Width = Unit.Percentage(90);

            int maxEntries = 0;
            int entryCount = 0;
            string maxReachedMessage = ResourceManager.GetString("QuotaReachedMessage", this.LanguageCode);
 
            SurveyEntryQuotaData quotaSettings = new Surveys().GetQuotaSettings(this.SurveyId);
            if (quotaSettings.SurveyEntryQuotas.Rows.Count > 0)
            {
                maxEntries = quotaSettings.SurveyEntryQuotas[0].MaxEntries;
                entryCount = quotaSettings.SurveyEntryQuotas[0].EntryCount;
                maxReachedMessage = quotaSettings.SurveyEntryQuotas[0].MaxReachedMessage;
            }

            this._entryCount.Text = entryCount.ToString();


            table.Rows.Add(this.BuildRow(this._entryCount, ResourceManager.GetString("EntriesNumberLabel", this.LanguageCode), controlStyle));
            this._maxEntryTextBox = new TextBox();
            this._maxEntryTextBox.Text = maxEntries.ToString();
            this._maxEntryTextBox.Width = Unit.Pixel(40);

            table.Rows.Add(this.BuildRow(this._maxEntryTextBox, ResourceManager.GetString("MaxQuotaEntriesLabel", this.LanguageCode), controlStyle));

            //OLD FreeTextbox Code:
            //this._maxReachedMessage = new FreeTextBox();
            //this._maxReachedMessage.Text = maxReachedMessage;
            //this._maxReachedMessage.ToolbarStyleConfiguration = ToolbarStyleConfiguration.Office2003;
            //this._maxReachedMessage.Width = Unit.Pixel(550);
            //this._maxReachedMessage.Height = Unit.Pixel(250);
            //this._maxReachedMessage.BreakMode = BreakMode.LineBreak;

            //this._maxReachedMessage.AutoGenerateToolbarsFromString = true;
            //this._maxReachedMessage.SupportFolder = "~/FreeTextBox/";
            //this._maxReachedMessage.UseToolbarBackGroundImage = true;
            //this._maxReachedMessage.EnableToolbars = true;
            //this._maxReachedMessage.EnableHtmlMode = true;
            //this._maxReachedMessage.ImageGalleryUrl = "ftb.imagegallery.aspx?rif=~/images/&cif=~/images/";
            //this._maxReachedMessage.FormatHtmlTagsToXhtml = true;
            //this._maxReachedMessage.RemoveServerNameFromUrls = false;
            //this._maxReachedMessage.ConvertHtmlSymbolsToHtmlCodes = true;
            //this._maxReachedMessage.ToolbarLayout = " Preview, SelectAll, EditStyle, ParagraphMenu, FontFacesMenu, FontSizesMenu, FontForeColorsMenu, FontForeColorPicker, FontBackColorsMenu | FontBackColorPicker, Bold, Italic, Underline, Strikethrough, Superscript, Subscript, InsertImageFromGallery, CreateLink, Unlink, RemoveFormat, JustifyLeft, JustifyRight, JustifyCenter, JustifyFull, BulletedList | NumberedList, Indent, Outdent, Cut, Copy, Paste, Delete, Undo, Redo, Print, Save, ieSpellCheck, StyleMenu, SymbolsMenu, InsertHtmlMenu, InsertRule | InsertDate, InsertTime, WordClean, InsertImage, InsertTable, EditTable, InsertTableRowBefore, InsertTableRowAfter, DeleteTableRow, DeleteTableColumn, InsertTableColumnBefore, InsertTableColumnAfter | InsertForm, InsertForm, InsertTextBox, InsertTextArea, InsertRadioButton, InsertCheckBox, InsertDropDownList, InsertButton, InsertDiv";

           // table.Rows.Add(this.BuildRow(this._maxReachedMessage, ResourceManager.GetString("QuotaReachedLabel", this.LanguageCode), controlStyle));
            table.Rows.Add(this.BuildRow(null, ResourceManager.GetString("QuotaReachedLabel", this.LanguageCode), controlStyle));

            //ckeditor row:
            this._maxReachedMessage = new CKEditor.NET.CKEditorControl();
            this._maxReachedMessage.config.enterMode = CKEditor.NET.EnterMode.BR;
            this._maxReachedMessage.Width = Unit.Pixel(550);
            this._maxReachedMessage.config.skin = "moonocolor";
            this._maxReachedMessage.Text = maxReachedMessage;

            table.Rows.Add(this.BuildRow(this._maxReachedMessage, null, controlStyle));
            
            PlaceHolder child = new PlaceHolder();

            Button button = new Button();
            button.Text = ResourceManager.GetString("ApplyChangesButton", this.LanguageCode);
            button.Click += new EventHandler(this.OnUpdateClick);
            child.Controls.Add(button);

            Button button2 = new Button();
            button2.Text = ResourceManager.GetString("ResetQuotaEntriesButton", this.LanguageCode);
            button2.Click += new EventHandler(this.OnResetClick);
            child.Controls.Add(button2);

            table.Rows.Add(this.BuildRow(child, null, controlStyle));

            return table;
        }
        private string GetErrorMessage(string msgname)
        {
            return "<span style=\"Color:Red;\" >" + msgname + @"</span>";
        }
        /// <summary>
        /// Must create and return the control 
        /// that will show the logon interface.
        /// If none is available returns null
        /// </summary>
        public Control GetLoginInterface(Style controlStyle)
        {
            SurveyEntryQuotaData quotaSettings = new Surveys().GetQuotaSettings(this.SurveyId);
            if (quotaSettings.SurveyEntryQuotas.Rows.Count > 0)
            {
                return new LiteralControl(GetErrorMessage(quotaSettings.SurveyEntryQuotas[0].MaxReachedMessage));
            }
            return new LiteralControl( GetErrorMessage( ResourceManager.GetString("QuotaReachedMessage", this.LanguageCode)));
        }

        /// <summary>
        /// Method called once an addin has been added to a survey
        /// Can be used to set default values, settings for the addin
        /// </summary>
        public void InitOnSurveyAddition()
        {
            SurveyEntryQuotaData surveyQuota = new SurveyEntryQuotaData();
            SurveyEntryQuotaData.SurveyEntryQuotasRow row = surveyQuota.SurveyEntryQuotas.NewSurveyEntryQuotasRow();
            row.SurveyId = this.SurveyId;
            row.MaxEntries = 0x3e8;
            row.EntryCount = 0;
            row.MaxReachedMessage = ResourceManager.GetString("QuotaReachedMessage", this.LanguageCode);
            surveyQuota.SurveyEntryQuotas.AddSurveyEntryQuotasRow(row);
            new Survey().UpdateQuotaSettings(surveyQuota);
        }

        /// <summary>
        /// Check if the current survey
        /// has enough quota left to allow a new entry
        /// </summary>
        public bool IsAuthenticated()
        {
            SurveyEntryQuotaData quotaSettings = new Surveys().GetQuotaSettings(this.SurveyId);
            return ((quotaSettings.SurveyEntryQuotas.Rows.Count > 0) && (quotaSettings.SurveyEntryQuotas[0].EntryCount < quotaSettings.SurveyEntryQuotas[0].MaxEntries));
        }

        protected virtual void OnResetClick(object sender, EventArgs e)
        {
            this._entryCount.Text = "0";
            new Survey().ResetQuotaEntries(this.SurveyId);
        }

        protected virtual void OnUpdateClick(object sender, EventArgs e)
        {
            if (Information.IsNumeric(this._maxEntryTextBox.Text))
            {
                SurveyEntryQuotaData surveyQuota = new SurveyEntryQuotaData();
                SurveyEntryQuotaData.SurveyEntryQuotasRow row = surveyQuota.SurveyEntryQuotas.NewSurveyEntryQuotasRow();
                row.SurveyId = this.SurveyId;
                row.MaxEntries = int.Parse(this._maxEntryTextBox.Text);
                row.MaxReachedMessage = this._maxReachedMessage.Text;
                surveyQuota.SurveyEntryQuotas.AddSurveyEntryQuotasRow(row);
                new Survey().UpdateQuotaSettings(surveyQuota);
            }
        }

        /// <summary>
        /// Method to handle voter data once it has been stored in the database
        /// </summary>
        /// <param name="voter">Voter information as saved in the database and its answers</param>
        public void ProcessVoterData(VoterAnswersData voter)
        {
            new Survey().IncreaseQuotaEntries(this.SurveyId);
        }

        /// <summary>
        /// Method called once an addin has been remove from a survey
        /// Can be used to remove useless settings for the addin
        /// </summary>
        public void UnInitOnSurveyRemoval()
        {
            new Survey().DeleteQuotaSettings(this.SurveyId);
        }

        public int AddInDbId
        {
            get
            {
                return this._addInDbId;
            }
            set
            {
                this._addInDbId = value;
            }
        }

        public string Description
        {
            get
            {
                return this._description;
            }
            set
            {
                this._description = value;
            }
        }

        public bool Disabled
        {
            get
            {
                return this._disabled;
            }
            set
            {
                this._disabled = value;
            }
        }

        /// <summary>
        /// Contains the current user language
        /// choice in a multi-language survey
        /// </summary>
        public string LanguageCode
        {
            get
            {
                return this._languageCode;
            }
            set
            {
                this._languageCode = value;
            }
        }

        public int Order
        {
            get
            {
                return this._order;
            }
            set
            {
                this._order = value;
            }
        }

        public int SurveyId
        {
            get
            {
                return this._surveyId;
            }
            set
            {
                this._surveyId = value;
            }
        }

        public StateBag ViewState
        {
            get
            {
                return this._viewState;
            }
            set
            {
                this._viewState = value;
            }
        }
    }
}

