<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.VoterReport" Codebehind="VoterReport.aspx.cs" %>
<%@ Import Namespace = "Votations.NSurvey.Helpers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div id="DivPrint">

    <table class="TableLayoutContainer">
    <tr>
        <td class="contentCell" valign="top">
            <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>

            

            <table class="innerText">
                <tr>
                    <td style="text-align:left; width:510px;">
                        <font class="titleFont">
                            <asp:Literal ID="VoterInformationTitle" runat="server" EnableViewState="False">Voterinformation</asp:Literal></font>
                        <br />
                        <br />
                    </td>
                    <td style="text-align:right; width:20%;">

                    <script type="text/javascript">
 <!--
 function printPreviewDiv(elementId)
 {
  var printContent = document.getElementById(elementId);
  var windowUrl = 'about:blank';
  var uniqueName = new Date();
  var windowName = 'Print' + uniqueName.getTime();
  var printWindow = window.open(windowUrl, windowName, 'left=200,top=50,width=750,height=800,menubar=yes,toolbar=yes,resizable=yes,scrollbars=yes');


  var printPreviewObject = '<object id="printPreviewElement" width="0" height="0" classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"></object>';

     printWindow.document.write('<link rel="stylesheet" type="text/css" href="../nsurveyadmin/css/voterreport.css" />' + printContent.innerHTML);

     printWindow.document.write(printPreviewObject);

  printWindow.document.write('<script language=JavaScript>');
  printWindow.document.write('var OLECMDID = 6;');
  printWindow.document.write('var PROMPT = 1;');
  printWindow.document.write('printPreviewElement.ExecWB(OLECMDID, PROMPT);');
  printWindow.document.write('printPreviewElement.outerHTML = "";');
  printWindow.document.write('\<\/script>');

  printWindow.document.close();
  //printWindow.focus();
  printWindow.print();
  //printWindow.close();
 }
 // -->
 </script>


                    
                   <input type="image" class="PrintImage" alt="print" src="../images/Print_32X32_Standard.png" title="Print" onclick="JavaScript:printPreviewDiv('DivPrint');" />

                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <table class="innerText">
                            <tr>
                                <td width="160px">
                                    <strong>
                                        <asp:Literal ID="VoterDBIDLabel" runat="server" EnableViewState="False">Voter DB ID :</asp:Literal></strong>
                                </td>
                                <td>
                                    <asp:Label ID="VoterUIDLabel" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="160px">
                                    <strong>
                                        <asp:Literal ID="VoterUserNameLabel" runat="server" EnableViewState="False">Voter user name:</asp:Literal></strong>
                                </td>
                                <td>
                                    <asp:Label ID="VoterUserName" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="160px">
                                    <strong>
                                        <asp:Literal ID="VoterEmailLabel" runat="server" EnableViewState="False">Voter Email :</asp:Literal></strong>
                                </td>
                                <td>
                                    <asp:Label ID="VoterEmail" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="160px">
                                    <strong>
                                        <asp:Literal ID="VoterLanguageLabel" runat="server" EnableViewState="False">Voter language :</asp:Literal></strong>
                                </td>
                                <td>
                                    <asp:Label ID="VoterLanguageValueLabel" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="160px">
                                    <strong>
                                        <asp:Literal ID="VoterIPAddressLabel" runat="server" EnableViewState="False">IP address :</asp:Literal></strong>
                                </td>
                                <td>
                                    <asp:Label ID="IPAddressLabel" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td width="160px">
                                    <strong>
                                        <asp:Literal ID="VoteRecordedLabel" runat="server" EnableViewState="False">Vote recorded on:</asp:Literal></strong>
                                </td>
                                <td>
                                    <asp:Label ID="VoteDateLabel" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" width="160px">
                                    <strong>
                                        <asp:Literal ID="TimeToTakeLabel" runat="server" EnableViewState="False">Time to take the survey:</asp:Literal></strong>
                                </td>
                                <td>
                                    <asp:Label ID="TimeToTakeSurveyLabel" runat="server"></asp:Label>&nbsp;<br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

          

            <br />
            <asp:PlaceHolder ID="AddInVoterDataPlaceHolder" runat="server"></asp:PlaceHolder>
            <br />
            <table class="voterReport">
                <tr>
                    <td colspan="2">
                        <font class="titleFont">
                            <asp:Literal ID="SurveyAnswersTitle" runat="server" EnableViewState="False">Survey answers</asp:Literal></font>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="EditAnswersLinkButton" CssClass="invisible" runat="server">Edit voter's answers</asp:LinkButton><br />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;
                    </td>
                    <td>
                        <table class="voterReport">
                            <tr>
                                <td>
                                    <asp:DataGrid class="voterReport" ID="QuestionsDataGrid" runat="server" GridLines="Horizontal"
                                        ShowHeader="False" AutoGenerateColumns="False" Width="100%">
                                        <Columns>
                                            <asp:TemplateColumn>
                                                <ItemTemplate>
                                                    <br />
                                                    <font color="#dd00"><b>
                                                        <%#Server.HtmlEncode(System.Text.RegularExpressions.Regex.Replace(new PipeManager().PipeValuesInText(int.Parse(DataBinder.Eval(Container.DataItem,"QuestionId").ToString()),DataBinder.Eval(Container.DataItem,"questionText").ToString(), _voterAnswers.VotersAnswers, null), "<[^>]*>", " "))%></b></font><br />
                                                    <asp:PlaceHolder ID="matrixplaceholder" runat="server" />
                                                    <asp:PlaceHolder ID="questionanswerplaceholder" runat="server" />
                                                    <b>
                                                        <asp:Label ID="QuestionScoreLabel" runat="server" /></b>
                                                    <br />
                                                    <br />
                                                    <br />
                                                </ItemTemplate>
                                            </asp:TemplateColumn>
                                        </Columns>
                                    </asp:DataGrid><b><asp:Label ID="VoterScoreTotalLabel" runat="server"></asp:Label></b>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        </td>
        </tr>
    </table>

</div>

</asp:Content>
