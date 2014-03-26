<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.InsertSecurityAddIn" Codebehind="InsertSecurityAddIn.aspx.cs" %>

<asp:content id="Content1" contentplaceholderid="ContentPlaceHolder1" runat="Server">
<table class="TableLayoutContainer">
  <tr>
    <td></td></tr>
  <tr>
    <td class="contentCell" valign="top"> <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
    
      <table class="innerText">
        <tr>
          <td colspan="2">
<font class="titleFont"><asp:Literal id="SurveyAddAdinTitle" runat="server" EnableViewState="False" Text="Add new security addin"></asp:Literal></font>
<br /><br /><br /> 
        </td></tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td>
          
            <table class="innerText">
              <tr>
                <td nowrap="nowrap" width="140" height="16"><strong>
                <asp:Literal id="AvailableAddInsLabel" runat="server" EnableViewState="False" Text="Available addins  :"></asp:Literal></strong> </td>
                <td width="480" height="16"><asp:DropDownList id="SecurityAddInDropDownList" runat="server"></asp:DropDownList></td>
             </tr>
          </table>
<br />
<asp:button id="AddAddinButton" runat="server" Text="Add security addin to survey"></asp:button></td>
</tr>
</table>

</td>
</tr>

</table>

</asp:content>
