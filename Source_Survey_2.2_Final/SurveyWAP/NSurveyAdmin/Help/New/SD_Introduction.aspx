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
                    Survey Deployment</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
Survey provides several ways to deploy our survey to our customers.<br />
<br />
* Survey%20Deployement.html  provides us with a HTML link to our
  survey. We can then use this link anywhere from emails, messenger or to
  our website html pages.<br />
<br />
* Survey%20Popup%20Window.html   provides us an invitation popup window
  that we can show on a specific frequency to our website visitors.<br />
<br />
* Take%20Survey.html is a special page inside Survey's administration
  that is meant to allow a registered User%20Manager.html to take a
  survey once he logged inside Survey. This page requires the user to
  have the &quot;take survey&quot; right set for a given Roles%20Manager.html .<br />
<br />
* Web%20Control%20Deployment.html is for more experienced users who
  like to customize the survey ASP.net control and integrate it inside
  their ASP.net pages.<br />
<br />
* ED_Introduction.html Survey provides out of the box a complete
  mailing tool to email invitations to your customers.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Survey%20Popup%20Window.html<br />
Survey%20Deployement.html<br />
Take%20Survey.html<br />
Web%20Control%20Deployment.html<br />
ED_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

