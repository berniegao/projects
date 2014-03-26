<%@ Page Language="c#" MasterPageFile="~/Wap.master" EnableEventValidation="false" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UsersManager"
    CodeBehind="UsersManager.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="UsersOptionsControl" Src="UserControls/UsersOptionsControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RolesManager" Src="UserControls/RolesManager.ascx" %>
<%@ Register TagPrefix="uc1" TagName="UserImport" Src="UserControls/UserImport.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        var obj = { selected: <%= selectedTabIndex %> ,
                select: function(event, ui) { 
                    $("#tabindex").val(ui.index); 
                    __doPostBack();
                }
        };
        $(function () {
            $("#tabs").tabs(obj);
        });
    </script>
    <input type="hidden" id="tabindex" name="tabindex" value="<%= selectedTabIndex %>" />
    <div id="usersTabEvents" style="display: none" runat="server" onclick="foo" />
    <div id="tabs" style="overflow:auto; min-height:740px;">
        <ul>
            <li><a href="#tabs-1">
                <%=GetPageResource("UsersTab")%></a></li>
            <li><a href="#tabs-2">
                <%=GetPageResource("RolesTab")%></a></li>
            <li><a href="#tabs-3">
                <%=GetPageResource("ImportUsersTab")%></a></li>
        </ul>
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="btnBack" ImageUrl="~/Images/back_button.gif" runat="server"
                        CssClass="buttonBack" OnCommand="EditBackButton" Visible="false" ToolTip="Go back to previous" />
                </td>
            </tr>
        </table>
        <div id="tabs-1">
            <uc1:UsersOptionsControl ID="UsersOptionsControl1" runat="server"></uc1:UsersOptionsControl>
            <br /><br />
            <asp:PlaceHolder runat="server" ID="phUsersList" Visible="true">
                <table width="700px">
                    <tr>
                        <td colspan="6" align="left">
                            <asp:Label ID="UserListTitleLabel" runat="server" CssClass="titleFont">UserListLabel</asp:Label><br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6" align="left">
                            <br /><i>Userlist Filter Options</i><br />
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:TextBox runat="server"   ID="txtUserName" Width="110px" ToolTip="UserName" />
                        </td>
                        <td align="left">
                            <asp:TextBox runat="server" ID="txtFirstName" Width="110px" ToolTip="FirstName" />
                        </td>
                        <td align="left">
                            <asp:TextBox runat="server" ID="txtLastName" Width="110px" ToolTip="LastName" />
                        </td>
                        <td align="left">
                            <asp:TextBox runat="server" ID="txtEmail" Width="110px" ToolTip="Email" />
                        </td>
                        <td align="center">
                            <asp:CheckBox runat="server" ID="chkAdmin" Width="85px" ToolTip="CheckAdmin" />
                        </td>
                        <td align="center">
                            <asp:Button runat="server" ID="btnApplyfilter" Width="85px" OnCommand="OnApplyFilter" />
                        </td>
                    </tr>
                </table><br />
                <asp:GridView runat="server" ID="gvUsers" AutoGenerateColumns="False" AllowPaging="true"
                    OnPageIndexChanged="gvUsers_PageIndexChanged" OnPageIndexChanging="gvUsers_PageIndexChanging"
                    PageSize="20">
                    <PagerSettings Visible="true" Mode="NumericFirstLast" Position="Bottom" PageButtonCount="10"
                        NextPageText=">" PreviousPageText="<" />
                    <PagerStyle ForeColor="Black" Font-Size="X-Small"  HorizontalAlign="Center" BackColor="#C6C3C6" VerticalAlign="Bottom"
                        Width="200px" Height="5px"></PagerStyle>
                    <Columns>
                        <asp:TemplateField ItemStyle-Width="110px" HeaderStyle-Width="110px" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" FooterStyle-Width="110px">
                            <HeaderTemplate>
                                <asp:Label runat="server" ID="lbl1" Text='<%#GetPageResource("UsersTabUserName") %>' /></HeaderTemplate>
                            <ItemTemplate>
                         <!--       <asp:Label runat="server" Text='<%#(Eval("UserName")) %>' /> -->
                             <asp:LinkButton Text='<%#(Eval("UserName")) %>' runat="server" ToolTip="Edit User" OnCommand="OnUserEdit"
                                    CommandName="UserEdit" CommandArgument='<%#(Eval("UserId")) %>' CssClass="hyperlink" />
                                
                                </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="110px" HeaderStyle-Width="110px" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" FooterStyle-Width="110px">
                            <HeaderTemplate>
                                <asp:Label runat="server" Text='<%#GetPageResource("UsersTabFirstName") %>' /></HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#(Eval("FirstName")) %>' /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="110px" HeaderStyle-Width="110px" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" FooterStyle-Width="110px">
                            <HeaderTemplate>
                                <asp:Label runat="server" Text='<%#GetPageResource("UsersTabLastName") %>' /></HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#(Eval("LastName")) %>' /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="110px" HeaderStyle-Width="110px" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" FooterStyle-Width="110px">
                            <HeaderTemplate>
                                <asp:Label runat="server" Text='<%#GetPageResource("UsersTabEmail") %>' /></HeaderTemplate>
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#(Eval("Email")) %>' /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="110px" HeaderStyle-Width="110px" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" FooterStyle-Width="110px">
                            <HeaderTemplate>
                                <asp:Label runat="server" Text='<%#GetPageResource("UsersTabAdministrator") %>' /></HeaderTemplate>
                            <ItemTemplate>
                                <asp:CheckBox runat="server" Checked='<%#IsAdmin((int)Eval("UserId")) %>' Enabled="false" /></ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="110px" HeaderStyle-Width="110px" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" FooterStyle-Width="110px">
                            <HeaderTemplate>
                                <asp:Label runat="server" Text='<%#GetPageResource("UsersTabEdit") %>' /></HeaderTemplate>
                            <ItemTemplate>
                            <asp:ImageButton runat="server" ToolTip="Click to Edit" ImageUrl="~/Images/edit_pen.gif" OnCommand="OnUserEdit"
                                    CommandName="UserEdit" CommandArgument='<%#(Eval("UserId")) %>' />
                           </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:PlaceHolder>
        </div>

        <div id="tabs-2">
            <uc1:RolesManager ID="rolesManager" runat="server"></uc1:RolesManager>
        </div>

        <div id="tabs-3">
            <uc1:UserImport ID="userImport" runat="server"></uc1:UserImport>
        </div>
    </div>
</asp:Content>
