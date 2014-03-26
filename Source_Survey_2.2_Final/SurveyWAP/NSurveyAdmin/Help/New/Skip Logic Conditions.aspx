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
                    Skip Logic Conditions</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
Skip logic conditions allow us to setup logical rules based on
respondent's answers to hide a question to the respondent.<br />
<br />
To use skip logic features we must have at least two pages in your survey
to be able to use the skip logic features as a question can only be
hidden based on answers of previous pages not answers on the current page
of the question. Skip logic can not be used on the first page of a survey.<br />
<br />
Each condition is based on a set of rules that you can define. The first
condition that will be met will hide the question to which the skip logic
applies. You can have as many conditions as you whish and order or
re-order them at any time.<br />
<br />
To learn more about conditions and how they work and how to use them you
may read the Condition_Introduction.html.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Branching%20conditions.html<br />
Thanks%20Message%20Conditions.html<br />
HowToSkip_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

