<%@ Register TagPrefix="uc1" TagName="FilterOptionControl" Src="UserControls/FilterOptionControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SkipLogicRulesControl" Src="UserControls/SkipLogicRulesControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.EditSkipLogicRules" Codebehind="EditSkipLogicRules.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="PageBranchingRulesControl" Src="UserControls/PageBranchingRulesControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">

<table class="TableLayoutContainer">
  <tr>
    <td><asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" runat="server"
                    CssClass="buttonBack" ToolTip="Click to go Back" OnCommand="OnBackButton" /></td>
  </tr>
  <tr>
    <td class="contentCell" valign="top">
    
      <table class="innerText">
        <tr>
          <td colspan="2"><font class="titleFont"><asp:literal id="AddNewSkipLogicTitle" runat="server" EnableViewState="False" Text="Add new skip logic to this question"></asp:literal></font>
          <br /><br /><br /> </td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td> <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:label>
          
            <table class="innerText">
              <tr>
                <td nowrap="nowrap" width="140"><strong><asp:literal id="QuestionLabel" 
                   runat="server" 
                  EnableViewState="False">Question :</asp:literal></strong> </td>
                <td width="480"><asp:dropdownlist id="QuestionFilterDropdownlist" runat="server" AutoPostBack="True"></asp:dropdownlist></td>
              </tr>
              <tr>
                <td width="140"><strong><asp:label id="ConditionalLabel" runat="server">Conditional operator :</asp:label></strong></td>
                <td><asp:dropdownlist id="LogicDropDownList" runat="server" AutoPostBack="True"></asp:dropdownlist></td>
              <tr>
                <td width="140"><strong><asp:label id="AnswerLabel" runat="server">Answer :</asp:label></strong></td>
                <td><asp:dropdownlist id="AnswerFilterDropdownlist" runat="server" AutoPostBack="True"></asp:dropdownlist></td>
              </tr>
              <tr>
                <td width="140"><strong><asp:label id="TextEvaluationConditionLabel" runat="server">Text evaluation condition :</asp:label></strong></td>
                <td><asp:dropdownlist id="ExpressionLogicDropdownlist" runat="server" ></asp:dropdownlist></td>
              </tr>
              <tr>
                <td width="140"><strong 
                  ><asp:label id=FilterTextLabel runat="server">Text :</asp:label></strong></td>
                <td><asp:textbox id=TextFilterTextbox runat="server"></asp:textbox></td></tr>
              <tr>
                <td width="140"><strong><asp:label id="ScoreLabel" runat="server">Score :</asp:label></strong></td>
                <td><asp:textbox id="ScoreTextbox" runat="server" Columns="2"></asp:textbox> 
                <asp:label id="ScoreRangeLabel" runat="server">between</asp:label> 
                <asp:textbox id="ScoreMaxTextbox" runat="server" Columns="2"></asp:textbox></td>
              </tr>
			</table>
			
			</td>
		</tr>
	</table>
	<asp:button id="AddRuleButton" runat="server" Enabled="False" Text="Add new rule"></asp:button>
	<br /><br /><br />
	
      <table class="innerText">
        <tr>
          <td colspan="2"><font class="titleFont"><asp:literal id="SkipLogicRulesTitle" runat="server" EnableViewState="False" Text="Skip logic rules"></asp:literal></font> 
          <br /><br /><br /> </td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td>
          
            <table class="innerText">
            <asp:literal id="SkipLogicEvaluationConditionInfo" runat="server" EnableViewState="False">Conditions are evaluated from top to down</asp:literal>
              
              <tr>
                <td nowrap="nowrap" width="700"><uc1:SkipLogicRulesControl id="SkipLogicRules" runat="server"></uc1:SkipLogicRulesControl></td>
              </tr>
				</table>
				
				</td>
				</tr>
				</table>
				
				
				</td>
				</tr>
				
				</table>
				
</asp:content>
