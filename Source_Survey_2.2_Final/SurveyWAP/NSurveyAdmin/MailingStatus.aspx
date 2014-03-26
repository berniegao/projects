<%@ Page language="c#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"  AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.MailingStatus" Codebehind="MailingStatus.aspx.cs" %>
<%@ Register TagPrefix="mbrsc" Namespace="MetaBuilders.WebControls" Assembly="Votations.NSurvey.WebAdmin" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>


<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">

<table class="TableLayoutContainer">
  
  <tr>
    <td></td></tr>
  <tr>
    <td class="contentCell" valign="top"> <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
    
      <table class="innerText">
        <tr>
          <td colspan="2">
          
          <table>
          <tr>
          <td width="400"><font class="titleFont"><asp:Literal id="PendingEmailsTitle" runat="server" EnableViewState="False">Pending emails - Page</asp:Literal>
          <asp:label id="CurrentPendingPageLabel" runat="server">1</asp:label>&nbsp;/
          <asp:label id="TotalPendingPagesLabel" runat="server">1</asp:label></font>
          </td>
          <td align="right"></td>
          </tr>
          </table>
          
          <br /><br /> </td>
          </tr>
          <tr>
          <td>&nbsp;&nbsp; </td>
          <td>
          <asp:placeholder id="pendinglist" runat="server">
          
          <asp:datagrid id="PendingEmailsDataGrid" runat="server" PageSize="1" AllowCustomPaging="True" AutoGenerateColumns="False" Width="553px">
          <AlternatingItemStyle BackColor="#F4F9FA">
          </AlternatingItemStyle>
          
          <ItemStyle Font-Size="XX-Small" BackColor="White">
          </ItemStyle>
          
          <HeaderStyle Font-Size="XX-Small" Font-Bold="True">
          </HeaderStyle>
          
          <Columns>
          <mbrsc:RowSelectorColumn AllowSelectAll="True"></mbrsc:RowSelectorColumn>
          <asp:BoundColumn DataField="Email" HeaderText="Email"></asp:BoundColumn>
          <asp:BoundColumn DataField="RequestDate" HeaderText="Request date"></asp:BoundColumn>
          <asp:BoundColumn Visible="False" DataField="SurveyId"></asp:BoundColumn>
          <asp:BoundColumn Visible="False" DataField="EmailId"></asp:BoundColumn>
          </Columns>
          </asp:datagrid>
          <p align="right">
          <asp:linkbutton id="PreviousPendingPageLinkButton" runat="server">&lt;&lt; Previous page</asp:linkbutton>&nbsp;
          <asp:linkbutton id="NextPendingPageLinkButton" runat="server">Next page >></asp:linkbutton></p>
          <p align="left"><asp:button id="DeleteRequestButton" runat="server" Text="Delete selected requests"></asp:button></p>
          </asp:placeholder>
          
          <asp:placeholder id="NoPending" runat="server"><asp:Literal id="NoEmailInvitationInfo" runat="server" EnableViewState="False">No
          email invitation pending but you can start sending invitations right
          now using the mailing tool</asp:Literal>
          </asp:placeholder></td>
          </tr>
          </table>
          
            <br /><br />
            
            <table class="innerText">
            <tr>
            <td colspan="2"><font class="titleFont"><asp:Literal id="ValidatedEmailTitle" runat="server" EnableViewState="False">Validated emails answers - Page</asp:Literal>
            <asp:label id="CurrentAnsweredPageLabel" runat="server">1</asp:label>&nbsp;/
            <asp:label id="TotalAnsweredPagesLabel" runat="server">1</asp:label></font>
            <br/><br /><br /> </td></tr>
            <tr>
            <td>&nbsp;&nbsp; </td>
            <td>
            <asp:placeholder id="NoAnswersPlaceHolder" runat="server">
            <asp:Literal id="NoEmailAnswered" runat="server" EnableViewState="False">No emails have answered your
            invitations yet.</asp:Literal>
            </asp:placeholder>
            
            <asp:placeholder id="AnswersPlaceHolder" runat="server">
            <asp:datagrid id="AnsweredEmailsDatagrid" runat="server" border="0" AutoGenerateColumns="False" Width="553px">
            <AlternatingItemStyle BackColor="#F4F9FA">
            </AlternatingItemStyle>
            
            <ItemStyle Font-Size="XX-Small" BackColor="White">
            </ItemStyle>
            
            <HeaderStyle Font-Size="XX-Small" Font-Bold="True">
            </HeaderStyle>
            
            <Columns>
            <mbrsc:RowSelectorColumn AllowSelectAll="True"></mbrsc:RowSelectorColumn>
            <asp:TemplateColumn>
            <ItemTemplate>
            </ItemTemplate>
            </asp:TemplateColumn>
            <asp:BoundColumn DataField="Email" HeaderText="Email"></asp:BoundColumn>
            <asp:BoundColumn DataField="VoteDate" HeaderText="Answer date"></asp:BoundColumn>
            </Columns>
            </asp:datagrid>
            
            <p align="right"><asp:linkbutton id="PreviousAnsweredPageLinkButton" runat="server">&lt;&lt; Previous page</asp:linkbutton>&nbsp;<asp:linkbutton id="NextAnsweredPageLinkButton" runat="server">Next page >></asp:linkbutton></p>
            <p align="left"><asp:Button id="DeleteVoterButton" runat="server" Text="Delete selected voters"></asp:Button></p></asp:placeholder></td>
            </tr>
            </table>
            
            </td>
            </tr>
            
           
           </table>
</asp:content>
