<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.FileManager" Codebehind="FileManager.aspx.cs" %>
<%@ Register TagPrefix="mbrsc" Namespace="MetaBuilders.WebControls" Assembly="Votations.NSurvey.WebAdmin" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                 <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="smallText" width="100%">
                    <tr>
                        <td colspan="2">
                            <table width="400">
                                <tr>
                                    <td width="99%">
                                        <font class="titleFont">
                                            <asp:Literal ID="UploadedFilesTitle" runat="server" Text="Uploaded files - Page"
                                                EnableViewState="False"></asp:Literal><asp:Label ID="CurrentPendingPageLabel" runat="server">1</asp:Label>&nbsp;/
                                            <asp:Label ID="TotalPendingPagesLabel" runat="server">1</asp:Label></font>
                                    </td>
                                    <td align="right">
                                
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:DataGrid ID="ValidatedFilesDataGrid" runat="server" Width="680"  AutoGenerateColumns="False"
                                AllowCustomPaging="True" PageSize="1" 
                                >
                                <AlternatingItemStyle BackColor="#F4F9FA"></AlternatingItemStyle>
                                <ItemStyle Font-Size="XX-Small" BackColor="White"></ItemStyle>
                                <HeaderStyle VerticalAlign="Middle" Font-Size="XX-Small" Font-Bold="True"></HeaderStyle>
                                <Columns>
                                    <mbrsc:RowSelectorColumn AllowSelectAll="True">
                                    </mbrsc:RowSelectorColumn>
                                    <asp:ButtonColumn Text="Download" HeaderText="Download" CommandName="download"></asp:ButtonColumn>
                                    <asp:ButtonColumn Text="Details" HeaderText="Posted by" CommandName="Select"></asp:ButtonColumn>
                                    <asp:BoundColumn DataField="FileName" HeaderText="File name"></asp:BoundColumn>
                                    <asp:BoundColumn DataField="FileType" HeaderText="Type"></asp:BoundColumn>
                                    <asp:TemplateColumn>
                                        <ItemTemplate>
                                            <%#(Math.Round(double.Parse(DataBinder.Eval(Container.DataItem, "FileSize").ToString())/1048576*100000)/100000).ToString("0.##")  + " " + GetPageResource("UploadFileSizeFormat")%>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:BoundColumn DataField="SaveDate" HeaderText="Upload date" DataFormatString="{0:dd/MM/yyyy}">
                                    </asp:BoundColumn>
                                    <asp:BoundColumn Visible="True" HeaderText="GroupGuid" DataField="GroupGuid"></asp:BoundColumn>
                                    <asp:BoundColumn Visible="True" HeaderText="VoterId" DataField="VoterId"></asp:BoundColumn>
                                </Columns>
                            </asp:DataGrid>
                            <p align="right">
                                <asp:LinkButton ID="PreviousValidatedPageLinkButton" runat="server">&lt;&lt; Previous page</asp:LinkButton>&nbsp;
                                <asp:LinkButton ID="NextValidatedPageLinkButton" runat="server">Next page >></asp:LinkButton></p>
                            <p align="left">
                                <asp:Button ID="DeleteFilesButton" runat="server" Text="Delete selected files"></asp:Button></p>
                        </td>
                    </tr>
                </table>
                <asp:PlaceHolder ID="FileExportPlaceHolder" runat="server">
                    <br />
                    <br />
                    <table class="innerText">
                        <tr>
                            <td colspan="2">
                                <font class="titleFont">
                                    <asp:Literal ID="ExportFilesTitle" runat="server" EnableViewState="False" Text="Export all files to server's directory"></asp:Literal></font><br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                <table class="innerText">
                                    <tr>
                                        <td valign="top" nowrap="nowrap" width="165">
                                            <strong>
                                                <asp:Literal ID="CreateGroupsLabel" runat="server" EnableViewState="False" Text="Create group directories"></asp:Literal></strong>
                                        </td>
                                        <td width="475">
                                            <asp:DropDownList ID="FileGroupsDropDownList" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" nowrap="nowrap" width="165">
                                            <strong>
                                                <asp:Literal ID="ServerPathLabel" runat="server" EnableViewState="False" Text="Path on server :"></asp:Literal></strong>
                                        </td>
                                        <td width="475">
                                            <asp:TextBox ID="ServerPathTextBox" runat="server" Columns="40"></asp:TextBox><br />
                                            <asp:Literal ID="PathExampleLabel" runat="server" EnableViewState="False" Text="e.g : c:\myfiledirectory"></asp:Literal>
                                            <br />
                                        </td>
                                    </tr>
                                </table>
                                <asp:Button ID="ExportFilesButton" runat="server" Text="Export to server"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </asp:PlaceHolder>
       </td>
       </tr>
       </table>
    
</asp:Content>
