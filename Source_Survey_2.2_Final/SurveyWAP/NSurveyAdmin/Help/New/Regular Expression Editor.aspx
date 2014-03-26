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
                    Regular Expression Editor</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

A regular expression is a string based language that allows to check if a
given text matches the expression or not. We can check a string against
any regular expression combination like emails, numbers, zip codes etc
... Almost any FieldT_Introduction.html in Survey can be validated
against a regular expression created using the regular expression editor.<br />
<br />
To learn more about regular expressions you may visit following site :<br />
<a href="www.regexlib.com/index.html" target="_blank">www.regexlib.com/index.html</a><br />
<br />

Edit Regular Expression<br />
<br />
* Name is the name that the regular expression will have in Survey
  regular expression library.<br />
<br />
* Regular Expression is the regular expression that will validate the
  text entry.<br />
<br />
* Error Message is the error message that will be shown to the
  respondent if his entry didn't match the regular expression.<br />
<br />
Test Regular Expression<br />
<br />
* Regular Expression is the regular expression we want to test.<br />
<br />
* Value To Testis the value we want to test against our regular
  expression.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
Question%20Editor.html   <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

