<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FilterOptionControl" Src="UserControls/FilterOptionControl.ascx" %>

<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.FilterCreator"
    CodeBehind="FilterCreator.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<asp:Label ID="MessageLabel" runat="server"></asp:Label>
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" runat="server"
                    CssClass="buttonBack" ToolTip="Click to go Back" OnCommand="OnBackButton" />
            </td>
        </tr>

        <tr>
            <td class="contentCell" valign="top">
                <uc1:FilterOptionControl ID="FilterOption" Visible="true" runat="server"></uc1:FilterOptionControl>
            </td>
        </tr>
    </table>
</asp:Content>
