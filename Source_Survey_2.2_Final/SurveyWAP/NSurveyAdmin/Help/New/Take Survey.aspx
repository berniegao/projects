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
                    Take Survey</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
This is a special page that is meant to allow a registered
User%20Manager.html to take a survey once he logged inside Survey. This
page requires the user to have the &quot;take survey&quot; right set.<br />
<br />
Once the user has logged inside Survey and reach this page he will be
able to select the survey he has the right to take. We can also restrict
the respondent to take a survey only one time by activating the
Survey%20Security%20Context.html on the survey.<br />
<br />

<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
SD_Introduction.html<br />
Survey%20Deployement.html<br />
Web%20Control%20Deployment.html<br />
ED_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

