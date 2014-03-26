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
                    Web Control Deployment</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />

This page is intended for more experienced users who like to customize
the survey ASP.net control and integrate it inside their ASP.net pages.
Note that we can integrate as many survey controls on the same page as we
want.<br />
<br />
In order to integrate the ASP.net web control code that is provided on
the deployment page inside our own ASP.net pages we must follow following
steps :
<br />
<br />
1. Open the ASP.net page that should integrate the survey web control
   in a text editor like notepad
<br />
<br />
2. Add following code on the next line after the &lt;%@Page ... %&gt; page
   directive :<br />
   &lt;%@ Register TagPrefix=&quot;vts&quot; Namespace=&quot;Votations.Survey.WebControls&quot;
   Assembly=&quot;Votations.Survey.WebControls&quot; %&gt;<br />
<br />
3. Once we have added this piece of code all we need to do is to cut &amp;
   past the code provided in the Survey asp.net code section and place it
   anywhere in our page as long as it is after a &lt;form&gt;.<br />
<br />
4. lf the page is in a separate web application than the original
   Survey installation we must also copy the DLL's from the Survey web
   application Bin directory to the Bin directory where the page that
   contains the ASP.net page.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
Survey%20Popup%20Window.html<br />
SD_Introduction.html<br />
Survey%20Deployement.html<br />
ED_Introduction.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

