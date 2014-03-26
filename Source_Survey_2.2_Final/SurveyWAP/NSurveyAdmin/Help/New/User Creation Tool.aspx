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
                    User Creation Tool</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
This page will let use create our users in the system. Depending on the
user provider we might no be able to edit the user but only assign roles
and surveys to him.<br />
<br />
* User Name is the user name to log into Survey. <br />
<br />
* User Password is the password to log into Survey. This password is
  encrypted in the database and cannot be recovered.<br />
<br />
* First Name is the first name of the account's user.<br />
<br />
* Last Name is the last name of the account's user.<br />
<br />
* Email is the email of the account's user.<br />
<br />
* Administratorgives administrator rights to the user.<br />
<br />
* Assign All Surveys user will be able to access all sureys. Note that
  if he is not administrator the roles will apply for what he can do or
  not do on the surveys.<br />
<br />
* Assigned Surveys  what surveys does the user have access to.<br />
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
Group%20Manager.html<br />
Roles%20Manager.html<br />
User%20Import.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

