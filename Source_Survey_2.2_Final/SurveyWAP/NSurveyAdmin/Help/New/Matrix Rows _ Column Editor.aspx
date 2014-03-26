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
                    Matrix Layout Editor</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

The matrix layout editor let us add, edit rows / columns to our
Matrix%20Question.html.<br />
<br />
Matrix Layout Editor<br />
<br />
* will move a row's position up.<br />
<br />
*  will move a row's position down.<br />
<br />
* will move a column's position to the left.<br />
<br />
* will move a column's position to the right.<br />
<br />
* let us add either a new column or a new row to the matrix.<br />
<br />
* edit either a column or a row inside the matrix.<br />
<br />
* deletes a column or a row. Respondent answers related to the row
  columns will also be deleted and cannot be recovered afterward.<br />
<br />
Row Editor<br />
<br />
* Row Question is the text of the row.<br />
<br />
* Pipe Alias we can specify an alias that we can use to pipe respondent
  row's answers in subsequent questions labels or answers labels. To
  learn more about piping and pipe alias we suggest reading the
  Piping_Introduction.html.<br />
<br />
* Reporting Alias we can specify an alias that we can afterward show up
  in the reports instead of showing the full row text.<br />
<br />
Column Editor<br />
<br />
* Column Header Text the text that will appear in the matrix's column's
  header<br />
<br />
* Typeallows us to set the current the AT_Introduction.html we want in
  our column. Respondent answers already collected will not be deleted if
  we change the type.<br />
<br />
* Reporting Alias is the text that can be shown instead of the answer
  text inside our reports.<br />
<br />
* Rating Part let us choose if we want this selection to be part of the
  rating / scale calculation in the reports. To learn more about rating
  please read the Rating_Introduction.html.<br />
<br />
  This feature is only available if we have turned on
  Rating_Introduction.html on the matrix question of the row / columns
  set.<br />
<br />

<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
Matrix%20Question.html<br />
AT_Introduction.html<br />
Matrix Question EditorMatrix%20Question%20Editor.html<br />
Rating_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

