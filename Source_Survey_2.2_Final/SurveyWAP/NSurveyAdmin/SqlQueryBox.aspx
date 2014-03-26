<%@ Page language="c#" MasterPageFile="~/Wap.master"   AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.SqlQueryBox" Codebehind="SqlQueryBox.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="SqlBox" Src="~/NSurveyAdmin/Sql/sql.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <uc1:SqlBox ID="NewSqlQueryBox" runat="server"></uc1:SqlBox>
            </td>
        </tr>
    </table>
</asp:Content>
