<%@ Page Title="" Language="C#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"
    AutoEventWireup="true" CodeBehind="SurveyTokenSecurity.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.SurveyTokenSecurity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function ConfirmSelectedTokenDelete() {
            return confirm('<%= GetPageResource("msgDeleteSelectedTokens") %>');
        }

        function ConfirmAllTokenDelete() {
            return confirm('<%= GetPageResource("msgDeleteAllTokens") %>');
        }
    </script>
    <table class="TableLayoutContainer">
        <tr>
            <td colspan="2" class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <font class="titleFont">
                    <asp:Literal ID="literalTokenSecurityTitle" runat="server" Text="Data Import" EnableViewState="False"></asp:Literal></font>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGenerateCountPrompt" runat="server" Text="Number of tokens:" />&nbsp;&nbsp;
                <asp:TextBox runat="server" ID="txtNumTokens"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" ID="btnGenerate" Text="Generate" CssClass="StandardButton"
                    OnClick="btnGenerate_Click" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTokensCreatedPrompt" runat="server" Text="Number of Tokens created:" />&nbsp;&nbsp;
                <asp:Label ID="lblTokensCreated" runat="server" Text="" /><br />
                <asp:Label ID="lblTokensAvailPrompt" runat="server" Text="Number of Tokens available:" />&nbsp;&nbsp;
                <asp:Label ID="lblTokensAvailable" runat="server" Text="" /><br />
                <asp:Label ID="lblTokensUsedPrompt" runat="server" Text="Number of Tokens used:" />&nbsp;&nbsp;
                <asp:Label ID="lblTokensUsed" runat="server" Text="" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td style="width: 112px">
                            <asp:Literal ID="ltFilterToken" runat="server" Text="By Token"></asp:Literal>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtToken"></asp:TextBox>
                        </td>
                        <td style="width: 110px">
                            <asp:Literal ID="ltFilterType" runat="server" Text="By Token Type"></asp:Literal>
                        </td>
                        <td style="width: 48px">
                            <asp:DropDownList runat="server" ID="ddlTokenOptions">
                                <asp:ListItem Text="UnUsed Only" Value="Unused"></asp:ListItem>
                                <asp:ListItem Text="Used Only" Value="Used"></asp:ListItem>
                                <asp:ListItem Text="All Tokens" Value="All"></asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td valign="middle"  >
                            <asp:Literal ID="ltIssuedOn" runat="server" Text="By Issued Date"></asp:Literal>
                        </td>
                        <td valign="middle" >
                            <asp:TextBox runat="server" ID="txtIssuedOn"></asp:TextBox>
              
                        </td>
                        <td valign="middle"  colspan="2" >
                            <asp:Button CssClass="StandardButton" runat="server" ID="btnApplyFilter" Text="Apply Filter"
                                OnClick="btnApplyFilter_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
       <tr><td></td></tr>
        <tr>
            <td>
                <asp:ListView ID="lvTokens" runat="server" GroupItemCount="2" OnPagePropertiesChanged="lvTokens_PagePropertiesChanged">
                    <LayoutTemplate>
                        <table  class="BorderedTable" width="690px" cellspacing="0">
                            <asp:PlaceHolder ID="GroupPlaceHolder" runat="server"></asp:PlaceHolder>
                            <asp:DataPager PageSize="30" PagedControlID="lvTokens" ID="DataPager2" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField PreviousPageText="<" ShowNextPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField NextPageText=">" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </table>
                    </LayoutTemplate>
                    <GroupTemplate>
                        <tr>
                            <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                        </tr>
                    </GroupTemplate>
                    <ItemTemplate>
                        <td  class="<%# (Container.DisplayIndex/2) % 2 == 0 ? "" : "AlternateStyle" %>" width="50%"
                            style="padding-right: 6px;">
                            <table>
                                <td>
                                    <asp:Literal ID="ltTokenId" runat="server" Visible="false" Text='<%# Eval("TokenId") %>'></asp:Literal>
                                    <asp:CheckBox ID="chkDelete" runat="server" />
                                </td>
                                <td>
                                    <asp:TextBox Width="63px" ID="txtCreationDate" ReadOnly="true" Text='<%#Eval("CreationDate","{0:d}")%>'
                                        runat="server"> </asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox Width="170px" ID="txtToken" ReadOnly="true" Text='<%#Eval("Token")%>'
                                        runat="server"> </asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox Width="12px" ID="chkUsed" ReadOnly="true"  BackColor='<%#((bool)Eval("Used"))? System.Drawing.Color.Red : System.Drawing.Color.Green%>'
                                        runat="server"></asp:TextBox>
                                </td>
                            </table>
                        </td>
                    </ItemTemplate>
             
                </asp:ListView>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <br />
                <asp:Button runat="server" ID="btnDeleteSelected" OnClientClick="return ConfirmSelectedTokenDelete();"
                    Text="Delete selected" CssClass="LongButton" OnClick="btnDeleteSelected_Click" />
                <asp:Button CssClass="LongButton" runat="server" OnClientClick="return ConfirmAllTokenDelete();"
                    ID="btnDeleteAll" Text="Delete all" OnClick="btnDeleteAll_Click" />
                <asp:Button CssClass="LongButton" runat="server" ID="btnExport" 
                    Text="Export Tokens" onclick="btnExport_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
