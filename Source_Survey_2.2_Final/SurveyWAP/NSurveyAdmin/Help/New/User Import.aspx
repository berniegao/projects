<%@ Page Language="c#" MasterPageFile="~/nsurveyadmin/MsterPageTabs.master" AutoEventWireup="false"
    Inherits="Votations.NSurvey.WebAdmin.HelpFiles" CodeBehind="../default.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="btnBack" ImageUrl="~/Images/index-icon.png" runat="server" CssClass="buttonIndex"
                    PostBackUrl="~/NSurveyAdmin/Help/default.aspx" Visible="True" ToolTip="Back to Helpfiles Index" />
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <br />
                <h2 style="color:#5720C6;">
                    Import Users</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

This page will let us import existing users.<br />
<br />
* Import CSV Data we can cut &amp; past a list of users we want to import
  into Survey. <br />
<br />
* Administrator gives administrator rights to the users. <br />
<br />
* Assign All Surveys users will be able to access all sureys. Note that
  if he is not administrator the roles will apply for what they can do or
  not do on the surveys.<br />
<br />
* Assigned Surveys what surveys does the users have access to. <br />
<br />
* Roles  what roles / rights has the user.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
UM_Introduction.html<br />
User%20Manager.html<br />
User%20Creation%20Tool.html<br />
Group%20Manager.html<br />
Roles%20Manager.html <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

