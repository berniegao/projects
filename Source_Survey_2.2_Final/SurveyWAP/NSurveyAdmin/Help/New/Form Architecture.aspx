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
                    Form Architecture</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

Survey has a very flexible architecture based on answer types and
question types and container.<br />
<br />
The main survey control is a container that can contains any question
type either one of the provided question types or we can also create our
own question type using the Survey's SDK. These questions items contain
answer items. As with the question item,  answer items can be either one
of the provided answer item or one that we can create using Survey's SDK.<br />
<br />
Each answer item provides a set of events that the question item can use
in order to get notified when new answers have been posted and in return
the question item will aggregate those results and send them back to the
container who will act accordigly to what it receives.<br />
<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

