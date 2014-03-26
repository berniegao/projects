<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.SecurityAddInOptionsControl" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" Codebehind="SecurityAddInOptionsControl.ascx.cs" %>
<%@ Register TagPrefix="uc1" TagName="PageBranchingRulesControl" Src="PageBranchingRulesControl.ascx" %>

<table class="questionBreakOptions" width="100%">
    <tr>
        <td width="10">
            <asp:ImageButton ID="UpImageButton" runat="server" ImageUrl="~/NSurveyAdmin/images/questionupbutton.gif">
            </asp:ImageButton>
        </td>
        <td width="10">
            <asp:ImageButton ID="DownImageButton" runat="server" ImageUrl="~/NSurveyAdmin/images/questiondownbutton.gif">
            </asp:ImageButton>
        </td>
        <td nowrap="nowrap" width="300">
            <font class="mediumText">
                <asp:Label ID="AddInDescriptionLabel" runat="server"></asp:Label></font>&nbsp;
        </td>
        <td class="questionBreak" align="right">
            <asp:LinkButton ID="DisableAddInLinkButton" runat="server">Disable</asp:LinkButton>&nbsp;|&nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server">Delete</asp:LinkButton>&nbsp;|&nbsp;&nbsp;
            <asp:HyperLink ID="InsertAddInHyperLink" runat="server">Insert security add in</asp:HyperLink>&nbsp;&nbsp;
        </td>
    </tr>
</table>
<asp:Label ID="AddInDisabledLabel" runat="server" Font-Bold="True" ForeColor="Red"
    Font-Size="XX-Small"></asp:Label>
