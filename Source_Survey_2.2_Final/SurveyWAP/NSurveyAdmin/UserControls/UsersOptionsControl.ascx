<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.UsersOptionsControl"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="UsersOptionsControl.ascx.cs" %>
<table class="uiTable" width="600px" border="0">
    <tr>
        <td>
            <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
<table class="formTable">
    <tr>
        <td align="left">
            <asp:Label ID="UserOptionTitleLabel" runat="server" CssClass="titleFont">Label</asp:Label>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <table class="formTable">
                <asp:PlaceHolder ID="NSurveyUserPlaceHolder" runat="server">
                    <tr>
                        <td class="tableLeftColumn">
                            <div class="tableLabel">
                                <asp:Literal ID="UserNameLabel" runat="server" EnableViewState="False" Text="User name:"></asp:Literal></div>
                        </td>
                        <td class="tableRightColumn">
                            <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tableLeftColumn">
                            <div class="tableLabel">
                                <asp:Literal ID="UserPasswordLabel" runat="server" EnableViewState="False" Text="Password :"></asp:Literal></div>
                        </td>
                        <td class="tableRightColumn">
                            <asp:TextBox ID="PasswordTextBox" runat="server" MaxLength="12" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 21px" class="tableLeftColumn">
                            <div class="tableLabel">
                                <asp:Literal ID="UserFirstNameLabel" runat="server" EnableViewState="False" Text="First name :"></asp:Literal></div>
                        </td>
                        <td class="tableRightColumn">
                            <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tableLeftColumn">
                            <div class="tableLabel">
                                <asp:Literal ID="UserLastNameLabel" runat="server" EnableViewState="False" Text="Last name :"></asp:Literal></div>
                        </td>
                        <td class="tableRightColumn">
                            <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="tableLeftColumn">
                            <div class="tableLabel">
                                <asp:Literal ID="UserEmailLabel" runat="server" EnableViewState="False" Text="Email :"></asp:Literal></div>
                        </td>
                        <td class="tableRightColumn">
                            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </asp:PlaceHolder>
                <tr>
                    <td class="tableLeftColumn">
                        <div class="tableLabel">
                            <asp:Literal ID="UserIsAdministratorLabel" runat="server" EnableViewState="False"
                                Text="Administrator :"></asp:Literal></div>
                    </td>
                    <td class="tableRightColumn">
                        <asp:CheckBox ID="IsAdminCheckBox" runat="server"></asp:CheckBox>
                    </td>
                </tr>
                <tr>
                    <td class="tableLeftColumn">
                        <div class="tableLabel">
                            <asp:Literal ID="AssignAllSurveysLabel" runat="server" EnableViewState="False" Text="Assign all survey :"></asp:Literal></div>
                    </td>
                    <td class="tableRightColumn">
                        <asp:CheckBox ID="HasSurveyAccessCheckBox" runat="server" AutoPostBack="True"></asp:CheckBox>
                    </td>
                </tr>
                <asp:PlaceHolder ID="ExtendedSettingsPlaceHolder" runat="server">
                    <tr>
                        <td valign="top" nowrap="nowrap" class="tableLeftColumn">
                            <div class="tableLabel">
                                <asp:Literal ID="UserSurveyAssignedLabel" runat="server" Text="Assigned surveys :"
                                    EnableViewState="False"></asp:Literal></div>
                        </td>
                        <td>
                            <asp:PlaceHolder ID="phSurveySelect" runat="server">
                                <table class="">
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
                                            <asp:ListBox ID="SurveysListBox" runat="server" AutoPostBack="True" Height="110px"
                                                Width="200px"></asp:ListBox>
                                        </td>
                                        <td>
                                            <div style="margin: 10px;">
                                                &gt;&gt;<br />
                                                &lt;&lt;</div>
                                        </td>
                                        <td valign="top">
                                            <asp:ListBox ID="UserSurveysListBox" runat="server" AutoPostBack="True" Height="110px"
                                                Width="200px"></asp:ListBox>
                                        </td>
                                    </tr>
                                </table>
                            </asp:PlaceHolder>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" class="tableLeftColumn">
                            <div class="tableLabel">
                                <asp:Literal ID="RolesLabel" runat="server" Text="Roles :" EnableViewState="False"></asp:Literal></div>
                        </td>
                        <td>
                            <table class="">
                                <tr>
                                    <td>
                                        <asp:Literal ID="AvailableRolesLabel" runat="server" Text="Available roles" EnableViewState="False"></asp:Literal>
                                    </td>
                                    <td style="width: 23px">
                                    </td>
                                    <td>
                                        <asp:Literal ID="UserRolesLabel" runat="server" Text="User's roles" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ListBox ID="RolesListBox" runat="server" AutoPostBack="True" Height="110px"
                                            Width="200px"></asp:ListBox>
                                    </td>
                                    <td style="width: 23px">
                                        <div style="margin: 10px;">
                                            &gt;&gt;<br />
                                            &lt;&lt;</div>
                                    </td>
                                    <td valign="top">
                                        <asp:ListBox ID="UserRolesListBox" runat="server" AutoPostBack="True" Height="110px"
                                            Width="200px"></asp:ListBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </asp:PlaceHolder>
                <tr>
                    <td colspan="2" align="left">
                        <br />
                        <asp:Button ID="CreateNewUserButton" runat="server" Text="Create user"></asp:Button>
                        <asp:Button ID="ApplyChangesButton" runat="server" Text="Apply changes"></asp:Button>
                        <asp:Button ID="DeleteUserButton" runat="server" Text="Delete user" Visible="False"
                            OnClick="DeleteUserButton_Click1"></asp:Button>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
