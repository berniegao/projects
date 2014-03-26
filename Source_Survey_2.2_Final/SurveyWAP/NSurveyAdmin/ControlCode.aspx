<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="vts" Namespace="Votations.NSurvey.WebControls" Assembly="Votations.NSurvey.WebControls" %>

<%@ Page Language="c#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master" ValidateRequest="false"
    AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.ControlCode" CodeBehind="ControlCode.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:Label ID="MessageLabel" runat="server"></asp:Label>
<table class="TableLayoutContainer">
                                <tr>
                                    <td colspan="3"><br />
                                        <font class="titleFont">
                                            <asp:Literal ID="SurveyUrl" runat="server" EnableViewState="False">Survey Hyperlinks</asp:Literal></font>
                                    </td>
                                </tr>
       <tr>
            <td colspan="3">
                <br />
                <asp:Literal ID="QuickLinkInfo" runat="server" EnableViewState="False">
                Deployment URL:</asp:Literal>
                <br /><br />
                <asp:HyperLink ID="CodeHyperLink" Target="_blank" runat="server">HyperLink</asp:HyperLink>
                <br /><br />
            </td>
        </tr>
        <tr>
            <td width="200px">
                <asp:Literal ID="friendlyLabel" runat="server">Create Friendly Name:</asp:Literal>
            </td>
            <td width="200px">
                <asp:TextBox ID="txtFriendly" runat="server" Width="214px"></asp:TextBox>
            </td>
            <td width="200px">
                <asp:Button ID="btnFriendly" runat="server" />
                <br />
            </td>
        </tr>
        <tr>
        <td  colspan="3">
        <br />
          <asp:HyperLink ID="friendlyUrlLink" Target="_blank"  runat="server">HyperLink</asp:HyperLink>
        </td>
        </tr>
                <tr>
        <td  colspan="3">
        <br />
        <asp:Literal ID="FriendlyUrl" runat="server" EnableViewState="False">Note: Friendly Url format = http:// [YourWebSiteUrl] / survey.aspx / [<b>YourFriendlyName</b>]</asp:Literal>
                </td>
        </tr>
</table>
    <table class="TableLayoutContainer">
 
        <tr>
            <td class="contentCell" valign="top">
                <table class="innerText">
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td > <br />
                                        <font class="titleFont">
                                            <asp:Literal ID="ControlCodeTitle" runat="server" EnableViewState="False">Webcontrol asp.net starting code</asp:Literal></font>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>

                        <td nowrap="nowrap">
                            <asp:Literal ID="PageDirectiveInfo" runat="server" EnableViewState="False">You must also include the following directive in the aspx pages that will display the survey :</asp:Literal>
                            <br />
                            <span class="RegisterLiteral">
                                <asp:Literal ID="TagPrefixInfo" runat="server" EnableViewState="False">&lt;%@Register TagPrefix="vts" Namespace="Votations.NSurvey.WebControls" 
            Assembly="Votations.NSurvey.WebControls" %&gt;</asp:Literal></span><br />
                            <br />
                            <table class="innerText">
                                <tr>
                                    <td>

 <textarea id="taCode" runat="server" style="width:655px;" rows="15" cols="85">

&lt;vts:SurveyBox ID="SurveyPreview" Surveyid="{0}" CssClass="surveybox" EnableValidation="true" runat="server" &gt;

&lt;QuestionStyle  CssClass="questionStyle"&gt;&lt;/QuestionStyle&gt;

&lt;QuestionValidationMessageStyle CssClass="qvmStyle" &gt;&lt;/QuestionValidationMessageStyle&gt;

&lt;QuestionValidationMarkStyle CssClass="qvmarkStyle" &gt;
&lt;/QuestionValidationMarkStyle&gt;

&lt;ConfirmationMessageStyle CssClass="cmStyle" &gt;
&lt;/ConfirmationMessageStyle&gt;

&lt;SectionOptionStyle CssClass="soStyle"&gt;&lt;/SectionOptionStyle&gt;

&lt;ButtonStyle CssClass="buttonStyle"&gt;&lt;/ButtonStyle&gt;

&lt;AnswerStyle CssClass="answerStyle"&gt;&lt;/AnswerStyle&gt;

&lt;MatrixStyle CssClass="matrixStyle" &gt;&lt;/MatrixStyle&gt;

&lt;MatrixHeaderStyle CssClass="mhStyle"&gt;&lt;/MatrixHeaderStyle&gt;

&lt;MatrixItemStyle CssClass="miStyle" &gt;&lt;/MatrixItemStyle&gt;

&lt;MatrixAlternatingItemStyle CssClass="maiStyle"&gt;
&lt;/MatrixAlternatingItemStyle&gt;

&lt;SectionGridAnswersItemStyle CssClass="sgiStyle" &gt;
&lt;/SectionGridAnswersItemStyle&gt;

&lt;SectionGridAnswersAlternatingItemStyle CssClass="sgaaisStyle" &gt;
&lt;/SectionGridAnswersAlternatingItemStyle&gt;

&lt;SectionGridAnswersStyle CssClass="sgaStyle" &gt;
&lt;/SectionGridAnswersStyle&gt;

&lt;SectionGridAnswersHeaderStyle CssClass="sgahStyle"&gt;
&lt;/SectionGridAnswersHeaderStyle&gt;

&lt;FootStyle CssClass="footStyle" &gt;&lt;/FootStyle&gt;

&lt;/vts:SurveyBox&gt;

</textarea>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
