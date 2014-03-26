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
                    Question Editor</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

The question editor let us setup the configuration and constraints of our
question.<br />
<br />
If we want to add answers to the question we will need to use the
Answers%20Editor.html after having created our question.<br />
<br />
Question Options<br />
<br />
* Selection Mode is the mode in which SelectionT_Introduction.html will
  be rendered by the Survey engine.<br />



<br />
  The radio button mode will show SelectionT_Introduction.html inside the
  question as radio buttons. The respondent can select only one answer in
  this mode.<br />


<br />
  The checkbox mode will show SelectionT_Introduction.html inside the
  question as checkboxes. The respondent can select multiple answers in
  this mode.
<br />
<br />
  The dropdown list mode will group and show SelectionT_Introduction.html
  inside a dropdown list. The respondent can select only one answer in
  this mode.<br />
<br />
* Display Mode is way we want to layout the answer items inside the
  question. We can either choose to order the layout in a vertical manner
  or to order the layout in an horizontal manner.<br />
<br />
* Number Of Columns is the number columns in which the question layout
  will be split into.<br />
<br />
* Fields Layout we can show Field Answer Types of the question in two
  different ways to the respondent.<br />


<br />
  In the left to right mode the answer item label will be shown on the
  same line as the textbox.
<br />
<br />
  In the top to bottom mode the answer item label will be shown on top of
  the textbox.<br />
<br />
* Randomize Answers Order we can choose to show the answer's in a
  random order to each respondent to avoid the &quot;order bias effect&quot;.<br />
<br />
* Rating Part we can activate the answers rating / scaling options in
  our question's Selection Answer Types. To know more about rating and
  scaling we suggest reading the Rating_Introduction.html.<br />
<br />
* Min. Selection Required is the minimum answers that are mandatory to
  select in the question. Only Selection Answer Types are calculated in
  the selection number count, if we want to make Field Answer Types
  mandatory we can do it by checking the mandatory checkbox in the
  Field%20-%20Basic.html answers options.<br />
<br />
* Max. Selection Allowed is the maximum of answers that can be selected
  in the question. Only Selection Answer Types are calculated in the
  selection number count, if we want to make Field Answer Types mandatory
  we can do it by checking the required field in the
  Field%20-%20Basic.html answers options.<br />
<br />
* Pipe Alias we can specify an alias that we can use to pipe respondent
  question's answers in subsequent questions labels or answers labels. To
  learn more about piping and pipe alias we suggest reading the
  Piping_Introduction.html.<br />
<br />
* Reporting Alias we can specify an alias that we can afterward show up
  in the reports instead of showing the full question text.
<br />

<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
AT_Introduction.html<br />
Piping_Introduction.html<br />
Rating_Introduction.html<br />
Repeatable_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

