﻿<%@ Page Language="c#" MasterPageFile="~/nsurveyadmin/MsterPageTabs.master" AutoEventWireup="false"
    Inherits="Votations.NSurvey.WebAdmin.HelpFiles" CodeBehind="default.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="TableLayoutContainer">
        <tr>
            <td>
                <asp:ImageButton ID="btnBack" ImageUrl="~/Images/index-icon.png" runat="server" CssClass="buttonIndex"
                    PostBackUrl="~/NSurveyAdmin/Help/default.aspx#MLSurveys" Visible="True" ToolTip="Back to Helpfiles Index" />
            </td>
        </tr>
        <tr>
            <td class="contentCell" valign="top">
                <br />
                <h2 style="color:#5720C6;">
                    System Messages & Multiple Languages</h2>
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
                All system messages and screen texts (for both the administration tool and web controls) can
                be easily adjusted or translated as these messages are stored inside an external
                XML file located by default in the &quot;XmlData/Languages/&quot; directory of the
                webapplication. Each language has its own XML language files with the messages and texts
                in that language. By default Survey&trade; Project comes with a complete set of English and Dutch
                XML files.<br />
                <br />
                A new language XML file can be created manually by copying the default en-US.xml
                file and renaming the copy to a local language code and translate the values inside
                it.<br />
                <br />
                As the XML file also contains the survey web control's system messages like error
                messages or submit button texts (".. is required", "next page" etc...) these messages
                can be changed by changing the current XML language file used. However it is important to
                note that these changes will affect all SP&trade; users.
                <br />
                <br />
                The language setting of the webbrowser determine the XML languagefiles used to present
                the webpage texts. This effect can be changed in the web.config file section: culture/
                uiculture. If set to "auto" Survey™ will pick up the culture/ language of the browser
                settings. To explicitely pick a specific culture/ language, replace "auto" with
                "en-US" or "nl-NL" for example.
                <br />
                <br />
                Some languages can have regional codes like &quot;en-US&quot; for US English. If
                Survey&trade; cannot find a matching 2 letter code for a given language it will try to
                match the single letter code like &quot;en&quot; for English codes.<br />
                <br />
                <br />
                <hr style="color:#e2e2e2;"/>
                <br />
                <br />
                <h3>
                    More Information</h3>
                <br />
               <a href="MultiLanguage_Introduction.aspx" target="_self">Multi Language Tutorial</a><br />
                <a href="ML_Introduction.aspx" target="_self">Multi Language Introduction</a><br />
                <a href="Multi-Languages%20Settings.aspx" target="_self">Multilanguage Settings</a>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
