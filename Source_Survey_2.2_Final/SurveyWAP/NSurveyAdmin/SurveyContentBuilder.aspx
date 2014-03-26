<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>

<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" ValidateRequest="false"
    AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.SurveyContentBuilder"
    CodeBehind="SurveyContentBuilder.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            var scroll = '<%= GetScrollQuestionId() %>';
            if (scroll != null && scroll.length > 0) {
                var scrollStr = "questionid=" + scroll + "&";
                $("table a").each(function () {
                    if ($(this).attr("href")) {

                        if ($(this).attr("href").indexOf(scrollStr) > -1) {

                            this.scrollIntoView();
                        }
                    }

                });
            }
        });
    </script>
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                <table class="innerText">
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td class="TitleDisplayClass">
                                        <font class="titleFont">
                                            <asp:Literal ID="SurveyBuilderTitle" runat="server" EnableViewState="False">Survey builder</asp:Literal></font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td class="smallText">
                                        <br />
                                        <strong>
                                            <asp:Literal ID="PreviewSurveyLanguageLabel" runat="server" Text="Language preview :"></asp:Literal>&nbsp;</strong>
                                        <asp:DropDownList ID="LanguagesDropdownlist" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:PlaceHolder ID="QuestionListPlaceHolder" runat="server"></asp:PlaceHolder>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
