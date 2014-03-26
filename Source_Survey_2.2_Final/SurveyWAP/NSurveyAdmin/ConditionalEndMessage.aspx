<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>

<%@ Register TagPrefix="uc1" TagName="PageBranchingRulesControl" Src="UserControls/PageBranchingRulesControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyMessageConditonsControl" Src="UserControls/SurveyMessageConditonsControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FilterOptionControl" Src="UserControls/FilterOptionControl.ascx" %>

<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   ValidateRequest="false"	AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.ConditionalEndMessage" Codebehind="ConditionalEndMessage.aspx.cs" %>


<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">
<table class="TableLayoutContainer">
  <tr>
    <td></td>
  </tr>
  <tr>
    <td class="contentCell" valign="top">

        <table class="innerText">
            <tr>
                <td colspan="2"><font class="titleFont">
                    <asp:Literal ID="AddNewConditionTitle" runat="server" EnableViewState="False"></asp:Literal></font>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp; </td>
                <td>
                    <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>

            <table class="innerText">
                <tr>
                    <td nowrap="nowrap" width="140"><strong>
                        <asp:Literal ID="MessageConditionLabel"
                            runat="server" EnableViewState="False"
                            Text="Condition :"></asp:Literal></strong></td>
                    <td width="480">
                        <asp:DropDownList ID="MessageConditionDropdownlist" runat="server" AutoPostBack="True"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td nowrap="nowrap" width="140"><strong>
                        <asp:Literal ID="QuestionLabel"
                            runat="server"
                            EnableViewState="False">Question :</asp:Literal></strong> </td>
                    <td width="480">
                        <asp:DropDownList ID="QuestionFilterDropdownlist" runat="server" AutoPostBack="True"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td width="140"><strong>
                        <asp:Label ID="ConditionalLabel" runat="server">Conditional operator :</asp:Label></strong></td>
                    <td>
                        <asp:DropDownList ID="LogicDropDownList" runat="server" AutoPostBack="True"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td width="140"><strong>
                        <asp:Label ID="AnswerLabel" runat="server">Answer :</asp:Label></strong></td>
                    <td>
                        <asp:DropDownList ID="AnswerFilterDropdownlist" runat="server" AutoPostBack="True"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td width="140"><strong>
                        <asp:Label ID="TextEvaluationConditionLabel" runat="server">Text evaluation condition :</asp:Label></strong></td>
                    <td>
                        <asp:DropDownList ID="ExpressionLogicDropdownlist" runat="server"></asp:DropDownList></td>
                </tr>
                <tr>
                    <td width="140"><strong>
                        <asp:Label ID="FilterTextLabel" runat="server">Text :</asp:Label></strong></td>
                    <td>
                        <asp:TextBox ID="TextFilterTextbox" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="140"><strong>
                        <asp:Label ID="ScoreLabel" runat="server">Score :<br />&nbsp;</asp:Label></strong></td>
                    <td>
                        <asp:TextBox ID="ScoreTextbox" runat="server" Columns="2"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ScoreTextbox"
                            ErrorMessage="No Valid Number" ValidationExpression="^-{0,1}\d+$"></asp:RegularExpressionValidator><br />
                        <asp:Label ID="ScoreRangeLabel" runat="server">and</asp:Label>&nbsp;
                   <asp:TextBox ID="ScoreMaxTextbox" runat="server" Columns="2"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="ScoreMaxTextbox"
                            ErrorMessage="No Valid Number" ValidationExpression="^-{0,1}\d+$"></asp:RegularExpressionValidator></td>

                </tr>
                <tr>
                    <td valign="top" width="140"><strong>
                        <asp:Label ID="ConditionalMessageLabel" runat="server">Message shown on submit :</asp:Label></strong></td>
                    <td>

                        <CKEditor:CKEditorControl ID="ConditionCKeditor" BasePath="~/ckeditor" runat="server">
                        </CKEditor:CKEditorControl>

                        <br />
                        <asp:Label ID="ScoreTagLabel" runat="server">Score total can be shown using the ::score:: tag inside your message</asp:Label></td>
                </tr>
            </table>

                </td>
            </tr>
        </table>
               
               <asp:button id="AddMessageConditionButton" runat="server" Text="Add new message condition" Enabled="False"></asp:button>
               <asp:button id="UpdateMessageConditionButton" runat="server" Text="Update message condition"></asp:button>
               <asp:Button id="ConditionCancelButton" runat="server" Text="Cancel / Back"></asp:Button>
               <br /></td>
               </tr>
         
       </table>
 </asp:content>
