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
                <h2 style="color:#5720C6;">Email Distribution</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
<br />
Survey provides a full mail distribution interface that will let us send
email invitations to take our surveys.<br />
<br />
Once we have send out the invitations we are then able to track who did
answer to it or not, including who answered which answers and using the
EMail%20Code%20Protection.html addin protect our survey against multiple
submissions.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Survey%20Mailing.html<br />
Mailing%20Templates.html<br />
Mailing%20Status.html<br />
Mailing Log<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

