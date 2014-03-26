<%@ Page Title="" Language="C#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"
    AutoEventWireup="true" CodeBehind="QuestionGroups.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.QuestionGroups" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function ConfirmGroupDelete() {
            return confirm('<%= GetPageResource("GroupListDeleteConfirm") %>');
        }

    </script>

    <table class="TableLayoutContainer">
        <tr>
            <td> <br />
                <asp:Label ID="QGroupsExlpainLabel" runat="server" CssClass="normal">Note: Question groups are used for rating questions.</asp:Label>
            </td>
        </tr>
        <tr>
            <td> <br /><br />
                <asp:Label ID="Labellanguage" runat="server">Language: </asp:Label>
                <asp:DropDownList runat="server" ID="ddlLanguage" AutoPostBack="true" Width="220" OnSelectedIndexChanged="ddlLanguage_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
        <td> <br /><asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
        </td>
        </tr>
        <tr>
            <td><br /><br />
                <asp:Label ID="Label2" runat="server">Groups: </asp:Label>
                <asp:LinkButton runat="server" ID="lbAddNew" OnClick="OnAddNewGroup" Text="Add new"></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView runat="server" ID="gvGroups" Width="450" AutoGenerateColumns="false" ShowFooter="false">
                    <Columns>
                        <asp:TemplateField HeaderText="Order" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                            ItemStyle-Wrap="true" ItemStyle-Width="230px">
                            <ItemTemplate>
                                <span>
                                    <asp:RadioButton runat="server" ID="rbButton" Checked="false" OnCheckedChanged="OnGroupSelectionChanged"
                                        GroupName="rbGroup" AutoPostBack="true" value='<%#string.Format("{0},{1}",Eval("ID"),Eval("GroupName"))%>' /></span>
                                <span>
                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow-green-up.gif" OnCommand="OnReorderGroup"
                                        CommandName="ReorderGroup" CommandArgument='<%#string.Format("Up,{0}", Eval("ID"))%>' /></span><span>
                                            <asp:ImageButton runat="server" ImageUrl="~/Images/arrow-red-down.gif" OnCommand="OnReorderGroup"
                                                CommandName="ReorderGroup" CommandArgument='<%#string.Format("Down,{0}", Eval("ID"))%>' /></span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                            ItemStyle-Wrap="true" ItemStyle-Width="230px">
                            <ItemTemplate>
                                <asp:Label runat="server" Text='<%#Eval("GroupName")%>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtGroupName"  Width="200" Text='<%#Eval("GroupName")%>'></asp:TextBox></EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox runat="server" ID="txtGroupName" Width="320" Text='<%#Eval("GroupName")%>'></asp:TextBox></FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Wrap="true" ItemStyle-Width="230px" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#GetPageResource("GroupListEdit")%>'
                                    OnCommand="OnGroupEdit" CommandName="GroupEdit" CommandArgument='<%#Eval("ID")%>'
                                    CssClass="hyperlink" /></ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton runat="server" ID="lbEditGroupOK" Text='OK' OnCommand="OnGroupEditOK"
                                    CommandName="GroupEdit" CommandArgument='<%#Eval("ID")%>'></asp:LinkButton></EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton runat="server" ID="lbEditGroupOK" Text='OK' OnCommand="OnGroupEditOK"
                                    CommandName="GroupInsert" CommandArgument=''>
                                </asp:LinkButton></FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Wrap="true" ItemStyle-Width="230px" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" Text='<%#GetPageResource("SurveyDelete")%>'
                                    OnClientClick="return ConfirmGroupDelete();" OnCommand="OnGroupDelete" CommandName="GroupDelete"
                                    CommandArgument='<%#Eval("ID")%>' CssClass="hyperlink" /></ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton runat="server" ID="lbEditGroupCancel" Text='Cancel' OnClick="OnGroupEditCancel"></asp:LinkButton></EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton runat="server" ID="lbEditGroupCancel" Text='Cancel' OnClick="OnGroupEditCancel"></asp:LinkButton></FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td> <br /><br />
                <asp:Label ID="Label4" runat="server">Sub-Groups for: </asp:Label>
                <asp:Label ID="lblGroupName" runat="server"></asp:Label>
                <asp:LinkButton runat="server" ID="lbAddNewSubGroup" OnClick="OnAddNewSubGroup" Text="Add new"></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView runat="server" ID="gvSubGroup" Width="450" AutoGenerateColumns="false" ShowHeaderWhenEmpty="true">
                    <Columns>
                        <asp:TemplateField HeaderText="Order" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                            ItemStyle-Wrap="true" ItemStyle-Width="180px">
                            <ItemTemplate>
                                <span>
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/arrow-green-up.gif"
                                        OnCommand="OnReorderSubGroup" CommandName="ReorderGroup" CommandArgument='<%#string.Format("Up,{0}", Eval("ID"))%>' /></span>
                                <span>
                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow-red-down.gif" OnCommand="OnReorderSubGroup"
                                        CommandName="ReorderGroup" CommandArgument='<%#string.Format("Down,{0}", Eval("ID"))%>' /></span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Name" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                            ItemStyle-Wrap="true" ItemStyle-Width="180px">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#Eval("GroupName")%>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox runat="server" ID="txtSubGroupName" Text='<%#Eval("GroupName")%>'></asp:TextBox></EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox runat="server" ID="txtSubGroupName" Text='<%#Eval("GroupName")%>'></asp:TextBox></FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Wrap="true" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Text='<%#GetPageResource("GroupListEdit")%>'
                                    OnCommand="OnSubGroupEdit" CommandName="GroupEdit" CommandArgument='<%#Eval("ID")%>'
                                    CssClass="hyperlink" /></ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton runat="server" ID="lbEditGroupOK" Text='OK' OnCommand="OnSubGroupEditOK"
                                    CommandName="GroupEdit" CommandArgument='<%#Eval("ID")%>'></asp:LinkButton></EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton runat="server" ID="lbInsertSubGroupOK" Text='OK' OnCommand="OnSubGroupEditOK"
                                    CommandName="GroupInsert">
                                </asp:LinkButton></FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Wrap="true" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center"
                            HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" Text='<%#GetPageResource("SurveyDelete")%>'
                                    OnClientClick="return ConfirmGroupDelete();" OnCommand="OnSubGroupDelete" CommandName="GroupDelete"
                                    CommandArgument='<%#Eval("ID")%>' CssClass="hyperlink" /></ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton runat="server" ID="lbEditGroupCancel" Text='Cancel' OnClick="OnSubGroupEditCancel"></asp:LinkButton></EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton runat="server" ID="lbEditGroupCancel" Text='Cancel' OnClick="OnSubGroupEditCancel"></asp:LinkButton></FooterTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
