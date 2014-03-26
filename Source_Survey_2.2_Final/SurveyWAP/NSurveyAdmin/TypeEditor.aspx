<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   ValidateRequest="false" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.TypeEditor" Codebehind="TypeEditor.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="TypeOptionControl" Src="UserControls/TypeOptionControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                <table class="Innertext">
                    <tr>
                        <td style="width:660px" align="left">
                            <font class="titleFont">
                                <asp:Literal ID="AnswerTypeBuilderTitle" runat="server" EnableViewState="False">Answer type builder</asp:Literal></font>
                        </td>
                        <td align="right" style="width: 25px">
                            <div style="position: relative; right: 0px; top: 0px;">
                                <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/FieldT_Introduction.aspx"
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
                                    <td>
                                        <br />
                                        <asp:Literal ID="TypeToEditLabel" runat="server" EnableViewState="False">Select a type to edit / view : </asp:Literal>
                                        &nbsp;&nbsp;
                                        <asp:DropDownList ID="TypesDropDownList" width="200" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                        &nbsp;
                                        <asp:Literal ID="BuiltInTypeNotEditedLabel" runat="server" EnableViewState="False">(built in types cannot be edited)</asp:Literal>
                                        <br />
                                        &nbsp;<br />
                                        <asp:HyperLink ID="CreateTypeHyperLink" runat="server">Click here to create a new type ...</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
                <uc1:TypeOptionControl ID="TypeOption" runat="server" Visible="False"></uc1:TypeOptionControl>
            </td>
        </tr>
    </table>
</asp:Content>
