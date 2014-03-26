<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>

<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" AutoEventWireup="false"
    Inherits="Votations.NSurvey.WebAdmin.ResultsCrossTabulation" CodeBehind="ResultsCrossTabulation.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td style="text-align:left; width:590px;"><br />
                <asp:RadioButtonList runat="server" ID="rblReports" RepeatDirection="Horizontal"
                    CellSpacing="4" OnSelectedIndexChanged="rbListSelectedIndexChanged" AutoPostBack="true"
                    Width="533px">
                    <asp:ListItem Text="GraphicalReports" Value="GR"></asp:ListItem>
                    <asp:ListItem Text="VoterReports" Value="TR"></asp:ListItem>
                    <asp:ListItem Text="CrossTabulationReports" Value="CTR" Selected="True"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="text-align: left; width: 10%;">
                <script type="text/javascript">
                     <!--
                    function printPreviewDiv(elementId) {
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
                <input type="image" class="PrintImage" alt="print" src="../images/Print_32X32_Standard.png"
                    title="Print" onclick="JavaScript:printPreviewDiv('DivPrint');" />
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top" colspan="2">
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="innerText">
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td width="99%">
                                        <font class="titleFont">
                                            <asp:Literal ID="SurveyCrossTabTitle" runat="server" EnableViewState="False" Text="Survey cross tabulation results"></asp:Literal></font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td nowrap="nowrap" width="180"><br />
                                        <strong>
                                            <asp:Literal ID="BaseQuestionLabel" runat="server" EnableViewState="False" Text="Base question :"></asp:Literal></strong>
                                    </td>
                                    <td width="480"><br />
                                        <asp:DropDownList ID="BaseQuestionDropDownList" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="180" height="18">
                                        <strong>
                                            <asp:Literal ID="CompareQuestionLabel" runat="server" EnableViewState="False" Text="Compare question :"></asp:Literal></strong>
                                    </td>
                                    <td height="18">
                                        <asp:DropDownList ID="CompareQuestionDropDownList" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="700" valign="top" colspan="2">
                                        <table class="smallText" width="100%">
                                            <tr>
                                                <td class="crossTabBaseCell">
                                                    &nbsp;&nbsp;
                                                </td>
                                                <td width="99%">
                                                    <asp:Label ID="BaseQuestionChoiceLabel" runat="server">Choose a base question ...</asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="crossTabCompareCell">
                                                    &nbsp;&nbsp;
                                                </td>
                                                <td width="99%">
                                                    <asp:Label ID="CompareQuestionChoiceLabel" runat="server">Choose a compare question ...</asp:Label>
                                                </td>
                                            </tr>
                                        </table><br />
                                        <div id="DivPrint">
                                            
                                                <asp:PlaceHolder ID="CrossTabResultsPlaceHolder" runat="server"></asp:PlaceHolder>
                                           
                                        </div>
                                        <p>&nbsp;</p>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
