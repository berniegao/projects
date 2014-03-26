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
                    Xml Bound Types Introduction</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
Xml bound types are bound to an Xml file available on the server.<br />
<br />
Xml bound type will read the Xml file to which they are bound to and show
the choices inside a dropdown list. It is very easy to create and bind
new Xml bound types to your own Xml files using the online
Answer%20Type%20Creator.html.<br />
<br />
Following xml bound types are available :<br />
<br />
* Xml%20-%20Country.html<br />
* Xml%20-%20US%20States.html<br />
<br />
Xml files are based on the current language settings. Survey will try to
read Xml file based on the language Survey is running in, before reading
the default one. eg: If we bind our Xml type to a file called
&quot;country.xml&quot; this will be our default file, if we switch to French for
example we could have another Xml file called &quot;country.fr.xml&quot; that will
be automatically read in when the survey is in French. This way it is
very easy to provide translated version of an single Xml bound type to
different audiences.<br />
<br />

                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
FBT_Introduction.html<br />
Question%20Editor.html<br />
Answer%20Type%20Creator.html<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

