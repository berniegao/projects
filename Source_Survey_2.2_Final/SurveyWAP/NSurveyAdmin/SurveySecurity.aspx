<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   validaterequest="false" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.SurveySecurity" Codebehind="SurveySecurity.aspx.cs" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="innerText">
                    <tr>
                        <td >
                            <table width="100%">
                                <tr>
                                    <td width="99%">
                                        <font class="titleFont">
                                            <asp:Literal ID="SurveySecurityTitle" runat="server" Text="Survey security" EnableViewState="False"></asp:Literal></font>
                                    </td>
                                    <td align="right">
                                        <div style="position: relative; right: 0px; top: 0px;">
                                            <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/Sec_Introduction.aspx"
                                                title="Click for more Information">
                                                <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:PlaceHolder ID="SecurityOptionsPlaceHolder" runat="server" Visible="False"><strong>
                                <asp:Label ID="UnAuthentifiedUserActionLabel" runat="server">If user has not been automatically authentified by all security addins :</asp:Label>&nbsp;</strong>
                                <asp:DropDownList
                                    ID="ActionsDropDownList" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                                <br />
                            </asp:PlaceHolder>
                            <asp:PlaceHolder ID="AddInListPlaceHolder" runat="server"></asp:PlaceHolder>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:content>
