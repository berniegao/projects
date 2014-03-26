<%@ Import Namespace="Votations.NSurvey.Data" %>

<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.LibraryTemplates" Codebehind="LibraryTemplates.aspx.cs" %>



<%@ Register TagPrefix="uc1" TagName="LibraryQuestionOptionsControl" Src="UserControls/LibraryQuestionOptionsControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="smallText">
                    <tr>
                        <td colspan="2">
                            <font class="titleFont">
                                <asp:Literal ID="LibraryQuestionsTemplatesTitle" runat="server" Text="Library templates"
                                    EnableViewState="False"></asp:Literal></font>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="smallText">
                            <strong>
                                <asp:Literal ID="PreviewSurveyLanguageLabel" runat="server" Text="Language preview :"></asp:Literal>&nbsp;</strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="LanguagesDropdownlist" runat="server" AutoPostBack="True" OnSelectedIndexChanged="LanguagesDropdownlist_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                   
                </table>
                <table class="smallText" width="100%">
                    <tr>

                        <td width="650">
                            <br />
                            <asp:PlaceHolder ID="TemplatesPlaceHolder" runat="server"></asp:PlaceHolder>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="InsertQuestionButton" runat="server" Text="Insert new / existing question">
                </asp:Button>
            </td>
        </tr>
    </table>

</asp:Content>
