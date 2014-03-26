<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>

<%@ Page Language="c#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master" AutoEventWireup="false"
    ValidateRequest="false" Inherits="Votations.NSurvey.WebAdmin.EditMatrixQuestion"
    CodeBehind="EditMatrixQuestion.aspx.cs" %>



<%@ Register src="UserControls/QuestionExtraLinks.ascx" tagname="QuestionExtraLinks" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" runat="server"
                    CssClass="buttonBack" OnCommand="OnBackButton" />
                    &nbsp;&nbsp;  <uc2:QuestionExtraLinks ID="QuestionExtraLinks1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label></asp:Label>
              
                <table class="innerText">
                    <tr>
                        <td colspan="2">
                            <font class="titleFont">
                                <asp:Literal ID="EditMatrixQuestionTitle" runat="server" EnableViewState="False">Edit matrix question</asp:Literal></font>
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
                            <table class="innerText" style="line-height: 23px;">
                                <tr>
                                    <td colspan="2">
                                        <CKEditor:CKEditorControl ID="QuestionFreeTextBox" BasePath="~/ckeditor" runat="server">
                                        </CKEditor:CKEditorControl>
                                    </td>
                                </tr>
                            </table>
                            <table class="innerText" style="line-height: 23px;">
                                <tr>
                                    <td class="TitleDisplayClass" style="width: 145px">
                                        <br />
                                        <strong>
                                            <asp:Literal ID="EditionLanguageLabel" runat="server" Text="Edition language :"></asp:Literal></strong>
                                    </td>
                                    <td style="width: 29px">
                                        <br />
                                        <asp:DropDownList ID="LanguagesDropdownlist" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <strong>
                                            <asp:Literal ID="IDLabel" runat="server" EnableViewState="False">ID:</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtQuestionID"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="TitleDisplayClass" style="width: 145px">
                                        <strong>
                                            <asp:Literal ID="MultipleChoicesMatrixLabel" runat="server" EnableViewState="False">Multiple choices matrix:</asp:Literal></strong>
                                    </td>
                                    <td style="width: 29px">
                                        <asp:CheckBox ID="MultipleChoiceCheckbox" runat="server"></asp:CheckBox>
                                    </td>
                                    <td>
                                        <strong>
                                            <asp:Literal ID="AliasLabel" runat="server" EnableViewState="False">Alias:</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtAlias"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="TitleDisplayClass" style="width: 145px">
                                        <strong>
                                            <asp:Literal ID="AnswerRatingLabel" runat="server" EnableViewState="False">Enable answer rating:</asp:Literal></strong>
                                    </td>
                                    <td style="width: 29px">
                                        <asp:CheckBox ID="RatingCheckbox" AutoPostBack="true" runat="server"></asp:CheckBox>
                                    </td>
                                    <td>
                                        <strong>
                                            <asp:Literal ID="HelpTextLabel" runat="server" EnableViewState="False">Help Text:</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox runat="server" ID="txtHelpText" TextMode="MultiLine" Class="HelpTextClass"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="TitleDisplayClass" style="width: 145px">
                                        <strong>
                                            <asp:Literal ID="AllowMultipleMatrixSectionsLabel" runat="server" EnableViewState="False"
                                                Text="Repeatable matrix section :"></asp:Literal></strong>
                                    </td>
                                    <td style="width: 29px">
                                        <asp:CheckBox ID="RepeatSectionCheckbox" runat="server" AutoPostBack="True"></asp:CheckBox>
                                    </td>
                                    <td>
                                        <strong>
                                            <asp:Literal ID="ShowHelpTextLabel" runat="server" EnableViewState="False">Show Help Text:</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:CheckBox runat="server" ID="chbShowHelpText"></asp:CheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="TitleDisplayClass" style="width: 145px">
                                        <strong>
                                            <asp:Literal ID="MinSelectionMatrixLabel" runat="server" EnableViewState="False"></asp:Literal></strong>
                                    </td>
                                    <td style="width: 29px">
                                        <asp:DropDownList ID="MinSelectionDropDownList" runat="server">
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="7">7</asp:ListItem>
                                            <asp:ListItem Value="8">8</asp:ListItem>
                                            <asp:ListItem Value="9">9</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19">19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                            <strong>
                                                <asp:Literal ID="GroupLabel" runat="server" EnableViewState="False">Group:</asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:DropDownList runat="server" ID="ddlGroup" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="OnddlGroup_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                </tr>
                                <tr>
                                    <td nowrap="nowrap" class="TitleDisplayClass" style="width: 145px">
                                        <strong>
                                            <asp:Literal ID="MaxSelectionMatrixAllowedLabel" runat="server" EnableViewState="False"></asp:Literal></strong>
                                    </td>
                                    <td style="width: 29px">
                                        <asp:DropDownList ID="MaxAllowedDropDownList" runat="server">
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="7">7</asp:ListItem>
                                            <asp:ListItem Value="8">8</asp:ListItem>
                                            <asp:ListItem Value="9">9</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19">19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td>
                                        <strong>
                                            <asp:Literal ID="SubGroupLabel" runat="server"  EnableViewState="False">Sub Group:</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList runat="server" AppendDataBoundItems="true" ID="ddlSubGroup">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <asp:PlaceHolder ID="RepeatSectionOptionPlaceholder" runat="server">
                                    <tr>
                                        <td nowrap="nowrap" width="40%">
                                            <strong>
                                                <asp:Literal ID="AddRepeatSectionLabel" runat="server">Add section link text:</asp:Literal></strong>
                                        </td>
                                        <td width="400px">
                                            <asp:TextBox ID="AddSectionLinkTextBox" runat="server"></asp:TextBox>
                                        </td>
                                        <td></td><td></td>
                                    </tr>
                                    <tr>
                                        <td nowrap="nowrap" width="40%">
                                            <strong>
                                                <asp:Literal ID="DeleteRepeatSectionLabel" runat="server">Delete section link text :</asp:Literal></strong>
                                        </td>
                                        <td width="200px">
                                            <asp:TextBox ID="DeleteSectionLinkTextBox" runat="server"></asp:TextBox>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                </asp:PlaceHolder>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="UpdateQuestionButton" runat="server" Text="Update"></asp:Button>
    <asp:Button ID="ExportXMLButton" runat="server" Text="Export XML"></asp:Button>
    <br />
    <br />
    <br />
    <table class="innerText">
        <tr>
            <td colspan="2">
                <font class="titleFont">
                    <asp:Literal ID="InsertNewTitle" runat="server" EnableViewState="False">Insert a new</asp:Literal></font>
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
                            <strong>
                                <asp:Literal ID="RowLabel" runat="server" EnableViewState="False">Row </asp:Literal>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="NewRowTextBox" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="AddRowButton" runat="server" Text="Add row"></asp:Button>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>
                                <asp:Literal ID="ColumnLabel" runat="server" EnableViewState="False">Column </asp:Literal>
                            </strong>
                        </td>
                        <td>
                            <asp:TextBox ID="NewColumnTextBox" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="AnswerTypeDropDownList" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Button ID="AddColumnButton" runat="server" Text="Add column"></asp:Button>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <br />
    <table class="innerText">
        <tr>
            <td colspan="2">
                <font class="titleFont">
                    <asp:Literal ID="CurrentRowsColumnsTitle" runat="server" EnableViewState="False">Current rows and columns</asp:Literal></font>
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
                <table class="innerText" width="650px">
                    <tr>
                        <td class="smallText">
                            <strong>
                                <asp:Literal ID="ChildsEditionLanguageLabel" runat="server" Text="Edition language :"></asp:Literal>
                                <asp:DropDownList ID="ChildsLanguageDropdownlist" runat="server" AutoPostBack="True">
                                </asp:DropDownList>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataGrid ID="RowsDataGrid" runat="server" AutoGenerateColumns="False" Width="100%"
                                CellPadding="3" border="0">
                                <AlternatingItemStyle BackColor="#F4F9FA"></AlternatingItemStyle>
                                <ItemStyle BackColor="white" Font-Size="xx-small"></ItemStyle>
                                <HeaderStyle Font-Size="xx-small" Font-Bold="True"></HeaderStyle>
                                <Columns>
                                    <asp:BoundColumn DataField="QuestionText" HeaderText="Rows"></asp:BoundColumn>
                                    <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel"
                                        EditText="Edit"></asp:EditCommandColumn>
                                    <asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
                                </Columns>
                            </asp:DataGrid><br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DataGrid ID="ColsDataGrid" runat="server" border="0" CellPadding="3" Width="100%"
                                AutoGenerateColumns="False">
                                <AlternatingItemStyle BackColor="#F4F9FA"></AlternatingItemStyle>
                                <ItemStyle BackColor="white" Font-Size="xx-small"></ItemStyle>
                                <HeaderStyle Font-Size="xx-small" Font-Bold="True"></HeaderStyle>
                                <Columns>
                                    <asp:BoundColumn DataField="AnswerText" HeaderText="Columns"></asp:BoundColumn>
                                    <asp:TemplateColumn HeaderText="Type">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="TypesDropDownList" runat="server" Enabled="False">
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="TypesEditDropDownList" runat="server">
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Rating">
                                        <ItemTemplate>
                                            <asp:Label ID="RatingLabel" runat="server"></asp:Label><asp:CheckBox ID="RatingPartCheckBox"
                                                runat="server" Enabled="False"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Mandatory">
                                        <ItemTemplate>
                                            <asp:Label ID="MandatoryLabel" runat="server"></asp:Label><asp:CheckBox ID="MandatoryCheckbox"
                                                runat="server" Enabled="False"></asp:CheckBox>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel"
                                        EditText="Edit"></asp:EditCommandColumn>
                                    <asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
                                </Columns>
                            </asp:DataGrid>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </td> </tr> </table>
</asp:Content>
