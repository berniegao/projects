<%@ Register TagPrefix="uc1" TagName="FilterOptionControl" Src="UserControls/FilterOptionControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.EditPageBranching" Codebehind="EditPageBranching.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="PageBranchingRulesControl" Src="UserControls/PageBranchingRulesControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">
<table class="TableLayoutContainer">
  <tr>
    <td><asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" runat="server"
                    CssClass="buttonBack" ToolTip="Click to go back" OnCommand="OnBackButton" /></td></tr>
  <tr>
    <td class="contentCell" valign="top">
      <table class="innerText">
        <tr>
          <td colspan="2"><font class="titleFont"><asp:literal id="AddNewBranchingTitle" runat="server" EnableViewState="False">Add new branching rule to page</asp:literal></font>
          <br /><br /><br /> </td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td> <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label></asp:label>
          
            <table class="innerText">
              <tr>
                <td nowrap="nowrap" width="220"><strong><asp:literal id="QuestionLabel" runat="server" EnableViewState="False">Question :</asp:literal></strong> </td>
                <td width="480"><asp:dropdownlist id="QuestionFilterDropdownlist" runat="server" AutoPostBack="True"></asp:dropdownlist></td>
              </tr>
              <tr>
                <td nowrap="nowrap" width="220"><strong><asp:label id="ConditionalLabel" runat="server">Conditional operator :</asp:label></strong></td>
                <td><asp:dropdownlist id="LogicDropDownList" runat="server" AutoPostBack="True"></asp:dropdownlist></td>
              </tr>
              <tr>
                <td width="220"><strong><asp:label id="AnswerLabel" runat="server">Answer :</asp:label></strong></td>
                <td><asp:dropdownlist id="AnswerFilterDropdownlist" runat="server" AutoPostBack="True"></asp:dropdownlist></td>
              </tr>
              <tr>
                <td width="220"><strong><asp:label id="TextEvaluationConditionLabel" runat="server">Text evaluation condition :</asp:label></strong></td>
                <td><asp:dropdownlist id="ExpressionLogicDropdownlist" runat="server" ></asp:dropdownlist></td>
              </tr>
              <tr>
                <td width="220"><strong><asp:label id="FilterTextLabel" runat="server">Text :</asp:label></strong></td>
                <td><asp:textbox id="TextFilterTextbox" runat="server"></asp:textbox></td>
              </tr>
              <tr>
                <td width="220"><strong><asp:label id="ScoreLabel" runat="server">Score :</asp:label></strong></td>
                <td><asp:textbox id="ScoreTextbox" runat="server" Columns="2"></asp:textbox>
                <asp:label id="ScoreRangeLabel" runat="server">between</asp:label>
                <asp:textbox id="ScoreMaxTextbox" runat="server" Columns="2"></asp:textbox></td>
              </tr>
              <tr>
                <td width="220"><strong><asp:label id="PageTargetLabel" runat="server">Go to page :</asp:label></strong></td>
                <td><asp:dropdownlist id="PageTargetDropdownlist" runat="server" ></asp:dropdownlist></td>
              </tr>
             </table>
             
            </td>
           </tr>
          </table>
          
          <asp:button id="AddRuleButton" runat="server" Text="Add new rule" Enabled="False"></asp:button><br /><br /><br />
          
      <table class="innerText">
        <tr>
          <td colspan="2"><font class="titleFont"><asp:literal id="BranchingRulesTitle" runat="server" EnableViewState="False">Branching rules</asp:literal></font> <br /><br /><br /> </td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td>
          
            <table class="innerText">
            <asp:literal id="EvaluationConditionInfo" runat="server" EnableViewState="False">Conditions are evaluated from top to down with a "first condition met branch" rule</asp:literal>
              <tr>
                <td nowrap="nowrap" width="700"><uc1:PageBranchingRulesControl id="PageBranchingRules" runat="server"></uc1:PageBranchingRulesControl></td>
              </tr>
		    </table>
				
				</td>
			</tr>
		</table>
		
				</td>
			</tr>
			
		</table>
</asp:content>
