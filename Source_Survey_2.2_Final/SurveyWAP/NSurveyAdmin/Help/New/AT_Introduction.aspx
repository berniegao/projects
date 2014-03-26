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
Answer Types Introduction</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

Answer types will let us create our questions as we want in order to get
the feedback we need. Survey provides out of the box a large number of
answer types that can be used to compose a question. Each item has its
specific set of properties and all items can be composed together in the
same question.<br />
<br />
Here are the items provided out of the box :<br />
<br />
Selection%20-%20Text.html Selection%20-%20Other.html<br />
Field%20-%20Basic.html Field%20-%20Large.html Field%20-%20Required.html<br />
Field%20-%20Email.html Field%20-%20Calendar.html Field%20-%20Rich.html<br />
Field%20-%20Ranking.html Field%20-%20Constant%20Sum.html<br />
Field%20-%20Hidden.html Field%20-%20Password.html<br />
Extended%20-%20File%20Upload.html Boolean.html Image%20-%20Password.html<br />
Xml%20-%20Country.html Xml%20-%20US%20States.html<br />
Subscriber%20-%20Xml%20List.html<br />
<br />
It is also possible to create new items either using the<br />
Answer%20Type%20Creator.html or through the Survey SDK.<br />
<br />

<br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
Answer%20Type%20Creator.html<br />
Answers%20Editor.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

