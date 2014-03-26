<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserImport.ascx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls.UserImport" %>
<%@ Register TagPrefix="uc1" TagName="UsersOptionsControl" Src="UsersOptionsControl.ascx" %>

<table class="TableLayoutContainer">
    <tr>
        <td class="contentCell" valign="top">
            <table class="uiTable" width="600px" border="0">
                <tr>
                    <td>
                        <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="smallText" width="650px">
                <tr>
                    <td>
                        <asp:Label ID="ImportUsersTitle" CssClass="titleFont" runat="server">Import users</asp:Label>
                        <br />
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td width="600px">
                        <table class="smallText">
                            <tr>
                                <td width="170px" valign="top">
                                    <strong>
                                        <asp:Literal ID="ImportUserLabel" runat="server" EnableViewState="False" Text="Import users :"></asp:Literal></strong>
                                </td>
                                <td width="440px">
                                    <p>
                                        <asp:TextBox Width="500px" ID="ImportUsersTextBox" runat="server" TextMode="MultiLine" Rows="7"
                                            Columns="85" Wrap="False"></asp:TextBox><br />
                                        <asp:Label ID="ImportInfo1Label" runat="server" EnableViewState="False"> Import format are comma separated values, each new line must contain a user to import e.g.:</asp:Label>
                                        
                                        <asp:Label ID="ImportInfo2Label" runat="server" EnableViewState="False"> UserName,Password,First name,Last name,Email </asp:Label>
                                        
                                        <asp:Label ID="ImportInfo3Label" runat="server" EnableViewState="False">or UserName,Password,,, </asp:Label></p>
                                </td>
                            </tr>
                            <tr>
                                <td width="170px">
                                    <strong>
                                        <asp:Literal ID="UserIsAdministratorLabel" runat="server" EnableViewState="False"
                                            Text="Administrator :"></asp:Literal></strong>
                                </td>
                                <td >
                                    <asp:CheckBox ID="IsAdminCheckBox" runat="server"></asp:CheckBox>
                                </td>
                            </tr>
                            <tr>
                                <td width="170px">
                                    <strong>
                                        <asp:Literal ID="AssignAllSurveysLabel" runat="server" EnableViewState="False" Text="Assign all survey :"></asp:Literal></strong>
                                </td>
                                <td >
                                    <asp:CheckBox ID="HasSurveyAccessCheckBox" runat="server" AutoPostBack="True"></asp:CheckBox>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" nowrap="nowrap" width="170px">
                                    <strong>
                                        <asp:Literal ID="UserSurveyAssignedLabel" runat="server" Text="Assigned surveys :"
                                            EnableViewState="False"></asp:Literal></strong>
                                </td>
                                <td>
                                    <table class="smallText">
                                        <tr>
                                            <td>
                                                <asp:Literal ID="UnAssignedSurveysLabel" runat="server" Text="Available surveys"
                                                    EnableViewState="False"></asp:Literal>
                                            </td>
                                            <td>
                                            </td>
                                            <td>
                                                <asp:Literal ID="AssignedSurveysLabel" runat="server" Text="Assigned to user" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:ListBox ID="SurveysListBox" runat="server" AutoPostBack="True" Width="220px" Height="120px">
                                                </asp:ListBox>
                                            </td>
                                            <td>
                                                &nbsp;<strong>&gt;&gt;<br />
                                                    &lt;&lt;</strong>&nbsp;
                                            </td>
                                            <td valign="top">
                                                <asp:ListBox ID="UserSurveysListBox" runat="server" AutoPostBack="True" Width="220px" Height="120px">
                                                </asp:ListBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" width="170px">
                                    <strong>
                                        <asp:Literal ID="RolesLabel" runat="server" Text="Roles :" EnableViewState="False"></asp:Literal></strong>
                                </td>
                                <td>
                                    <table class="smallText">
                                        <tr>
                                            <td>
                                                <asp:Literal ID="AvailableRolesLabel" runat="server" Text="Available roles" EnableViewState="False"></asp:Literal>
                                            </td>
                                            <td width="23px">
                                            </td>
                                            <td>
                                                <asp:Literal ID="UserRolesLabel" runat="server" Text="User's roles" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:ListBox ID="RolesListBox" runat="server" AutoPostBack="True" Width="220px" Height="120px">
                                                </asp:ListBox>
                                            </td>
                                            <td width="23px">
                                                &nbsp;<strong>&gt;&gt;<br />
                                                    &lt;&lt;</strong>&nbsp;
                                            </td>
                                            <td valign="top">
                                                <asp:ListBox ID="UserRolesListBox" runat="server" AutoPostBack="True" Width="220px" Height="120px">
                                                </asp:ListBox>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <asp:Button ID="ImportUsersButton" runat="server" Text="Import users" OnClick="ImportUsersButton_Click1">
            </asp:Button>
        </td>
    </tr>
</table>
