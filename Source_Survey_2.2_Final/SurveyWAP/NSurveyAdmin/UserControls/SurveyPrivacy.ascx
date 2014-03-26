<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SurveyPrivacy.ascx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls.SurveyPrivacy" %>

<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyOptionControl" Src="SurveyOptionControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyMessageConditonsControl" Src="SurveyMessageConditonsControl.ascx" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>


<table class="TableLayoutContainer">
  <tr>
    <td></td></tr>
  <tr>
    <td class="contentCell" valign="top">  <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
    
      <table class="innerText">
        
        <tr>
          <td colspan="2">
          
            <table>
              <tr>
                <td width="99%"><font class="titleFont"><asp:literal id="PrivacySettingsTitle" 
                   runat="server" text="Privacy settings" 
                  EnableViewState="False"></asp:literal></font></td>
                <td align="right"><uc1:surveylistcontrol id="SurveyList" runat="server"></uc1:surveylistcontrol></td></tr></table>
                
           <br /><br /></td></tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td>
          
            <table class="innerText">
              
              <tr>
                <td class="smallText"><strong><asp:literal id="EditionLanguageLabel" runat="server" Text="Edition language :"></asp:literal></strong></td>
                <td><asp:dropdownlist id="LanguagesDropdownlist" runat="server" AutoPostBack="True"></asp:dropdownlist></td></tr>

              <tr>
                <td nowrap="nowrap" width="140"><strong><asp:literal id="RedirectionURLLabel" 
                   runat="server" text="Redirection URL :" 
                  EnableViewState="False"></asp:literal></strong></td>
                <td width="480"><asp:textbox id="RedirectionURLTextBox" runat="server"></asp:textbox></td>
              </tr>
                
                <tr>
                <td valign="top" width="140"><strong><asp:literal id="ThanksMessageLabel" 
                   runat="server" text="Thanks message :" 
                  EnableViewState="False"></asp:literal></strong></td>
                <td><FTB:FREETEXTBOX 
                  id="ThankYouFreeTextBox" runat="server" 
                  BreakMode="LineBreak" 
                  Width="550px" 
                  AutoGenerateToolbarsFromString="true" 
                  SupportFolder="~/FreeTextBox/" 
                  Height="300px" 
                  ToolbarStyleConfiguration="Office2003" 
                  UseToolbarBackGroundImage="true" 
                  EnableToolbars="True"                   
                  EnableHtmlMode = "true"
                  ImageGalleryUrl = "ftb.imagegallery.aspx?rif=~/images/&cif=~/images/"
                  FormatHtmlTagsToXhtml = "true"
                  RemoveServerNameFromUrls = "false"
                  ConvertHtmlSymbolsToHtmlCodes = "true"
                  ToolbarLayout="ParagraphMenu, FontFacesMenu, FontSizesMenu, FontForeColorsMenu, FontForeColorPicker, FontBackColorsMenu, FontBackColorPicker, Bold, Italic, Underline | Strikethrough, Superscript, Subscript, InsertImageFromGallery, CreateLink, Unlink, RemoveFormat, JustifyLeft, JustifyRight, JustifyCenter, JustifyFull, BulletedList | NumberedList, Indent, Outdent, Cut, Copy, Paste, Delete, Undo, Redo, Print, Save, ieSpellCheck, StyleMenu, SymbolsMenu, InsertHtmlMenu, InsertRule, InsertDate | InsertTime, WordClean, InsertImage, InsertTable, EditTable, InsertTableRowBefore, InsertTableRowAfter, DeleteTableRow, InsertTableColumnBefore, InsertTableColumnAfter | DeleteTableColumn, InsertForm, InsertForm, InsertTextBox, InsertTextArea, InsertRadioButton, InsertCheckBox, InsertDropDownList, InsertButton, InsertDiv | InsertImageFromGallery, Preview, SelectAll, EditStyle">
                  </FTB:FREETEXTBOX>   
                  
                  </td>
                  </tr>
                  </table>
                  
                  <br /><asp:button id="ApplyPrivacyButton" runat="server" Text="Apply changes"></asp:button><br /><br /></td>
            </tr>
            </table>
            
      <table class="smallText">
        
        <tr>
          <td colspan="2"><font class="titleFont"><asp:literal id="ThanksMessageConditionTitle" 
             runat="server" 
            text="Thanks messages display conditions*" 
            EnableViewState="False"></asp:literal></font>
            <br /><br /><br /> </td>
         </tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td><asp:HyperLink id="AddNewConditionHyperLink" runat="server">Add new condition</asp:HyperLink>
          
            <table class="smallText" width="700">
              <tr>
                <td><uc1:surveymessageconditonscontrol id="SurveyMessageConditons" runat="server"></uc1:surveymessageconditonscontrol><br />
                <asp:Label id="EvaluationMessageConditionInfo" runat="server">Label</asp:Label>
                </td>
                </tr>
             </table>
                
                </td>
                </tr>
                </table>
                
                </td></tr>
              
</table>
