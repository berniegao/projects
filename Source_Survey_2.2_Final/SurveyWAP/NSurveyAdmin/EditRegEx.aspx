<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" ValidateRequest="false" Inherits="Votations.NSurvey.WebAdmin.EditRegEx" Codebehind="EditRegEx.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="RolesOptionsControl" Src="UserControls/RolesOptionsControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                <table class="uiTable" width="700" border="0">
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
                                <asp:Literal ID="RegExLibraryTitle" runat="server" Text="RegEx library" EnableViewState="False"></asp:Literal></font>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td>
                                        <br />
                                            <asp:Literal ID="RegExToEditLabel" runat="server" Text="Select a regex to edit / view :"
                                                EnableViewState="False"></asp:Literal><br />
                                            <asp:DropDownList ID="RegExDropDownList" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                            &nbsp; <b>
                                                <asp:LinkButton ID="CreateRegExHyperLink" runat="server">Click here to create a new regex</asp:LinkButton><br />
                                                <asp:HyperLink ID="RegExLibComHyperLink" runat="server" Target="_blank" NavigateUrl="http://www.regexlib.com">Check http://www.regexlib.com for more regular expressions</asp:HyperLink>
                                            </b>
                                        
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <asp:PlaceHolder ID="RegExOptionsPlaceHolder" Visible="False" runat="server">
                    <table class="smallText" width="700">
                        <tr>
                            <td><br />
                                <font class="titleFont">
                                    <asp:Label ID="RegExOptionTitleLabel" runat="server">Label</asp:Label></font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="normal" width="100%">
                                    <tr>
                                        <td valign="top" width="160px">
                                            <strong>
                                                <asp:Literal ID="RegExNameLabel" runat="server" Text="Name :" EnableViewState="False"></asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="RegExDescriptionTextbox" Width="300" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" width="160">
                                            <strong>
                                                <asp:Literal ID="RegularExpressionLabel" runat="server" Text="Regular expression :"
                                                    EnableViewState="False"></asp:Literal></strong>
                                        </td>
                                        <td width="440px">
                                            <asp:TextBox ID="RegularExpressionTextbox" runat="server" Width="400" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td valign="top" width="160px">
                                            <strong>
                                                <asp:Literal ID="RegExErrorMessageLabel" runat="server" Text="Error message :" EnableViewState="False"></asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ErrorMessageTextbox" runat="server" Width="400" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="CreateNewRegExButton" runat="server" Text="Create regex"></asp:Button>
                    <asp:Button ID="ApplyChangesButton" runat="server" Text="Apply changes"></asp:Button>
                    <asp:Button ID="DeleteRegExButton" runat="server" Text="Delete regex"></asp:Button>
                    <asp:Button ID="MakeBuiltInRegExButton" runat="server" Text="Make built in"></asp:Button>
                    <asp:Button ID="CancelRegExButton" runat="server" Text="Cancel"></asp:Button></asp:PlaceHolder>
                <table class="smallText" width="700">
                    <tr>
                        <td><br /><br />
                            <font class="titleFont">
                                <asp:Label ID="TestRegExTitle" runat="server">Test a regular expression</asp:Label></font>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <table class="normal" width="100%">
                                <tr>
                                    <td valign="top" width="160px"><br />
                                        <strong>
                                            <asp:Literal ID="RegularExpressionTestLabel" runat="server" Text="Regular expression :"
                                                EnableViewState="False"></asp:Literal></strong>
                                    </td>
                                    <td width="440px"><br />
                                        <asp:TextBox ID="TestExpressionTextbox" runat="server" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="160px">
                                        <strong>
                                            <asp:Literal ID="TestExpressionValueLabel" runat="server" Text="Value to test :"
                                                EnableViewState="False"></asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TestValueTextBox" runat="server" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="TextRegExButton" runat="server" Text="Test expression"></asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
