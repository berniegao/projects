<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.MultiLanguagesPage" Codebehind="MultiLanguages.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="LanguageListControl" Src="UserControls/LanguageListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                 <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="innerText">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="99%">
                                        <font class="titleFont">
                                            <asp:Literal ID="MultiLanguagesTitle" runat="server" EnableViewState="False" Text="Multi-Languages settings"></asp:Literal></font>
                                    </td>
                                    <td align="right">
                                        <div style="position: relative; right: 0px; top: 0px;">
                                            <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/Multi-Languages Settings.aspx"
                                                title="Click for more Information">
                                                <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td nowrap="nowrap" width="180px">
                                        <strong>
                                            <asp:Literal ID="EnableMultiLanguagesLabel" runat="server" EnableViewState="False"
                                                Text="Enable multi-languages :"></asp:Literal></strong>
                                    </td>
                                    <td width="480px">
                                        <asp:CheckBox ID="MultiLanguagesCheckBox" runat="server" AutoPostBack="True"></asp:CheckBox>
                                    </td>
                                </tr>
                                <asp:PlaceHolder ID="MultiLanguagesPlaceHolder" Visible="False" runat="server">
                                    <tr>
                                        <td width="180px">
                                            <strong>
                                                <asp:Literal ID="MultiLanguagesModeLabel" runat="server" EnableViewState="False"
                                                    Text="Multi languages mode :"></asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="MultiLanguagesModeDropDownList" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="180px" valign="top">
                                            <strong>
                                                <asp:Literal ID="VariableNameLabel" runat="server" Visible="False" Text="Variable name :"></asp:Literal></strong>
                                        </td>
                                        <td>
                                            
                                                <asp:TextBox ID="VariableNameTextBox" runat="server" Visible="False"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="VariableNameUpdateButton" runat="server" Visible="False" Text="Update">
                                                </asp:Button>
                                                <br />
                                                <asp:Label ID="VariableNameInfoLabel" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" width="180px"><br />
                                            <strong>
                                                <asp:Literal ID="EnabledLanguagesLabel" runat="server" EnableViewState="False" Text="Enabled languages :"></asp:Literal></strong>
                                        </td>
                                        <td><br />
                                            <table width="480px">
                                                <tr>
                                                    <td style="width:200px" align="left" valign="top">
                                                        <asp:ListBox Width="200px" ID="DisabledLanguagesListBox" runat="server" AutoPostBack="True"></asp:ListBox>
                                                    </td>
                                                    <td style="width:80px" align="center">
                                                        &gt;&gt;<br />
                                                        &lt;&lt;
                                                        &nbsp;&nbsp;
                                                    </td>
                                                    <td style="width:200px" align="right" valign="top">
                                                        <asp:ListBox Width="200px" ID="EnabledLanguagesListBox" runat="server" AutoPostBack="True"></asp:ListBox>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="180px"><br />
                                            <strong>
                                                <asp:Literal ID="DefaultLanguageLabel" runat="server" EnableViewState="False" Text="Set default language to :"></asp:Literal></strong>
                                        </td>
                                        <td><br />
                                            <asp:DropDownList Width="200px" ID="DefaultLanguageDropdownlist" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                </asp:PlaceHolder>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:content>
