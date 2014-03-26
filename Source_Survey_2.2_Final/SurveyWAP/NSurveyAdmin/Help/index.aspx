<%@ Page Language="c#" MasterPageFile="~/nsurveyadmin/MsterPageTabs.master" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.HelpOptions" Codebehind="index.aspx.cs" %>



 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table class="TableLayoutContainer">
         <tr>
             <td align="center" valign="top"><br />

                 <table width="80%" align="center">
                     <tr>
                         <td class="normal" style="text-align: left;">
                        <!--      <asp:Label ID="HelpMessageLabel" runat="server" CssClass=""></asp:Label> -->


                             <span class="titleFont">Helpfiles</span> 
                             <br />
                             <br /><asp:Literal ID="HelpFilesText" runat="server" EnableViewState="False">Helpfiles Text</asp:Literal>
                              <br /><br /><br />
                         </td>
                     </tr>
                     <tr>
                         <td class="normal" style="text-align: left;">
                             <span class="titleFont">Startup & Settings</span> 
                             <br /><br />
                             <asp:Literal ID="StartupSettings" runat="server" EnableViewState="False">Startup & Settings</asp:Literal>
                         </td>
                     </tr>
                 </table>

             </td>
         </tr>
     </table>
 </asp:Content>

