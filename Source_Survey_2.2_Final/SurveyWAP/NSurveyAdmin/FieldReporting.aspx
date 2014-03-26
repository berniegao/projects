<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.FieldReporting" Codebehind="FieldReporting.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table id="idFieldReportingTable" class="TableLayoutContainer">
        <tr>
            <td>
                <br />
                <asp:RadioButtonList runat="server" ID="rblReports" RepeatDirection="Horizontal"
                    CellSpacing="4" OnSelectedIndexChanged="rbListSelectedIndexChanged" AutoPostBack="true"
                    Width="540px">
                    <asp:ListItem Text="GraphicalReports" Value="GR"></asp:ListItem>
                    <asp:ListItem Text="VoterReports" Value="TR" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="CrossTabulationReports" Value="CTR"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <table class="innerText">
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td nowrap="nowrap" style="width: 570px">
                                       
                                        <font class="titleFont">
                                            <asp:Literal ID="FieldReportTitle" runat="server" EnableViewState="False">Field entries report - Page</asp:Literal>
                                            <asp:Label ID="CurrentPageLabel" runat="server">1</asp:Label>&nbsp;/
                                            <asp:Label ID="TotalPagesLabel" runat="server">1</asp:Label></font>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="overflow: auto; padding: 0px; border: 0px solid black;">
                                <table class="innerText">
                                    <tr>
                                        <td>
                                            <asp:DataGrid ID="FieldReportDataGrid" runat="server" AllowCustomPaging="True" GridLines="Vertical"
                                                ForeColor="Black" CssClass="textresult">
                                                <SelectedItemStyle Font-Bold="True" Wrap="False" ForeColor="White" BackColor="#000099">
                                                </SelectedItemStyle>
                                                <EditItemStyle Wrap="False"></EditItemStyle>
                                                <AlternatingItemStyle Wrap="False" ForeColor="Black" BackColor="#F4F9FA"></AlternatingItemStyle>
                                                <ItemStyle Wrap="False" BackColor="white" ForeColor="Black" Font-Size="xx-small">
                                                </ItemStyle>
                                                <HeaderStyle Font-Size="xx-small" Font-Bold="True" Wrap="False" ForeColor="White"
                                                    BackColor="Black"></HeaderStyle>
                                                <FooterStyle Wrap="False" BackColor="#CCCCCC"></FooterStyle>
                                                <Columns>
                                                    <asp:ButtonColumn ButtonType="PushButton" Text="Details" CommandName="Select" />
                                                    <asp:ButtonColumn ButtonType="PushButton" Text="Delete" CommandName="Delete"></asp:ButtonColumn>
                                                </Columns>
                                                <PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#999999" Wrap="False">
                                                </PagerStyle>
                                            </asp:DataGrid>
                                            <asp:LinkButton ID="PreviousPageLinkButton" runat="server"><< Previous page</asp:LinkButton>&nbsp;
                                            <asp:LinkButton ID="NextPageLinkButton" runat="server">Next page >></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
