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
                    User Manager</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

Throught the Accounts options the Survey Project Users can be managed. Depending on the
type of user provider used (e.g. AD or Windows Account integration) it may be impossible to edit user details and only roles and surveys can be assigned.
<br />
<br />
* User Name - is the username to log into Survey.
<br />
<br />
* User Password - is the password to log into Survey. This password is
  encrypted in the database and cannot be recovered. <br />
<br />
* First Name - is the first name of the Survey user.
<br />
<br />
* Last Name - is the last name of the Survey user.
<br />
<br />
* Email - is the email of the Survey user.
<br />
<br />
* Administrator - set administrator rights to the user. Administrators have complete access to all parts of the Survey tool.
<br />
<br />
* Assign All Surveys - user will be able to access all surveys. Note that
  if the administrator option is NOT set the Roles settings will determine what actions are allowed at survey level.
<br />
<br />
* Assigned Surveys - list of surveys the user has access to and option to assign/ unassign surveys.
<br />
<br />
* Roles - list of roles a user is part of and option to add/ remove roles.
<br />
<br />
* Delete User -  deletes the user. Note that surveys create by the user are not deleted with the user. 
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
UM_Introduction.html<br />
User%20Creation%20Tool.html<br />
Group%20Manager.html<br />
Roles%20Manager.html<br />
User%20Import.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

