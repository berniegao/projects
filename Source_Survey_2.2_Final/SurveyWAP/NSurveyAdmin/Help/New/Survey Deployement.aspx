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
                    Survey Link Deployment</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

Survey provides us with a HTML link to our survey. We can then use this
link anywhere from emails, messenger or in our website HTM pages.<br />
<br />
You can copy &amp; past the link provided and use it in almost any
application that supports HTML links.<br />
<br />
The survey id is unique and it is not possible for the respondent to
alter the link in order to find out what other surveys we've created.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Survey%20Popup%20Window.html<br />
SD_Introduction.html<br />
Take%20Survey.html<br />
Web%20Control%20Deployment.html<br />
ED_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

