<%@ Page Language="c#" MasterPageFile="~/nsurveyadmin/MsterPageTabs.master" AutoEventWireup="false"
    Inherits="Votations.NSurvey.WebAdmin.HelpFiles" CodeBehind="../default.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="btnBack" ImageUrl="~/Images/index-icon.png" runat="server" CssClass="buttonIndex"
                    PostBackUrl="~/NSurveyAdmin/Help/default.aspx#QuestionLibrary" Visible="True" ToolTip="Back to Helpfiles Index" />
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <br />
                <h2 style="color:#5720C6;">
                    Question Library</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

Survey allows us to create a question library where we can store
frequently used questions to avoid creating them again and again and
re-use them from the Question%20Editor.html.<br />
<br />
As the question library can be shared across all users in a multi-user
configuration, it is also a good way to share questions with other users
of Survey.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
Question%20Editor.html<br />
Library%20Directory.html<br />
Library%20Templates.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

