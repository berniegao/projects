<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" AutoEventWireup="false"
    Inherits="Votations.NSurvey.WebAdmin.ExportData" CodeBehind="ExportData.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<script type="text/javascript">
        $(function () {

            $("#<%=StartDateTextBox.ClientID%>").datepicker();
            $("#<%=EndDateTextBox.ClientID%>").datepicker();
        });
    </script>
    <table summary="maintable" class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table summary="exporttable" class="innerText">
                    <tr>
                        <td>
                            <table summary="exportlabeltable" width="100%">
                                <tr>
                                    <td width="99%">
                                        <font class="titleFont">
                                            <asp:Literal ID="SurveyExportTitle" runat="server" EnableViewState="False">Survey CSV export</asp:Literal></font>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td> <br />
                            <table summary="exporttypetable" class="innerText">
                                <tr>
                                    <td>
                                        <strong>
                                            <asp:Literal ID="ExportTypeLabel" runat="server" EnableViewState="False" Text="Export type" /></strong>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="ExportDropDownList" runat="server" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="info1Label" runat="server">: Note: XML format must be chosen to import the data to another Survey installation.</asp:Label>
                                    </td>
                                </tr>
                                <asp:PlaceHolder ID="plhCSVStyles" runat="server">
                                    <tr>
                                        <td colspan="2"><br />
                                            <font class="titleFont">
                                                <asp:Label ID="layoutLabel" runat="server">Export Layout</asp:Label></font>
                                        </td>
                                    </tr>
                                  
                                    <tr>
                                        <td colspan="2"><br />
                                            <asp:RadioButton ID="rdStyle2" AutoPostBack="true" GroupName="StylesGroup" runat="server"
                                                Text="Export each response as a Row with one Column per possible answer to each Question" />
                                        </td>
                                    </tr>
                                      <tr>
                                        <td colspan="2">
                                            <asp:RadioButton ID="rdStyle1" AutoPostBack="true" GroupName="StylesGroup" Checked="true"
                                                runat="server" Text="Export each response as a Row with one Column per Question" />
                                        </td>
                                    </tr>
                                    <asp:PlaceHolder ID="plhDdls" runat="server" Visible="true">
                                        <tr>
                                            <td><strong>
                                                <asp:Label ID="HeaderFieldLabel" runat="server">Header field:</asp:Label></strong>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlHeader" runat="server">
                                                    <asp:ListItem Value="Question">Question</asp:ListItem>
                                                    <asp:ListItem Value="QuestionDisplayOrderNumber">Question Display Order Number</asp:ListItem>
                                                    <asp:ListItem Value="QuestionID">Question ID</asp:ListItem>
                                                    <asp:ListItem Value="QuestionAlias">Question Alias</asp:ListItem>
                                                    <asp:ListItem Value="QuestionIDAlias">Question ID Alias</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><strong>
                                                <asp:Label ID="answerFieldLabel" runat="server">Answer field:</asp:Label></strong>
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="ddlAnswer" runat="server">
                                                    <asp:ListItem Value="Answer">Answer</asp:ListItem>
                                                    <asp:ListItem Value="AnswerDisplayOrderNumber">Answer Display Order Number</asp:ListItem>
                                                    <asp:ListItem Value="AnswerID">Answer ID</asp:ListItem>
                                                    <asp:ListItem Value="AnswerAlias">Answer Alias</asp:ListItem>
                                                    <asp:ListItem Value="AnswerIdAlias">Answer Id Alias</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                    </asp:PlaceHolder>
                                </asp:PlaceHolder>
                                <asp:PlaceHolder ID="CSVOptionPlaceHolder" runat="server">
                                    <tr>
                                        <td  class="innerText">
                                            <font class="subtitleFont" >
                                                <asp:Literal ID="formatlabel" runat="server" EnableViewState="False" Text="Format"></asp:Literal>
                                            </font>
                                        </td>
                                        <td>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155">
                                            <strong>
                                                <asp:Literal ID="FieldDelimiterLabel" runat="server" EnableViewState="False" Text="Field delimiter"></asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="FieldDelimiterTextBox" runat="server" Columns="1" MaxLength="1">,</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155">
                                            <strong>
                                                <asp:Literal ID="TextDelimiterLabel" runat="server" EnableViewState="False">Text delimiter:</asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextDelimiterTextBox" runat="server" Columns="1" MaxLength="1">&quot;</asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155">
                                            <strong>
                                                <asp:Literal ID="MultiSeperatorLabel" runat="server" EnableViewState="False">Multiple Choice Separator</asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="MultiSeparatorTextBox" Text="#" runat="server" Columns="1" MaxLength="1"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="155">
                                            <strong>
                                                <asp:Literal ID="ReplaceCarriageLabel" runat="server" EnableViewState="False">Carriage return:</asp:Literal></strong>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="CarriageReturnDropDownList" runat="server" AutoPostBack="True">
                                            </asp:DropDownList>
                                            &nbsp;<asp:TextBox ID="CRCharTextbox" runat="server" Visible="False" Columns="1"
                                                MaxLength="255"></asp:TextBox>
                                        </td>
                                    </tr>
                                </asp:PlaceHolder>
                                <tr>
                                    <td class="innerText"><br />
                                        <font class="titleFont">
                                            <asp:Label runat="server" ID="dataSelectionLabel" Text="Data Selection"></asp:Label>
                                        </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="155"><br />
                                        <asp:RadioButton Checked="true" ID="rdAllDates" runat="server" GroupName="DateOption"
                                            Text="all data" />
                                    </td>
                                    <td><br />
                                        <asp:RadioButton ID="rdSelectedDates" runat="server" GroupName="DateOption" Text="only data in the selected date range" />
                                    </td>
                                </tr>
                                <tr>
                                    <td width="155">
                                        <strong>
                                            <asp:Literal ID="ExportFromDateLabel" runat="server" EnableViewState="False" Text="Export from date :"></asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="StartDateTextBox" runat="server" Columns="8"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="155">
                                        <strong>
                                            <asp:Literal ID="ExportToDateLabel" runat="server" EnableViewState="False" Text="To date :"></asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="EndDateTextBox" runat="server" Columns="8"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:Button ID="ExportDataButton" runat="server" Text="Export CSV"></asp:Button>
                <asp:Button ID="VoterExportXMLButton" runat="server" Text="Export XML" Visible="False">
                </asp:Button>
            </td>
        </tr>
    </table>
</asp:Content>
