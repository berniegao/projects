<%@ Register TagPrefix="uc1" TagName="PageBranchingRulesControl" Src="PageBranchingRulesControl.ascx" %>
<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.PageBreakOptionsControl" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" Codebehind="PageBreakOptionsControl.ascx.cs" %>
<table class="questionBreakOptions" width="100%">
    <tr>
        <td width="7px">
            <asp:ImageButton ID="UpImageButton" runat="server" ImageUrl="~/NSurveyAdmin/images/questionupbutton.gif">
            </asp:ImageButton>
        </td>
        <td width="7px">
            <asp:ImageButton ID="DownImageButton" runat="server" ImageUrl="~/NSurveyAdmin/images/questiondownbutton.gif">
            </asp:ImageButton>
        </td>
        <td nowrap="nowrap" width="50px">
            &nbsp;<font class="secAddIn">
                <asp:Literal ID="PageTitle" runat="server" EnableViewState="False">Page</asp:Literal>
                <asp:Label ID="PageLabel" runat="server"></asp:Label></font>&nbsp;
        </td>
        <td class="questionBreak" style="padding-right: 8px;" align="right">
            <asp:LinkButton ID="DeleteButton" runat="server">Delete</asp:LinkButton>&nbsp;|&nbsp;&nbsp;
            <asp:HyperLink ID="InsertHyperLink" runat="server">Insert question</asp:HyperLink>&nbsp;|&nbsp;&nbsp;
            <asp:LinkButton ID="InsertLineBreakButton" runat="server">Insert line break</asp:LinkButton>&nbsp;|&nbsp;&nbsp;
            <asp:LinkButton ID="EnableRandomHyperlink" runat="server">Enable random</asp:LinkButton>&nbsp;|&nbsp;&nbsp;
            <asp:HyperLink ID="BranchingHyperLink" runat="server">Edit branching</asp:HyperLink>&nbsp;|&nbsp;&nbsp;
            <asp:LinkButton ID="EnableSubmitHyperlink" runat="server">Enable submit</asp:LinkButton>
        </td>
    </tr>
</table>
<table>
    <tr>
        <td>
            <uc1:PageBranchingRulesControl ID="PageBranchingRules" runat="server"></uc1:PageBranchingRulesControl>
        </td>
    </tr>
</table>
