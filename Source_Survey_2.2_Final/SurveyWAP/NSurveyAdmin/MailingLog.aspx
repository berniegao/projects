
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="mbrsc" Namespace="MetaBuilders.WebControls" Assembly="Votations.NSurvey.WebAdmin" %>
<%@ Page language="c#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"  AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.MailingLog" Codebehind="MailingLog.aspx.cs" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">
<table class="TableLayoutContainer">
  
  <tr>
    <td></td></tr>
  <tr>
    <td class="contentCell" valign="top"> <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
    
    <table class="smallText">
    <tr>
    <td colspan="2">
    
          <table>
          <tr>
          <td width="400"><font class="titleFont"><asp:literal id="MailingLogTitle"
          runat="server"
          Text="Mailing log"
          EnableViewState="False"></asp:literal><asp:label id="CurrentPendingPageLabel" runat="server">1</asp:label>&nbsp;/
          <asp:label id="TotalPendingPagesLabel" runat="server">1</asp:label></font></td>
          <td align="right"></td>
          </tr>
          </table>
                
                <br /><br /> </td>
                </tr>
                <tr>
                <td>&nbsp;&nbsp; </td>
                <td><asp:datagrid id="MailingLogDataGrid" runat="server" Width="658px" 
                        AutoGenerateColumns="False" AllowCustomPaging="True" PageSize="1">
                <AlternatingItemStyle BackColor="#F4F9FA">
                </AlternatingItemStyle>
                
                <ItemStyle Font-Size="XX-Small" BackColor="White">
                </ItemStyle>
                
                <HeaderStyle Font-Size="XX-Small" Font-Bold="True">
                </HeaderStyle>
                
                <Columns>
                <mbrsc:RowSelectorColumn AllowSelectAll="True"></mbrsc:RowSelectorColumn>
                <asp:BoundColumn DataField="Email" HeaderText="Email"></asp:BoundColumn>
                <asp:BoundColumn DataField="ExceptionType" HeaderText="Type"></asp:BoundColumn>
                <asp:BoundColumn DataField="ExceptionMessage" HeaderText="Message"></asp:BoundColumn>
                <asp:BoundColumn DataField="ErrorDate" HeaderText="Logged on" DataFormatString="{0:dd/MM/yyyy}"></asp:BoundColumn>
                </Columns>
                </asp:datagrid>
                <p align="right"><asp:linkbutton id="PreviousLogPageLinkButton" runat="server">&lt;&lt; Previous page</asp:linkbutton>&nbsp;
                <asp:linkbutton id="NextLogPageLinkButton" runat="server">Next page >></asp:linkbutton></p>
                <p align="left"><asp:button id="DeleteLogsButton" runat="server" Text="Delete selected entries"></asp:button></p></td>
                </tr>
                </table>
                
            </td>
            </tr>
            
            </table>

</asp:content>
