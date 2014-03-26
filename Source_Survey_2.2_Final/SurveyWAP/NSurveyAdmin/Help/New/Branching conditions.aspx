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
                    Branching Conditions</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
Branching conditions allow us to setup logical rules based on
respondent's answers to branch the respondent to a specific page in
survey or even terminate the survey.<br />
<br />
As branching conditions is a feature related to pages we must have at
least 2 pages in our survey to be able to use the branching features. Its
not possible to use branching on the last page of the survey.<br />
<br />
Each condition is based on a set of rules that you can define. The first
condition that will be met will branch to the page that we defined in the
branching editor. You can have as many conditions as you whish and order
or re-order them at any time.<br />
<br />
To learn more about conditions and how they work and how to use them you
may read the Condition_Introduction.html.
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Skip%20Logic%20Conditions.html<br />
Thanks%20Message%20Conditions.html<br />
HowToBranch_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

