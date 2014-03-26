<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.RolesOptionsControl"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="RolesOptionsControl.ascx.cs" %>
<style type="text/css">
    .style1
    {
        width: 216px;
    }
</style>
<table class="uiTable" width="700px" border="0">
    <tr>
        <td>
            <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
<table class="smallText" width="700px">
    <tr>
        <td>
            <font class="titleFont">
                <asp:Label ID="RolesOptionTitleLabel" runat="server">Label</asp:Label></font>
        </td>
    </tr>
    <tr>

        <td>
            <table class="normal" width="100%">
                <tr>
                    <td width="230px">
                        <strong>
                            <asp:Literal ID="RoleNameLabel" runat="server" Text="Role name:" EnableViewState="False"></asp:Literal></strong>
                    </td>
                    <td width="580px">
                        <asp:TextBox ID="RoleNameTextBox" Width="250px" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="230px">
                        <strong>
                            <asp:Literal ID="RoleRightsLabel" runat="server" Text="Role's rights :" EnableViewState="False"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="RightsCheckBoxList" runat="server" RepeatColumns="3" CssClass="smallText chkPrivs"
                            Height="22px" Width="580px">
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<asp:Button ID="CreateNewRoleButton" runat="server" Text="Create role" OnClick="CreateNewRoleButton_Click1"></asp:Button>
<asp:Button ID="ApplyChangesButton" runat="server" Text="Apply changes"></asp:Button>
<asp:Button ID="DeleteRoleButton" runat="server" Text="Delete role"></asp:Button>
