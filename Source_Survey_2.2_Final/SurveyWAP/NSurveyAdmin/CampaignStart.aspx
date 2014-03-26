<%@ Page Title="" Language="C#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"
    AutoEventWireup="false" CodeBehind="CampaignStart.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.CampaignStart" %>

<%@ Register TagPrefix="vts" Namespace="Votations.NSurvey.WebControls" Assembly="Votations.NSurvey.WebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <table class="SurveyLayoutContainer">

        <tr>
            <td  valign="top">
                <table >
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td width="99%"><br />
                                        <font class="titleFont">
                                            <asp:Literal ID="SurveyCodePreviewTitle" runat="server" EnableViewState="False" Text="Preview Survey"></asp:Literal></font>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText"  style="table-layout:fixed; width:700px;">
                                <tr>
                                    <td>
                                        <asp:Literal Mode="PassThrough" ID="SurveyHeaderCustom" runat="server"></asp:Literal>
                                        <asp:Literal runat="server" ID="ltImg" />
                                    </td>
                                </tr>
                                <tr>
                                    <td >
                                        <vts:SurveyBox ID="SurveyPreview" CssClass="surveybox" EnableValidation="true" runat="server">
                                            <QuestionStyle CssClass="questionStyle"></QuestionStyle>
                                            <QuestionValidationMessageStyle CssClass="qvmStyle"></QuestionValidationMessageStyle>
                                            <QuestionValidationMarkStyle CssClass="qvmarkStyle"></QuestionValidationMarkStyle>
                                            <ConfirmationMessageStyle CssClass="cmStyle"></ConfirmationMessageStyle>
                                            <SectionOptionStyle CssClass="soStyle"></SectionOptionStyle>
                                            <ButtonStyle CssClass="buttonStyle"></ButtonStyle>
                                            <AnswerStyle CssClass="answerStyle"></AnswerStyle>
                                            <MatrixStyle CssClass="matrixStyle"></MatrixStyle>
                                            <MatrixHeaderStyle CssClass="mhStyle"></MatrixHeaderStyle>
                                            <MatrixItemStyle CssClass="miStyle"></MatrixItemStyle>
                                            <MatrixAlternatingItemStyle CssClass="maiStyle"></MatrixAlternatingItemStyle>
                                            <SectionGridAnswersItemStyle CssClass="sgiStyle"></SectionGridAnswersItemStyle>
                                            <SectionGridAnswersAlternatingItemStyle CssClass="sgaaisStyle"></SectionGridAnswersAlternatingItemStyle>
                                            <SectionGridAnswersStyle CssClass="sgaStyle"></SectionGridAnswersStyle>
                                            <SectionGridAnswersHeaderStyle CssClass="sgahStyle"></SectionGridAnswersHeaderStyle>
                                            <FootStyle CssClass="footStyle"></FootStyle>
                                        </vts:SurveyBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Literal Mode="PassThrough" ID="SurveyFooterCustom" runat="server"></asp:Literal>
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
