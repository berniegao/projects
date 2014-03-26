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
                    Invitation Mailing</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

Using the invitation mailing we can send out invitations to our customers
to take our survey.<br />
<br />
* Choose Mailing Template we can either use an existing
  Mailing%20Templates.html or create a new one.<br />
<br />
* Email Invitation List is a comma separated list of emails to which
  you want to send the invitation.<br />
<br />
* From is the email from which the invitation will originate.<br />
<br />
* From Name is the name of the person sending the invitation.<br />
<br />
* Invitation Message is the invitation message, two special optional
  tags that will be replaced while sending the invitation can be included
  in the invitation.<br />
<br />
  [--invitationid-] this tag will be replaced by a unique identifier that
  will be used by EMail%20Code%20Protection.html security addin to
  uniquely identify a user to avoid multiple submission. Note that the
  EMail%20Code%20Protection.html must be activated in order to avoid
  multiple submissions.<br />
<br />
  [--invitationtoken-] this tag will be replaced by one of the token
  available in your Token_Introduction.html List. If the destination
  email is found in token identity's email the given token will be taken.
  If no token can be attached to this email a random token will be taken
  from our TGenerator.html list and finally if no tokens are available
  anymore, a new one will be created.<br />
<br />
Anonymous Entries Survey will no track a link between the email and the
respondent answers if this option is checked.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
ED_Introduction.html<br />
Mailing%20Templates.html<br />
Mailing%20Status.html<br />
Mailing%20Log.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

