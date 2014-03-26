<%@ Import Namespace="Votations.NSurvey.WebAdmin" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="LibraryNew" Src="UserControls/LibraryNew.ascx" %>

<%@ Page Language="c#" MasterPageFile="~/Wap.master" AutoEventWireup="true" Inherits="Votations.NSurvey.WebAdmin.LibraryDirectory"
    CodeBehind="LibraryDirectory.aspx.cs" %>

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
    <input type="hidden" id="editmode" name="editmode" value="<%= editMode %>" />
    <div id="tabs" style="overflow:auto; min-height:740px;">
        <ul>
            <li><a runat="server" id="Tab1" href="#tab-1"><%# GetPageResource("LibraryList") %>  </a></li>
            <li><a runat="server" id="Tab2" href="#tab-2"><%# GetPageResource("NewTab") %></a></li>
        </ul>
       
        <div   id="tab-1"><br />
            <asp:Panel runat="server" ID="LibraryList">
                <asp:GridView ID="gridLibraries" runat="server" AllowSorting="false" AutoGenerateColumns="false"
                    Width="100%" OnSelectedIndexChanged="gridLibraries_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField ItemStyle-Width="200px">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" ToolTip="Library Templates" Text='<%# Eval("LibraryName") %>' runat="server"
                                    OnCommand="EditLibrary" CommandArgument='<%# Eval("LibraryId") %>' CssClass="hyperlink" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Description" ItemStyle-Width="400px" />
                        <asp:BoundField  DataField="QuestionCnt" ItemStyle-Width="100px" />
                        <asp:TemplateField  ItemStyle-Width="50px">
                            <ItemTemplate>
                             <!--      <asp:LinkButton ID="LinkButton2" Text="Edit" runat="server" OnCommand="EditLibraryProperties"
                                    CommandArgument='<%# Eval("LibraryId") %>' CssClass="hyperlink" /> -->
                                <asp:ImageButton ID="ImageButton2" runat="server" ToolTip="Edit Library" ImageUrl="~/Images/edit.gif" OnCommand="EditLibraryProperties"
                                    CommandArgument='<%# Eval("LibraryId") %>' />

                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
           

        <div id="LibaryEditDiv">
            <asp:Panel runat="server" ID="LibraryEdit">
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" ToolTip="Click to go Back" runat="server"
                    CssClass="buttonBack" OnCommand="EditBackButton" /><br />
                <br />
                <uc1:LibraryNew runat="server" ID="lbnEdit" />
            </asp:Panel>
        </div>
        </div>
        <div  id="tab-2">
            <uc1:LibraryNew runat="server" ID="lbnNew" />
        </div>
    </div>
</asp:Content>
