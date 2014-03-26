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
                    Single Question</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
A single question can be composed of any number of answer types.<br />
<br />
Survey does not have the concept of radio, checkbox or field question.
Survey is much more modular and allow you to compose your own question
based on the AT_Introduction.html you need inside your question.<br />
<br />
Single Question Examples<br />
<br />
A single question composed of FieldT_Introduction.html and
XMLT_Introduction.html (Country)<br />
<br />
A single question composed of SelectionT_Introduction.html with a radio
button selection.<br />
<br />
A single question composed of SelectionT_Introduction.html with a drop
down selection.<br />
<br />
As you can see, by composing the AT_Introduction.html together you can
almost create any kind of questions you want.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
SelectionT_Introduction.html<br />
AT_Introduction.html<br />
FieldT_Introduction.html<br />
XMLT_Introduction.html<br />
AT_Introduction.html<br />
Insert%20Question.html<br />
Question%20Editor.html<br />
Matrix%20Question%20Editor.html<br />
Static%20Question.html<br />
Matrix%20Question.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

