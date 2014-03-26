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
                    Matrix Question</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

A matrix question is a question that can be composed of rows and column
using the Matrix%20Question%20Editor.html.<br />
<br />
Each row is basically a single question and each column can be composed
of any of the available AT_Introduction.html. Each row will share the
same answer type of the column, it is not possible to have one row that
has a different AT_Introduction.html inside the same column.<br />
<br />
Matrix questions are handy when we run out of space in our page or if we
have a set of questions that related together.<br />
<br />
Matrix Question Example<br />
<br />
A matrix question with a radio buttons layout and large field, it is also
possible to have matrix questions with checkboxes to allow multiple
choices.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
AT_Introduction.html<br />
Insert%20Question.html<br />
Matrix%20Question%20Editor.html<br />
Static%20Question.html<br />
Single%20Question.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

