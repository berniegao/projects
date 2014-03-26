<%@ Register TagPrefix="uc1" TagName="SkipLogicRulesControl" Src="SkipLogicRulesControl.ascx" %>
<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.QuestionOptionsControl" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" Codebehind="QuestionOptionsControl.ascx.cs" %>
<table style="position: relative; left: -2px;" width="100%" class="questionOptions">
    <tr>
        <td>
            <asp:ImageButton ID="UpImageButton" ImageUrl="~/NSurveyAdmin/images/questionupbutton.gif"
                runat="server"></asp:ImageButton>
            <asp:ImageButton ID="DownImageButton" ImageUrl="~/NSurveyAdmin/images/questiondownbutton.gif"
                runat="server"></asp:ImageButton>
            <asp:HyperLink ID="EditHyperLink" runat="server">Edit</asp:HyperLink>|&nbsp;
            <asp:HyperLink ID="EditAnswersHyperLink" runat="server">Edit answers</asp:HyperLink>|&nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server">Delete</asp:LinkButton>|&nbsp;
            <asp:LinkButton ID="CloneButton" runat="server">Clone</asp:LinkButton>|&nbsp;
            <asp:HyperLink ID="InsertHyperLink" runat="server">Insert question</asp:HyperLink>|&nbsp;
            <asp:LinkButton ID="InsertPageBreakButton" runat="server">Insert page break</asp:LinkButton>|&nbsp;
            <asp:LinkButton ID="InsertLineBreakButton" runat="server">Insert line break</asp:LinkButton>|&nbsp;
            <asp:HyperLink ID="EditSkipLogicHyperLink" runat="server">Skip logic</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td style=" background-color:#e2e2e2; line-height:10px;">
            ID :
            <asp:Label ID="lblId" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblHelpLabel"  runat="server" Text="Help Text :"> </asp:Label> <asp:Label ID="lblHelpText" CssClass="DesignHelpText" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <uc1:SkipLogicRulesControl ID="SkipLogicRules" runat="server"></uc1:SkipLogicRulesControl>
        </td>
    </tr>
</table>
