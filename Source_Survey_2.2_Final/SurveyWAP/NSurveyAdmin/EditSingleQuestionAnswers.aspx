<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master" ValidateRequest="false" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.EditSingleQuestionAnswers" Codebehind="EditSingleQuestionAnswers.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="AnswerOptionControl" Src="UserControls/AnswerOptionControl.ascx" %>

<%@ Register TagPrefix="mbrsc" Namespace="MetaBuilders.WebControls" Assembly="Votations.NSurvey.WebAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" runat="server"
                    CssClass="buttonBack" OnCommand="OnBackButton" />

            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="smallText" width="674" border="0">
                    <tr>
                        <td colspan="2">
                            <table width="100%">
                                <tr>
                                    <td width="99%">
                                        <font class="titleFont">
                                            <asp:Literal ID="SingleQuestionAnswerEditorTitle" runat="server" EnableViewState="False"
                                                Text="Question's answers editor"></asp:Literal></font>
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
                        <td width="674">
                            <table>
                                <tr>
                                    <td class="smallText">
                                        <strong>
                                            <asp:Literal ID="DisplayAnswersOfLabel" runat="server" EnableViewState="False" Text="Display answers of :"></asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="QuestionsDropDownList"  class="QuestionsDropDownClass" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                        <asp:Button ID="EditQuestionButton" runat="server" Text="Edit question"></asp:Button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="smallText">
                                        <strong>
                                            <asp:Literal ID="EditionLanguageLabel" runat="server" Text="Edition language :"></asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="LanguagesDropdownlist" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:PlaceHolder ID="AnswerOverviewPlaceHolder" runat="server">
                    <table class="smallText" width="674" border="0">
                        <tr>
                            <td colspan="2">
                                <font class="titleFont">
                                    <asp:Literal ID="AnswersOverviewTitle" runat="server" Text="Answers overview" EnableViewState="False"></asp:Literal></font>
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:DataGrid ID="AnswersDataGrid" runat="server" Border="0" CellPadding="3" AutoGenerateColumns="False"
                                    Width="674">
                                    <AlternatingItemStyle BackColor="#F4F9FA"></AlternatingItemStyle>
                                    <ItemStyle Font-Size="XX-Small" BackColor="White"></ItemStyle>
                                    <HeaderStyle Font-Size="XX-Small" Font-Bold="True"></HeaderStyle>
                                    <Columns>
                                        <asp:TemplateColumn HeaderText="Order">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="UpImageButton" ImageUrl="~/NSurveyAdmin/images/questionupbutton.gif"
                                                    CommandName="up" runat="server"></asp:ImageButton>
                                                <asp:ImageButton ID="DownImageButton" ImageUrl="~/NSurveyAdmin/images/questiondownbutton.gif"
                                                    CommandName="down" runat="server"></asp:ImageButton>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="Selected">
                                            <ItemTemplate>
                                                <mbrsc:GlobalRadioButton GroupName="GlobalSelected" ID="DefaultRadio" Enabled="False"
                                                    Visible="false" runat="server" />
                                                <asp:CheckBox ID="DefaultCheckBox" Enabled="False" Visible="false" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                         <asp:TemplateColumn HeaderText="Text" >
                                            <ItemTemplate >
                                               <asp:Label runat="server" Text='<%#Eval("AnswerText") %>' ID="lblText"  CssClass="AnswerText"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                    
                                        <asp:TemplateColumn HeaderText="Type">
                                            <ItemTemplate>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="Rating">
                                            <ItemTemplate>
                                                <asp:Label ID="RatingLabel" runat="server"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:TemplateColumn HeaderText="Score">
                                            <ItemTemplate>
                                                <asp:Label ID="ScorePoint" runat="server"></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateColumn>
                                        <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel"
                                            EditText="Edit"></asp:EditCommandColumn>
                                        <asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
                                    </Columns>
                                </asp:DataGrid>
                                <br />
                                <asp:Button ID="AddNewAnswerButton" runat="server" Text="Add new answer"></asp:Button>
                            </td>
                        </tr>
                    </table>
                    <br />
                </asp:PlaceHolder>
                <uc1:AnswerOptionControl ID="AnswerOption" runat="server" Visible="False"></uc1:AnswerOptionControl>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
