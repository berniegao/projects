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
                    Library Templates</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

The library templates allows us to add new questions to a library that
will be available as templates to be re-used from the
Question%20Editor.html.<br />
<br />
<br />
* Insert New / Existing Question allows us to add a new question to the
  template either by creating a nwe one or by copying an existing one
  from a survey.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
Question%20Editor.html <br />
QL_Introduction.html<br />
Library%20Templates.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

