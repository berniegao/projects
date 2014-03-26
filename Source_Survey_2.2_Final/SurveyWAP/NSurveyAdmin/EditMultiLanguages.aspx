<%@ Page language="c#" MasterPageFile="~/Wap.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.EditMultiLanguages" Codebehind="EditMultiLanguages.aspx.cs" %>
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
          
          <table id="Table2">
          <tr>
          <td width="99%">
          <font class="titleFont"><asp:Literal id="MessagesTranslatorLabel" runat="server" EnableViewState="False" Text="Messages translator"></asp:Literal></font></td>
          <td align="right"></td>
          </tr>
          </table>
          
          <br /><br />

        </td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td>
          
            <table class="innerText">
              <tr>
                <td nowrap="nowrap" width="180" valign="top">
                <strong><asp:Literal id="SurveyCreationDateLabel" runat="server" EnableViewState="False" Text="Source Text :"></asp:Literal></strong> </td>
                <td width="480"><asp:ListBox id="LanguageTextListBox" runat="server"></asp:ListBox></td>
              </tr>
              <tr>
                <td width="180"><strong></strong>&nbsp; </td>
                <td></td>
              </tr>
              <tr>
                <td width="180"><strong></strong>&nbsp; </td>
                <td></td>
              </tr>
              <tr>
                <td width="180"><strong></strong>&nbsp; </td>
                <td></td>
              </tr>
              <tr>
                <td width="280"><strong></strong> </td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td width="180" valign="top"><strong></strong>&nbsp; </td>
                <td></td>
              </tr>
            </table>
            
            <br />
            <asp:PlaceHolder id="LanguageTextPlaceHolder" runat="server"></asp:PlaceHolder>
            <br /><br />
            <asp:button id="ResetVotesButton" runat="server" Text="Reset votes!"></asp:button>
          </td>
         </tr>
        </table>
        
       </td>
      </tr>
      
    </table>

 </asp:content>
