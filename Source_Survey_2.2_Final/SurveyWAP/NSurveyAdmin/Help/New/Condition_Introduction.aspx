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
                    Multi Language Settings</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
<br />
Conditions Introduction<br />
<br />
Survey comes out of the box with a unified conditional engine. Using this
conditional engine Survey's elements can trigger specific actions based
on the conditions rules and respondent answers.<br />
<br />
Following Survey elements are using the conditional engine :<br />
<br />
* Branching%20conditions.html<br />
* Skip%20Logic%20Conditions.html<br />
* Thanks%20Message%20Conditions.html<br />
<br />
A condition can be composed of one or multiple condition rules that are
tied together using conditional operators like AND, OR.<br />
<br />
Condition Rules<br />
A condition rule is the heart of a condition. Rules can build based on
the questions and answers available in our survey form and are evaluated
a runtime while the respondent takes the survey with his answers.<br />
<br />
* Question Answered let us setup a rule based on the question answer
  answers available in the survey form. Once we have selected a question
  we can choose whether we want to setup a rule for a specific answers or
  for all answers of a question.<br />
<br />
  If we choose to create a rule based on a specific answer we will have
  several more features available.<br />
<br />
  o Selection answers type have no extra features.<br />
<br />
  o Text entry answers allow us to setup an extra rule to see if the
    text entered match that rule. If we dont specify any text then Survey
    will consider the rule valid if any text has been entered by the
    respondent.<br />
<br />
* Score rules let us setup rules based on the score of the respondent,
  it can be either the total score at a given moment or a score for
  specific question.<br />
<br />
  Score features are only available if we have turned on Survey's
  Score_Introduction.html features.<br />
<br />
Once we have created a new rule for the condition we can add any number
of new rules to the condition as we need. If we have more than one rule
we can also choose which logical operator will be used to evaluate the
rules together in the condition.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Skip%20Logic%20Conditions.html<br />
Branching%20conditions.html<br />
Thanks%20Message%20Conditions.html<br />
Score_Introduction.html<br />
HowToBranch_Introduction.html<br />
HowToSkip_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

