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
                    Answer Type Creator</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>

Survey provides a way to create customised Answer Types without the need to have 
any programming knowledge. Using the type creator four answer types can be created and that can be re-used inside the questions :<br />
<br />
* SelectionT_Introduction.html<br />
* FieldT_Introduction.html<br />
* XMLT_Introduction.html<br />
* SQLType_Introduction.html<br />
<br />
Selection Types<br />
<br />
* Field Name is the name of the type that will be shown in the type
  selection inside the Answer Editor.<br />
<br />
* Allow Selection if we are creating a selection type we need to check
  this option.<br />
<br />
* Field Entry is our selection type offering an alternate entry like
  the Selection%20-%20Other.html type.<br />
<br />
Field Types<br />
<br />
* Field Name is the name of the type that will be shown in the type
  selection inside the Answer Editor.<br />
<br />
* Allow Selection if we are creating a field type we don't need to
  check this option.<br />
<br />
* Field Entry we need to check this option to display the extra
  settings related to field types.<br />
<br />
* Rich Field does our filed allow extended HTML edition features.
<br />
* Field Width of our field.
<br />
* Field Height of our field. If the height is more than one our field
  will be automatically rendered as a multi-line textbox.
<br />
* Field Max. Length the maximum text length a respondent can enter.
  Note that fields with a height of more than one do not validate the
  max. length.
<br />
* Field Shown In Results OBSOLETE
<br />
* Javascript Function Name is the name of the javascript function that
  will be called to validate the field content. The javascript function
  should be defined inside the Javascript code option.
<br />
* Error Message is the error message that will show up if the
  javascript function return false.
<br />
* Javascript Code is the javascript code that will validate the field
  content. The function must return true if the condition is matched or
  false if the method could not validate the content of the field.<br />
<br />
  Code Example to validate a mandatory field :<br />
  function isFilled(sender)<br />
  {<br />
  if (sender.value.length == 0)<br />
  {<br />
  sender.focus();<br />
  return false;<br />
  }<br />
  else<br />
  {<br />
  return true;<br />
  }<br />
  }<br />
<br />
Xml Bound Types<br />
<br />
* Field Name is the name of the type that will be shown in the type
  selection inside the Answer Editor.
<br />
* Xml File Name is the file name of the Xml file that the type will be
  bound to.
<br /><br />
  Note that the Xml file has to be in the directory specified by
  SurveyXmlDataPath ellement of the web.config. At this time it is not
  possible to edit or create Xml files through the administration
  interface.<br />
<br />
  The format of the Xml file must be as following :<br />
<br />
  &lt;?xml version=&quot;1.0&quot; standalone=&quot;yes&quot;?&gt;<br />
  &lt;SurveyDataSource<br />
  xmlns=&quot;<a href="http://survey.codeplex.com/SurveyDataSource.xsd" target="_blank">http://survey.codeplex.com/SurveyDataSource.xsd</a>&quot;&gt;<br />
  &lt;XmlDataSource&gt;<br />
  &lt;RunTimeAnswerLabel&gt;Label To Show : &lt;/RunTimeAnswerLabel&gt;<br />
  &lt;XmlAnswers&gt;<br />
  &lt;XmlAnswer&gt;<br />
  &lt;AnswerValue&gt;&lt;/AnswerValue&gt;&lt;AnswerDescription&gt;[Select an<br />
  answer]&lt;/AnswerDescription&gt;<br />
  &lt;/XmlAnswer&gt;<br />
  &lt;XmlAnswer&gt;<br />
  &lt;AnswerValue&gt;yourvalue1&lt;/AnswerValue&gt;&lt;AnswerDescription&gt;your<br />
  answer&lt;/AnswerDescription&gt;&lt;/XmlAnswer&gt;<br />
  &lt;/XmlAnswers&gt;<br />
  &lt;XmlAnswer&gt;<br />
  &lt;AnswerValue&gt;yourvalue2&lt;/AnswerValue&gt;&lt;AnswerDescription&gt;your second<br />
  answer&lt;/AnswerDescription&gt;&lt;/XmlAnswer&gt;<br />
  &lt;/XmlAnswers&gt;<br />
  &lt;/XmlDataSource&gt;<br />
  &lt;/SurveyDataSource&gt;<br />
<br />
Sql Bound Types<br />
<br />
* Field Name is the name of the type that will be shown in the type
  selection inside the Answer Editor.
<br />
* Sql Query is the Sql query that will populate the dropdown list. You
  can learn more about Sql bound types by reading the
  SQLType_Introduction.html
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
AT_Introduction.html<br />
Score_Introduction.html<br />
Answers%20Editor.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

