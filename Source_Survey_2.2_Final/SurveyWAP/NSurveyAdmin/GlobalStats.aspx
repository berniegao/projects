<%@ Page Language="c#" MasterPageFile="MsterPageTabs.master" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.GlobalStats" Codebehind="GlobalStats.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<table class="TableLayoutContainer">
    <tr>
    <td class="contentCell" valign="top" style="width: 860px">
    <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
    
      <table class="innerText">
        <tr>
          <td>
          
            <table style="width:100%;">
              <tr>
                <td style="width:80%;" class="TitleDisplayClass"><font class="titleFont">
                <asp:Literal id="SurveyStatisticsTitle" runat="server" EnableViewState="False">Survey statistics</asp:Literal></font> </td>
                                    <td align="right">
                                        <div style="position: relative; right: 0px; top: 0px;">
                                            <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/Statistics.aspx"
                                                title="Click for more Information">
                                                <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                                            </a>
                                        </div>
                                    </td>
              </tr>
            </table>
            
                <br />
          </td>
        </tr>
        <tr>
          <td>
          
            <table class="innerText">
              <tr>
                <td nowrap="nowrap" width="178px">
                <strong><asp:Literal id="SurveyCreationDateLabel" runat="server" EnableViewState="False">Creation date :</asp:Literal></strong> </td>
                <td width="480px"><asp:label id="CreationDateLabel" runat="server"></asp:label></td>
              </tr>
              <tr>
                <td width="178px">
                <strong><asp:Literal id="LastSurveyEntryLabel" runat="server" EnableViewState="False">Last entry on :</asp:Literal></strong> </td>
                <td><asp:label id="LastEntryDateLabel" runat="server"></asp:label></td>
              </tr>
              <tr>
                <td width="178px">
                <strong><asp:Literal id="SurveyDisplayTimesLabel" runat="server" EnableViewState="False">Display times :</asp:Literal></strong> </td>
                <td><asp:label id="DisplayTimesLabel" runat="server"></asp:label></td>
              </tr>
             <!-- <tr>
                <td width="180"><strong><asp:Literal id="SurveyResultsDisplayTimesLabel" runat="server" EnableViewState="False">Results display times :</asp:Literal></strong> </td>
                <td><asp:label id=ResultsDisplayTimesLabel runat="server"></asp:label></td>
              </tr>-->
              <tr>
                <td width="178px">
                <strong><asp:Literal id="SurveyNumberOfVotesLabel" runat="server" EnableViewState="False">Number of voters :</asp:Literal></strong> </td>
                <td><asp:label id="NumberOfVotersLabel" runat="server"></asp:label></td>
              </tr>
              <tr>
                <td width="178px">
                <strong><asp:Literal id="SaveProgressEntriesLabel" runat="server" EnableViewState="False" Text="Unvalidated progress entries :"></asp:Literal></strong> </td>
                <td><asp:label id="NumberSaveProgressEntriesLabel" runat="server"></asp:label>&nbsp;
                   <asp:LinkButton id="DeleteSaveProgressLinkButton" runat="server">(delete all unvalidated entries)</asp:LinkButton></td>
              </tr>
              <tr>
                <td width="178px" valign="top">
                <strong><asp:Literal id="SurveyMonthlyStatsLabel" runat="server" EnableViewState="False">Monthly stats :</asp:Literal></strong> </td>
                <td>
                <asp:Calendar id="StatsCalendar" runat="server" ForeColor="Black" Font-Names="Verdana" Font-Size="9pt" NextPrevFormat="ShortMonth"  ShowGridLines="false" BackColor="White" Width="525px" Height="336px" BorderColor="Black" CellSpacing="1" BorderStyle="Solid" SelectionMode="None">
                <TODAYDAYSTYLE ForeColor="White"
                  BackColor="#999999" 
                  Font-Size="XX-Small"></TODAYDAYSTYLE>
                  <DAYSTYLE
                  BackColor="#CCCCCC" Font-Size="XX-Small" 
                  Font-Names="arial"></DAYSTYLE>
                  <NEXTPREVSTYLE ForeColor="White" CssClass="calendar"
                  Font-Size="XX-Small" 
                  Font-Bold="True"></NEXTPREVSTYLE>
                  <DAYHEADERSTYLE
                  ForeColor="#333333" Height="8pt" Font-Size="XX-Small" 
                  Font-Names="arial" 
                  Font-Bold="True"></DAYHEADERSTYLE>
                  <SELECTEDDAYSTYLE
                  ForeColor="White" 
                  BackColor="#333399"></SELECTEDDAYSTYLE>
                  <TITLESTYLE
                  ForeColor="White" Height="12pt" BackColor="#dd0000" 
                  Font-Size="XX-Small" 
                  Font-Bold="True"></TITLESTYLE>
                  <OTHERMONTHDAYSTYLE
                  ForeColor="#CCCCCC"
                  Font-Size="XX-Small"></OTHERMONTHDAYSTYLE>
                  </asp:Calendar></td>
              </tr>
            </table>
            
            <br /><asp:button id="ResetVotesButton" runat="server" Text="Reset votes!"></asp:button>
            </td>
          </tr>
        </table>
        
</td></tr>

</table>

</asp:Content>
