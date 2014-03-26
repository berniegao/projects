<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>

<%@ Page Language="c#" MasterPageFile="~/Wap.master" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserCreator"
    CodeBehind="UserCreator.aspx.cs" %>

<%@ Register TagPrefix="uc1" TagName="UsersOptionsControl" Src="UserControls/UsersOptionsControl.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <uc1:UsersOptionsControl ID="UsersOptions" runat="server"></uc1:UsersOptionsControl>
            </td>
        </tr>
    </table>
</asp:Content>
