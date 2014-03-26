<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" ValidateRequest="false"
    AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.EditSingleQuestion"
    CodeBehind="EditSingleQuestion.aspx.cs" %>

<%@ Register TagPrefix="mbrsc" Namespace="MetaBuilders.WebControls" Assembly="Votations.NSurvey.WebAdmin" %>

<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register Src="UserControls/QuestionExtraLinks.ascx" TagName="QuestionExtraLinks"
    TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/back_button.gif" runat="server"
                    CssClass="buttonBack" OnCommand="OnBackButton" />
                &nbsp;&nbsp;
                <uc2:QuestionExtraLinks ID="QuestionExtraLinks1" runat="server" />
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="innerText">
                    <tr>
                        <td>
                            <font class="titleFont">
                                <asp:Literal ID="EditQuestionTitle" runat="server" EnableViewState="False">Edit question</asp:Literal></font>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td colspan="4">

                                        <CKEditor:CKEditorControl ID="QuestionFreeTextBox" BasePath="~/ckeditor" runat="server">
                                        </CKEditor:CKEditorControl>

                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="smallText" style="width: 198px">
                                        <strong>
                                            <asp:Literal ID="EditionLanguageLabel" runat="server" Text="Edition language :"></asp:Literal></strong>
                                    </td>
                                    <td style="width: 179px">
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
                    </tr>
                    <tr>
                        <td nowrap="nowrap" style="width: 198px">
                            <strong>
                                <asp:Literal ID="SelectionModeLabel" runat="server" EnableViewState="False">Selection mode:</asp:Literal></strong>
                        </td>
                        <td style="width: 179px">
                            <asp:DropDownList ID="SelectionModeDropDownList" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <strong>
                                <asp:Literal ID="AliasLabel" runat="server" EnableViewState="False">Alias:</asp:Literal></strong>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtAlias"></asp:TextBox>
                        </td>
                    </tr>
                    <asp:PlaceHolder ID="AnswerOptionsPlaceholder" runat="server">
                        <tr>
                            <td width="140">
                                <strong>
                                    <asp:Literal ID="DisplayModeLabel" runat="server" EnableViewState="False">Display mode:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:DropDownList ID="DisplayModeDropDownList" runat="server">
                                </asp:DropDownList>
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
                            <td width="140" height="15">
                                <strong>
                                    <asp:Literal ID="ColumnNumberLabel" runat="server" EnableViewState="False">Number of columns:</asp:Literal></strong>
                            </td>
                            <td height="15">
                                <asp:DropDownList ID="ColumnDropdownlist" runat="server">
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
                                    <asp:Literal ID="ShowHelpTextLabel" runat="server" EnableViewState="False">Show Help Text:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:CheckBox runat="server" ID="chbShowHelpText"></asp:CheckBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="174">
                                <strong>
                                    <asp:Literal ID="RandomizeAnswersLabel" runat="server" EnableViewState="False">Randomize answers order:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:CheckBox ID="RandomizeCheckBox" runat="server"></asp:CheckBox>
                            </td>
                            <td>
                                <strong>
                                    <asp:Literal ID="GroupLabel" runat="server" EnableViewState="False">Group:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:DropDownList runat="server" ID="ddlGroup" AutoPostBack="true" AppendDataBoundItems="true"
                                    OnSelectedIndexChanged="OnddlGroup_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="160">
                                <strong>
                                    <asp:Literal ID="AnswerRatingLabel" runat="server" EnableViewState="False">Enable answer rating:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:CheckBox ID="RatingCheckbox" runat="server" AutoPostBack="True"></asp:CheckBox>
                            </td>
                            <td>
                                <strong>
                                    <asp:Literal ID="SubGroupLabel" runat="server" EnableViewState="False">Sub Group:</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:DropDownList runat="server" AppendDataBoundItems="true" ID="ddlSubGroup">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="160">
                                <strong>
                                    <asp:Literal ID="MinSelectionLabel" runat="server" EnableViewState="False">Min. selections required :</asp:Literal></strong>
                            </td>
                            <td height="15">
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
                            </td>
                            <td>
                                </asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td width="168">
                                <strong>
                                    <asp:Literal ID="MaxSelectionAllowed" runat="server" EnableViewState="False">Max. selections allowed 
                  :</asp:Literal></strong>
                            </td>
                            <td>
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
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td width="160">
                                <strong>
                                    <asp:Literal ID="QuestionPipeAliasLabel" runat="server" EnableViewState="False">Pipe alias 
                  :</asp:Literal></strong>
                            </td>
                            <td>
                                <asp:TextBox ID="PipeAliasTextBox" runat="server" MaxLength="255"></asp:TextBox>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                    </asp:PlaceHolder>
                </table>
                <br />
                <asp:Button ID="UpdateQuestionButton" runat="server" Text="Update"></asp:Button>
                <asp:Button ID="EditAnswersButton" runat="server" Text="Add / Edit answers"></asp:Button>
                <asp:Button ID="ExportXMLButton" runat="server" Text="Export XML"></asp:Button>
                <br />
                <br />
            </td>
        </tr>
    </table>
    <asp:PlaceHolder ID="RepeatSectionOptionPlaceHolder" runat="server">
        <br />
        <table class="innerText">
            <tr>
                <td>
                    <font class="titleFont">
                        <asp:Literal ID="RepeatableSectionsLabel" runat="server" EnableViewState="False">Repeatable sections</asp:Literal>
                    </font>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <table class="innerText">
                        <tr>
                            <td nowrap="nowrap" width="160">
                                <strong>
                                    <asp:Literal ID="RepeatModeLabel" runat="server" EnableViewState="False">Repeat mode:</asp:Literal></strong>
                            </td>
                            <td width="480">
                                <asp:DropDownList ID="RepeatModeDropdownlist" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td width="160">
                                <strong>
                                    <asp:Literal ID="MaxSectionAllowedLabel" runat="server">Max. sections allowed :</asp:Literal></strong>
                            </td>
                            <td height="15">
                                <asp:DropDownList ID="MaxSectionAllowedDropdownlist" runat="server">
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
                        </tr>
                        <tr>
                            <td nowrap="nowrap" width="160">
                                <strong>
                                    <asp:Literal ID="AddRepeatSectionLabel" runat="server">Add section link text:</asp:Literal></strong>
                            </td>
                            <td width="480">
                                <asp:TextBox ID="AddSectionLinkTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" width="180">
                                <strong>
                                    <asp:Literal ID="DeleteRepeatSectionLabel" runat="server">Delete section link text :</asp:Literal></strong>
                            </td>
                            <td width="480">
                                <asp:TextBox ID="DeleteSectionLinkTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" width="180">
                                <strong>
                                    <asp:Literal ID="EditRepeatSectionLabel" runat="server">Edit section link text :</asp:Literal></strong>
                            </td>
                            <td width="480">
                                <asp:TextBox ID="EditSectionLinkTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" width="180">
                                <strong>
                                    <asp:Literal ID="UpdateRepeatSectionLabel" runat="server">Update section link text :</asp:Literal></strong>
                            </td>
                            <td width="480">
                                <asp:TextBox ID="UpdateSectionLinkTextBox" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top" nowrap="nowrap" width="180">
                                <strong>
                                    <asp:Literal ID="GridAnswersLabel" runat="server" Text="Answers shown in grid:"></asp:Literal></strong>
                            </td>
                            <td width="480">
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ListBox ID="AnswersListBox" runat="server" AutoPostBack="True"></asp:ListBox>
                                        </td>
                                        <td>
                                            <asp:Label ID="GridAnswersChoiceLabel" runat="server"><-></asp:Label>
                                        </td>
                                        <td>
                                            <asp:ListBox ID="GridAnswersListBox" runat="server" AutoPostBack="True"></asp:ListBox>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <asp:Button ID="UpdateSectionsButton" runat="server" Text="Update repeatable options">
                    </asp:Button>
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>
    </td> </tr> </table>
</asp:Content>
