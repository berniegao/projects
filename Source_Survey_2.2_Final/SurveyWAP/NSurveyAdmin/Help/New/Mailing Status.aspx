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
                    Mailing Status</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
It's very easy to create new mailing templates that we will be able to
reuse across all the surveys.<br />
<br />
* Pending Emails  shows us a list of emails that have been invited but
  didn't take the survey yet. It is not possible at this time to send a
  reminder, in order to remind a email we will to delete it from the
  pending list and re-send an invitation from the Survey%20Mailing.html.<br />
<br />
* Validated Emails shows us the list of emails that have responded to
  the survey. When clicking on the details we can see what code (email or
  token) belongs to the answers posted.<br />
<br />
* Send a reminder let us send out a reminder to all emails that did not
  answer to our survey yet.<br />
<br />
<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
ED_Introduction.html<br />
Survey%20Mailing.html<br />
Mailing%20Templates.html<br />
Mailing%20Log.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

