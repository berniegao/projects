<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" ValidateRequest="false"
    AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.InsertQuestion"
    CodeBehind="InsertQuestion.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" ToolTip="Click to go Back" runat="server"
                    CssClass="buttonBack" OnCommand="OnBackButton" />
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
              <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="innerText">
                    <tr>
                        <td colspan="2">
                            <font class="titleFont">
                                <asp:Literal ID="NewQuestionTitle" runat="server" EnableViewState="False">New question</asp:Literal></font>
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
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    <b>ID: &nbsp;</b>
                                                </td>
                                                <td>
                                                    <asp:TextBox runat="server" ID="txtQuestionID"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" nowrap="nowrap">
                                        <b>
                                            <asp:Literal ID="QuestionLabel" runat="server" EnableViewState="False">Question</asp:Literal></b><br />

                                        <CKEditor:CKEditorControl ID="QuestionFreeTextBox" BasePath="~/ckeditor" runat="server">
                                        </CKEditor:CKEditorControl>

                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td nowrap="nowrap">
                                        <b>
                                            <asp:Literal ID="TypeLabel" runat="server" EnableViewState="False">Type</asp:Literal></b>
                                        <br />
                                        <asp:DropDownList ID="QuestionDropDownList" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                                            <br /><asp:Button ID="AddQuestionButton" runat="server" Text="Add new question"></asp:Button>

                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <table class="innerText">
                    <tr>
                        <td><br />
                            <font class="titleFont">
                                <asp:Literal ID="CopyExistingQuestionTitle" runat="server" EnableViewState="False">Copy existing question</asp:Literal></font>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td valign="top" nowrap="nowrap" height="13">
                                        <asp:DropDownList Width="225" ID="SourceDropDownList" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td><br />
                                        <asp:DropDownList Width="225" ID="SurveyListDropdownlist" runat="server" AutoPostBack="True"
                                            Visible="False">
                                        </asp:DropDownList>
                                        <asp:DropDownList Width="225" ID="LibraryDropDownList" runat="server" Visible="False" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td nowrap="nowrap"><br />
                                        <asp:DropDownList Width="225" ID="SurveyQuestionListDropdownlist" runat="server" Visible="False">
                                        </asp:DropDownList>
                                        <asp:DropDownList Width="225" ID="LibraryQuestionsDropDownList" runat="server" Visible="False">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table><br />
                    <asp:Button ID="CopyExistingQuestionButton" runat="server" Text="Copy question to this survey"
                    Enabled="False" onclick="CopyExistingQuestionButton_Click1"></asp:Button>

                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:PlaceHolder ID="ImportXmlQuestionPlaceHolder" runat="server">
                    <table class="innerText">
                        <tr>
                            <td><br />
                                <font class="titleFont">
                                    <asp:Literal ID="ImportQuestionTitle" runat="server" EnableViewState="False" Text="Import XML question"></asp:Literal></font>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>

                            <td>
                                <table class="innerText">
                                    <tr>
                                        <td valign="top" nowrap="nowrap" width="55">
                                            <input id="ImportFile" type="file" runat="server"/>
                                        </td>
                                    </tr>
                                </table><br />
               <asp:Button ID="ImportXMLButton" runat="server" Text="Import XML"></asp:Button>


                            </td>
                        </tr>
                    </table>
                                    </asp:PlaceHolder>
            </td>
        </tr>
    </table>
</asp:Content>
