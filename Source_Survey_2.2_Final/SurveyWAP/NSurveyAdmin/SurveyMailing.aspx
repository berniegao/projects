<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>

<%@ Page language="c#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"   ValidateRequest="false" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.SurveyMailing" Codebehind="SurveyMailing.aspx.cs" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
               <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="innerText">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td style="width:80%">
                                        <font class="titleFont">
                                            <asp:Literal ID="InvitationMailingTitle" runat="server" EnableViewState="False">Invitation mailing</asp:Literal></font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td style="width:150px">
                                        <strong>
                                            <asp:Literal ID="FromLabel" runat="server" EnableViewState="False">From :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="FromTextBox" runat="server" Width="280px">youremail@yourdomain.com</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:150px">
                                        <strong>
                                            <asp:Literal ID="FromNameLabel" runat="server" EnableViewState="False">From name:</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="FromNameTextbox" runat="server" Width="280px">LastName FirstName</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:150px">
                                        <strong>
                                            <asp:Literal ID="SubjectLabel" runat="server" EnableViewState="False">Subject :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="SubjectTextBox" runat="server" Width="280px">Please take part in my survey</asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"><br />
                                        <strong>
                                            <asp:Literal ID="InvitationMessageLabel" runat="server" EnableViewState="False">Invitation message :</asp:Literal>
                                        </strong>
                                        <br />
                                        <CKEditor:CKEditorControl ID="MailingCKEditor" BasePath="~/ckeditor" runat="server">
                                        </CKEditor:CKEditorControl>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:480px" colspan="2">
                                        <strong>
                                            <asp:Literal ID="EmailInvitationLabel" runat="server" EnableViewState="False">Email invitation list (must be separated by a comma eg: email@dom.com, email2@dom.com etc..) :</asp:Literal></strong>
                                        <br />
                                        <asp:TextBox ID="MailingListTextBox" Width="655px" runat="server" TextMode="MultiLine" Rows="2"
                                            Columns="80"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:150px">
                                        <strong>
                                            <asp:Literal ID="AnonymousLabel" runat="server" EnableViewState="False">Anonymous entries:</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:CheckBox ID="AnonymousEntriesCheckBox" runat="server"></asp:CheckBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <asp:Button ID="SendInvitationButton" runat="server" Text="Send invitation"></asp:Button>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
</asp:content>