<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" AutoEventWireup="false"
    Inherits="Votations.NSurvey.WebAdmin.ResultsReporting" CodeBehind="ResultsReporting.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        $(function () {

            $("#<%=StartDateTextBox.ClientID%>").datepicker();
            $("#<%=EndDateTextBox.ClientID%>").datepicker();
        });
    </script>
    <table class="TableLayoutContainer">
        <tr>
            <td style="text-align:left; width:590px;"><br />
                <asp:RadioButtonList runat="server" ID="rblReports" RepeatDirection="Horizontal"
                    OnSelectedIndexChanged="rbListSelectedIndexChanged" AutoPostBack="true" CellPadding="15"
                    Height="27px" Width="470px">
                    <asp:ListItem Text="GraphicalReports" Value="GR" Selected="True"></asp:ListItem>
                    <asp:ListItem Text="VoterReports" Value="TR"></asp:ListItem>
                    <asp:ListItem Text="CrossTabulationReports" Value="CTR"></asp:ListItem>
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
                <table class="innerText">
                    <tr>
                        <td colspan="2">
                            <table>
                                <tr>
                                    <td style="width: 175px">
                                        <font class="titleFont">
                                            <asp:Literal ID="SurveyResultsTitle" runat="server" EnableViewState="False">Survey results</asp:Literal></font>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="smallText" width="670">
                                <tr>
                                    <td nowrap="nowrap" width="150">
                                        <strong>
                                            <asp:Literal ID="QuestionsResultsDisplaylabel" runat="server" EnableViewState="False">Question's results to display</asp:Literal></strong>
                                    </td>
                                    <td width="480" height="29">
                                        <asp:DropDownList Width="480px" ID="QuestionsDropDownList" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="140" height="8">
                                        <strong>
                                            <asp:Literal ID="ResultsLayoutLabel" runat="server" EnableViewState="False">Results layout :</asp:Literal></strong>
                                    </td>
                                    <td height="8">
                                        <asp:DropDownList ID="LayoutDropDownList" Width="240" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="140">
                                        <strong>
                                            <asp:Literal ID="ResultsOrderLabel" runat="server" EnableViewState="False">Results order :</asp:Literal></strong>
                                    </td>
                                    <td height="15">
                                        <asp:DropDownList ID="ResultsOrderDropDownList" Width="240" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="smallText">
                                        <strong>
                                            <asp:Literal ID="LanguageFilterLabel" runat="server" Text="Language filter :"></asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="LanguagesDropdownlist" Width="240" runat="server" AutoPostBack="True" Enabled="False">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="140">
                                        <strong>
                                            <asp:Literal ID="DateRangeLabel" runat="server" EnableViewState="False"></asp:Literal></strong>
                                    </td>
                                    <td height="15">
                                        <asp:TextBox ID="StartDateTextBox" runat="server" Columns="12"></asp:TextBox>&nbsp;
                                        <asp:Label ID="DateToRangeLabel" runat="server">To</asp:Label>&nbsp;
                                        <asp:TextBox ID="EndDateTextBox" runat="server" Columns="12"></asp:TextBox>&nbsp;
                                        <asp:Button ID="ApplyRangeButton" runat="server" Text="Apply range" Enabled="False">
                                        </asp:Button>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="140" height="17">
                                        <strong>
                                            <asp:Literal ID="ApplyFilterLabel" runat="server" EnableViewState="False">Apply a filter :</asp:Literal></strong>
                                    </td>
                                    <td height="17">
                                        <asp:DropDownList ID="FilterDropDownList" Width="240" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                        &nbsp;
                                        <asp:HyperLink ID="FilterEditorHyperLink" runat="server">Click here to edit / create new filters</asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2"><div id="DivPrint">
                                        <asp:PlaceHolder ID="ResultsPlaceHolder" runat="server"></asp:PlaceHolder>
                                        <br />
                                        <asp:Repeater ID="ChartRepeater" runat="server">
                                            <ItemTemplate>
                                                <img alt="chartrepeater" src='<%#GetFileName()%>?questionId=<%#DataBinder.Eval(Container.DataItem, "QuestionID")%>&FilterId=<%=FilterDropDownList.SelectedValue%>&SortOrder=<%=ResultsOrderDropDownList.SelectedValue%>&LanguageCode=<%=LanguagesDropdownlist.SelectedValue%>&StartDate=<%=StartDateTextBox.Text%>&EndDate=<%=EndDateTextBox.Text%>'>
                                                <br />
                                                <br />
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:Image ID="SingleChartImage" runat="server" Visible="False"></asp:Image>
                                        </div>
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
