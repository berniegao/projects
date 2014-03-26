<%@ Page Title="" Language="C#" MasterPageFile="~/Wap.Master" AutoEventWireup="true"
    CodeBehind="WarningScreen.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.WarningScreen" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td style="width: 778px; 
                background-color: #ffffff; 
                height:744px; 
                vertical-align:top;
                border: 1px #aaaaaa solid ;              
               -webkit-border-radius: 7px;
               -moz-border-radius: 7px;
                border-radius: 7px;
                ">
                <br />
                <br />
                <br />
                <asp:Label CssClass="WarningMessage" runat="server" ID="lblWarning"></asp:Label>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
