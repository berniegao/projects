<%@ Page language="c#" MasterPageFile="~/Wap.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.MailingPoll" Codebehind="MailingPoll.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="UserControls/SurveyListControl.ascx" %>

<%@ Register TagPrefix="vts" Namespace="Votations.NSurvey.WebControls.UI" Assembly="Votations.NSurvey.WebControls" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td valign="top" width="100%" style="width: 778px; 
                background-color: #ffffff; 
                height:744px; 
                vertical-align:top;
                border: 1px #aaaaaa solid ;              
               -webkit-border-radius: 7px;
               -moz-border-radius: 7px;
                border-radius: 7px;
                ">
                <div align="center">
                    <br />
                    <br />
                    <font class="normal"><b>
                        <asp:Literal ID="PleaseWaitInfo" runat="server" EnableViewState="False">.... Please wait system is sending survey invitations ....</asp:Literal></b></font></div>
                <br />
                <br />
                <div align="center">
                    <table width="100%">
                        <tr>
                            <td>
                                <div align="center">
                                    <vts:ResultsBar ID="ProgressBar" runat="server" />
                                    <asp:Label ID="FailedSendingLabel" runat="server" />
                                    <asp:Label ID="AllInvitationsSendMessage" ForeColor="#2B8C33" runat="server" />
                                </div>
                            </td>
                        </tr>
                    </table>
                    <!--
                    <iframe src="MailingPollStatus.aspx" frameborder="0" width="400" scrolling="no" height="50">
                        ; [Your user agent does not support frames or is currently configured not to display
                        frames.</iframe>
-->
                </div>
                <div align="center">
                    <br />
                    <br />
                    <strong><font class="normal">
                        <asp:Literal ID="ProcessInfoLabel" runat="server" EnableViewState="False">This process can take time depending on the load and network conditions</asp:Literal></font></strong></div>
            </td>
        </tr>
    </table>
</asp:Content>
