using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Votations.NSurvey.WebAdmin.UserControls;
using Votations.NSurvey;
using Votations.NSurvey.Data;
using Votations.NSurvey.DataAccess;
using Votations.NSurvey.BusinessRules;

namespace Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls
{
    public partial class SurveyPrivacy : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LocalizePage();
            SurveyMessageConditons.SurveyId = ((PageBase)Page).SurveyId;

            if (!Page.IsPostBack)
            {
                SurveyList.BindDropDown();
                // Header.SurveyId = SurveyId; 
                ((Wap)((PageBase)Page).Master).HeaderControl.SurveyId = ((PageBase)Page).SurveyId;
                BindFields();
                BindLanguages();
            }
        }


        private void LocalizePage()
        {
            PrivacySettingsTitle.Text = ((PageBase)Page).GetPageResource("PrivacySettingsTitle");
            RedirectionURLLabel.Text = ((PageBase)Page).GetPageResource("RedirectionURLLabel");
            ApplyPrivacyButton.Text = ((PageBase)Page).GetPageResource("ApplyPrivacyButton");
            ThanksMessageConditionTitle.Text = ((PageBase)Page).GetPageResource("ThanksMessageConditionTitle");
            AddNewConditionHyperLink.Text = ((PageBase)Page).GetPageResource("AddNewConditionHyperLink");
            AddNewConditionHyperLink.NavigateUrl = string.Format("{0}?surveyid={1}&menuindex={2}",
                UINavigator.MessageConditionEditorHyperLink, ((PageBase)Page).SurveyId, ((PageBase)Page).MenuIndex);
            EvaluationMessageConditionInfo.Text = ((PageBase)Page).GetPageResource("EvaluationMessageConditionInfo");
((PageBase)Page).ShowNormalMessage(MessageLabel,((PageBase)Page).GetPageResource("ThanksMessageLabel"));
            EditionLanguageLabel.Text = ((PageBase)Page).GetPageResource("EditionLanguageLabel");
        }

        /// <summary>
        /// Get the current DB data and fill 
        /// the fields with them
        /// </summary>
        private void BindFields()
        {
            SurveyList.SurveyId = ((PageBase)Page).SurveyId;
            SurveyList.BindDropDown();

            // Retrieve the survey data
            SurveyData surveyData = new Surveys().GetSurveyById(((PageBase)Page).SurveyId, LanguagesDropdownlist.SelectedValue);
            SurveyData.SurveysRow survey = surveyData.Surveys[0];

            RedirectionURLTextBox.Text = survey.RedirectionURL;
            ThankYouFreeTextBox.Text = survey.ThankYouMessage;

            SurveyMessageConditons.BindData();
        }

        private void BindLanguages()
        {
            MultiLanguageMode languageMode = new MultiLanguages().GetMultiLanguageMode(((PageBase)Page).SurveyId);
            if (languageMode != MultiLanguageMode.None)
            {
                MultiLanguageData surveyLanguages = new MultiLanguages().GetSurveyLanguages(((PageBase)Page).SurveyId);
                LanguagesDropdownlist.Items.Clear();
                foreach (MultiLanguageData.MultiLanguagesRow language in surveyLanguages.MultiLanguages)
                {
                    ListItem defaultItem = new ListItem(((PageBase)Page).GetPageResource(language.LanguageDescription), language.LanguageCode);
                    if (language.DefaultLanguage)
                    {
                        defaultItem.Value = "";
                        defaultItem.Text += " " + ((PageBase)Page).GetPageResource("LanguageDefaultText");
                    }

                    LanguagesDropdownlist.Items.Add(defaultItem);
                }

                LanguagesDropdownlist.Visible = true;
                EditionLanguageLabel.Visible = true;
            }
            else
            {
                LanguagesDropdownlist.Visible = false;
                EditionLanguageLabel.Visible = false;
            }
        }


        #region Web Form Designer generated code
        override protected void OnInit(EventArgs e)
        {
            //
            // CODEGEN: This call is required by the ASP.NET Web Form Designer.
            //
            InitializeComponent();
            base.OnInit(e);
        }

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.LanguagesDropdownlist.SelectedIndexChanged += new System.EventHandler(this.LanguagesDropdownlist_SelectedIndexChanged);
            this.ApplyPrivacyButton.Click += new System.EventHandler(this.ApplyPrivacyButton_Click);
            this.Load += new System.EventHandler(this.Page_Load);

        }
        #endregion

        private void ApplyPrivacyButton_Click(object sender, System.EventArgs e)
        {
            SurveyData surveyData = new Surveys().GetSurveyById(((PageBase)Page).SurveyId, LanguagesDropdownlist.SelectedValue);
            surveyData.Surveys[0].RedirectionURL = RedirectionURLTextBox.Text;
            surveyData.Surveys[0].ThankYouMessage = ThankYouFreeTextBox.Text.Length > 3900 ?
                ThankYouFreeTextBox.Text.Substring(0, 3900) : ThankYouFreeTextBox.Text;

            // Update the DB
            new Survey().UpdateSurvey(surveyData, LanguagesDropdownlist.SelectedValue);

((PageBase)Page).ShowNormalMessage(MessageLabel,((PageBase)Page).GetPageResource("SurveyUpdatedMessage"));
            MessageLabel.Visible = true;
        }

        private void LanguagesDropdownlist_SelectedIndexChanged(object sender, System.EventArgs e)
        {
            BindFields();
        }


    }
}
