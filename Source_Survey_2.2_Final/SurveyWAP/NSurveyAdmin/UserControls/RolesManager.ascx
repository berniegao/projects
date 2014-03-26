<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RolesManager.ascx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls.RolesManager" %>
<%@ Register TagPrefix="uc1" TagName="RolesOptionsControl" Src="RolesOptionsControl.ascx" %>

<table class="TableLayoutContainer">
    <tr>
        <td class="contentCell" valign="top">
            <table class="Innertext">
                <tr>
                    <td style="width: 580px;">
                        <font class="titleFont">
                            <asp:Literal ID="RolesManagerTitle" runat="server" EnableViewState="False" Text="Roles manager"></asp:Literal></font>
                    </td>
                    <td align="right">

                                        <div style="position: relative; right: -90px; top: 0px;">
                                            <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/UM_Introduction.aspx"
                                                title="Click for more Information">
                                                <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                                            </a>
                                        </div>
                    </td>
                </tr>
                <tr>

                    <td colspan="2">
                        <table class="Innertext">
                            <tr>
                                <td> <br />
                                    
                                        <asp:Literal ID="RolesToEditLabel" runat="server" EnableViewState="False" Text="Select a role to edit / view :"></asp:Literal>
                                        
                                        <asp:DropDownList ID="RolesDropDownList" Width="180" runat="server" AutoPostBack="True" OnSelectedIndexChanged="User_IndexChanged">
                                        </asp:DropDownList>
                                        <br />
                                        <br />
                                        <b>
                                            <asp:LinkButton ID="CreateRoleHyperLink" runat="server" OnClick="OnNewRole">Click here to create a new role</asp:LinkButton></b>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table><br />
            <uc1:RolesOptionsControl ID="RolesOptions" runat="server"></uc1:RolesOptionsControl>
        </td>
    </tr>
</table>
