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
                    Library Directory</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
The library directory allows us to create new directories where we could
put our questions sorted by specific topics.<br />
<br />
<br />
* Add New Library allows us to create a new library directory. At this
  time only one level directories are supported, it is not possible to
  create sub-directories.<br />
<br />
* Edit will let us change the library name.<br />
<br />
* Libray Name is the name of the name of library as shown to the users. <br />
<br />
* Delete Library will delete the directory including all its question
  templates.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
QL_Introduction.html<br />
Library%20Directory.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

