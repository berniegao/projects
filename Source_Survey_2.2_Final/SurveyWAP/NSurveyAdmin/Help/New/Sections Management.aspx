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
                    Section Management</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

This section will let us enable Repeatable_Introduction.html on our
question.<br />
<br />
Full Answers Repeat<br />
<br />
* Max. Selections Allowed is the maximum number of times a question can
  be repeated by the respondent.<br />
<br />
* Add Section Link Text is the text show to the respondent to add a new
  section. If you have ML_Introduction.html features enabled current
  edited text will correspond to the Edition language of the question.<br />
<br />
* Delete Section Link Text is the text show to the respondent to delete
  an existing section. If you have ML_Introduction.html features enabled
  current edited text will correspond to the Edition language of the
  question.<br />
<br />
Grid Answers Repeat<br />
<br />
* Max. Selections Allowed is the maximum number of times a question can
  be repeated by the respondent.<br />
<br />
* Add Section Link Text is the text show to the respondent to add a new
  section. If you have ML_Introduction.html features enabled current
  edited text will correspond to the Edition language of the question.<br />
<br />
* Delete Section Link Text is the text show to the respondent to delete
  an existing section. If you have ML_Introduction.html features enabled
  current edited text will correspond to the Edition language of the
  question.<br />
<br />
* Edit Section Link Text is the text show to the respondent to edit an
  existing section. If you have ML_Introduction.html features enabled
  current edited text will correspond to the Edition language of the
  question.<br />
<br />
* Update  Section Link Text is the text show to the respondent to
  update an existing section. If you have ML_Introduction.html features
  enabled current edited text will correspond to the Edition language of
  the question.<br />
<br />
* Answers Shown In Grid is the list of answers columns that will be
  used in the review grid.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
RSI_Introduction-2.html<br />
Question%20Editor.html <br />
Repeatable_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

