<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.TypeOptionControl"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="TypeOptionControl.ascx.cs" %>
<table class="uiTable" width="600px" border="0">
    <tr>
        <td>
            <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
        </td>
    </tr>
</table>
<table class="innerText">
    <tr>
        <td>
            <font class="titleFont">
                <asp:Label ID="fieldTypeOptionTitleLabel" runat="server">Label</asp:Label></font>
        </td>
    </tr>
    <tr>
        <td>
            <br />
            <table class="innerText">
                <tr>
                    <td width="170px">
                        <strong>
                            <asp:Literal ID="FieldNameLabel" runat="server" EnableViewState="False">Field name:</asp:Literal></strong>
                    </td>
                    <td width="440px">
                        <asp:TextBox ID="TitleTextBox" Columns="50" MaxLength="48" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="170px">
                        <strong>
                            <asp:Literal ID="DataSourceLabel" runat="server" EnableViewState="False" Text="Use a datasource :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="DataSourceDropDownList" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="170px">
                        <asp:Label ID="XmlFileNameLabel" runat="server" Font-Bold="True" Visible="False">Xml filename :</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="XmlFileNameTextbox" runat="server" Visible="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td valign="top" width="170px">
                        <asp:Label ID="SqlQueryLabel" runat="server" Font-Bold="True" Visible="False">Sql query *:</asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="SqlQueryTextbox" runat="server" Visible="False" Columns="50" TextMode="MultiLine"
                            Rows="5"></asp:TextBox>
                        <asp:Label ID="SqlQueryInfoLabel" Visible="False" runat="server"><br />*First two column will be used as value and text</asp:Label>
                    </td>
                </tr>
                <asp:PlaceHolder ID="FullOptionPlaceholder" runat="server" Visible="true">
                    <tr>
                        <td width="170px">
                            <strong>
                                <asp:Literal ID="AllowSelectionLabel" runat="server" EnableViewState="False">Allow selection:</asp:Literal></strong>
                        </td>
                        <td>
                            <asp:CheckBox ID="SelectionTypeCheckBox" runat="server" AutoPostBack="True"></asp:CheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" width="170px">
                            <strong>
                                <asp:Literal ID="FieldEntryLabel" runat="server" EnableViewState="False">Field entry 
            :</asp:Literal></strong>
                        </td>
                        <td>
                            <asp:CheckBox ID="FieldTypeCheckBox" runat="server" AutoPostBack="True"></asp:CheckBox>
                        </td>
                    </tr>
                    <asp:PlaceHolder ID="FieldOptionsPlaceHolder" runat="server" Visible="false">
                        <tr>
                            <td valign="top" width="170px">
                                <strong>
                                    <asp:Literal ID="RichFieldLabel" runat="server" EnableViewState="False">Rich field:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:CheckBox ID="RichFieldCheckBox" runat="server"></asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="170px">
                                <strong>
                                    <asp:Literal ID="FieldWidthLabel" runat="server" EnableViewState="False">Field width 
            :</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="FieldWidthTextBox" runat="server" size="3" MaxLength="3">20</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="170px">
                                <strong>
                                    <asp:Literal ID="FieldHeightLabel" runat="server" EnableViewState="False">Field height 
            :</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="FieldHeightTextBox" runat="server" size="3" MaxLength="3">0</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="170px">
                                <strong>
                                    <asp:Literal ID="FieldLengthLabel" runat="server" EnableViewState="False">Field max. length:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="FieldMaxLengthTextBox" runat="server" size="3" MaxLength="3">255</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" width="170px">
                                <strong>
                                    <asp:Literal ID="ShownInResultsLabel" runat="server" EnableViewState="False">Field shown in results 
            :</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:CheckBox ID="FieldShownInResultsCheckBox" runat="server"></asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="170px">
                                <strong>
                                    <asp:Literal ID="JavascriptFunctionLabel" runat="server" EnableViewState="False">Javascript function name 
            :</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="JavascriptFunctionNameTextBox" Columns="50" MaxLength="45" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="170px">
                                <strong>
                                    <asp:Literal ID="JavascriptErrorMessageLabel" runat="server" EnableViewState="False">Error message 
            :</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="JavascriptErrorMessageTextBox" Columns="84" MaxLength="80" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" nowrap="nowrap" width="170px">
                                <strong>
                                    <asp:Literal ID="JavascriptCodeLabel" runat="server" EnableViewState="False">Javascript code :</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="JavascriptTextBox" runat="server" MaxLength="999" Width="450" Rows="8" TextMode="MultiLine"
                                    Columns="60"></asp:TextBox>
                            </td>
                        </tr>
                    </asp:PlaceHolder>
                </asp:PlaceHolder>
            </table>
        </td>
    </tr>
</table>
<asp:Button ID="CreateTypeButton" runat="server" Text="Create type"></asp:Button>
<asp:Button ID="ApplyChangesButton" runat="server" Text="Apply changes"></asp:Button>
<asp:Button ID="DeleteTypeButton" runat="server" Text="Delete type"></asp:Button>
<asp:Button ID="MakeBuiltInButton" Visible="False" runat="server" Text="Make Built In">
</asp:Button>
