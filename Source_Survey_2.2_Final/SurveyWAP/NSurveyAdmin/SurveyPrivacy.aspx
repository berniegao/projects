<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyOptionControl" Src="UserControls/SurveyOptionControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyMessageConditonsControl" Src="UserControls/SurveyMessageConditonsControl.ascx" %>

<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   ValidateRequest="false" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.SurveyPrivacy" Codebehind="SurveyPrivacy.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server" Visible="False" CssClass="ErrorMessage"></asp:Label>
                <table class="innerText">
                    <tr>
                        <td>
                            <table style="width: 100%;">
                                <tr>
                                    <td style="width: 80%;">
                                        <font class="titleFont">
                                            <asp:Literal ID="PrivacySettingsTitle" runat="server" Text="Privacy settings" EnableViewState="False"></asp:Literal></font>
                                    </td>
                                    <td align="right">
                                        <div style="position: relative; right: 0px; top: 0px;">
                                            <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/Completion Actions.aspx"
                                                title="Click for more Information">
                                                <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Literal ID="EditionLanguageLabel" runat="server" Text="Edition language :"></asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="LanguagesDropdownlist" width="225px" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td nowrap="nowrap" width="140px">
                                        <strong>
                                            <asp:Literal ID="RedirectionURLLabel" runat="server" Text="Redirection URL :" EnableViewState="False"></asp:Literal></strong>
                                    </td>
                                    <td width="480px">
                                        <asp:TextBox ID="RedirectionURLTextBox" width="225px" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" valign="top" width="140px"><br />
                                        <strong>
                                            <asp:Literal ID="ThanksMessageLabel" runat="server" Text="Thanks message :" EnableViewState="False"></asp:Literal></strong>
                                    </td>
                                    </tr>
                                <tr>
                                    <td colspan="2"><CKEditor:CKEditorControl ID="ThankYouCKEditor" BasePath="~/ckeditor" runat="server">
                                        </CKEditor:CKEditorControl>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:Button ID="ApplyPrivacyButton" runat="server" Text="Apply changes"></asp:Button><br />
                            <br />
                        </td>
                    </tr>
                </table>
                <table class="smallText">
                    <tr>
                        <td>
                            <font class="titleFont">
                                <asp:Literal ID="ThanksMessageConditionTitle" runat="server" Text="Thanks messages display conditions*"
                                    EnableViewState="False"></asp:Literal></font>
                            <br />
                            <br />
                        </td>
                        <td align="right">
                            <div style="position: relative; right: 0px; top: 0px;">
                                <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/Thanks Message Conditions.aspx"
                                    title="Click for more Information">
                                    <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                                </a>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:HyperLink ID="AddNewConditionHyperLink" runat="server">Add new condition</asp:HyperLink>
                            <table class="smallText" width="700px">
                                <tr>
                                    <td>
                                        <uc1:SurveyMessageConditonsControl ID="SurveyMessageConditons" runat="server"></uc1:SurveyMessageConditonsControl>
                                        <asp:Label ID="EvaluationMessageConditionInfo" runat="server">Label</asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
