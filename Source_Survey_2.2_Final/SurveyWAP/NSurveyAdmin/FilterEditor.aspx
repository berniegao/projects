
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.FilterEditor" Codebehind="FilterEditor.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="FilterOptionControl" Src="UserControls/FilterOptionControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <table class="Innertext">
                    <tr>
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td width="400">
                                        <font class="titleFont">
                                            <asp:Literal ID="FilterBuilderTitle" runat="server" EnableViewState="False">Results filter builder</asp:Literal></font>
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
                            <table class="Innertext">
                                <tr>
                                    <td>
                                        <p>
                                            <asp:Literal ID="SelectFilteraLabel" runat="server" EnableViewState="False">Select a filter to edit / view :</asp:Literal>
                                            <asp:DropDownList ID="FilterDropDownList" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                        </p>
                                        <p>
                                            <b>
                                                <asp:HyperLink ID="CreateFilterHyperLink" runat="server">Click here to create a new filter ...</asp:HyperLink></b></p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
                <uc1:FilterOptionControl ID="FilterOption" Visible="false" runat="server"></uc1:FilterOptionControl>
            </td>
        </tr>
    </table>
</asp:Content>
