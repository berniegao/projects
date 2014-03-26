
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="SurveyListControl.ascx" %>
<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.SurveyOptionControl" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" Codebehind="SurveyOptionControl.ascx.cs" %>

    <script type="text/javascript">
        $(function () {

            $("#<%=OpeningDateTextBox.ClientID%>").datepicker();
            $("#<%=CloseDateTextbox.ClientID%>").datepicker();
        });
    </script>

 <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>

<table class="innerText" id="Table1">
    <tr>
        <td>
            <table id="Table2" width="100%">
                <tr>
                    <td style="width: 580px;" align="left">
                        <font class="titleFont">
                            <asp:Literal ID="SurveyInformationTitle" runat="server" Text="Survey information"
                                EnableViewState="False"></asp:Literal></font>&nbsp;
                    </td>
                    <td align="right">

                                        <div style="position: relative; right: -90px; top: 0px;">
                                            <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/Survey General Settings.aspx"
                                                title="Click for more Information">
                                                <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                                            </a>
                                        </div>
                    </td>
                </tr>
            </table>
            <br />
        </td>
    </tr>
    <tr>
        <td>

              <table class="mediumText" width="600px" id="Table3">
                <tr>
                    <td width="270px" align="left">
                        <strong>
                            <asp:Label ID="SurveyTitleLabel" AssociatedControlId="TitleTextBox" runat="server" EnableViewState="False">Title:</asp:Label></strong>
                    </td>
                    <td width="480px" align="left">

                    <div id="tooltip">

                        <asp:TextBox 
                        ID="TitleTextBox"
                        runat="server"  
                        Columns="60" MaxLength="90">
                        </asp:TextBox>
 
                    </div>

                    </td>
                </tr>
     <asp:PlaceHolder ID="EditUi" runat="server"> 
                    <tr>
                        <td nowrap="nowrap" width="270px">
                            <strong>
                                <asp:Label ID="OpeningDateLabel" runat="server" AssociatedControlId="OpeningDateTextBox" EnableViewState="False">Opening date :</asp:Label></strong>
                        </td>
                        <td width="480px"><div id="tooltip">
                            <asp:TextBox ID="OpeningDateTextBox" ToolTip="<b>Opening Date:</b> This is the date as of which the survey will accept new entries. No entries will be accepted before that date. Leave blank if the survey has no particular opening date. " 
                            runat="server" Columns="30" ></asp:TextBox>
                                                        
                            &nbsp;
                            
                            <asp:Literal ID="DateForExampleInfo" runat="server" EnableViewState="False">e.g.:</asp:Literal>
                            <asp:Label ID="DateFormatLabel" runat="server"></asp:Label>
                            
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="CloseDateLabel" AssociatedControlId="CloseDateTextBox" runat="server" EnableViewState="False">Close date :</asp:Label></strong>
                        </td>
                        <td width="480px">
                            <div id="tooltip">
                            <asp:TextBox ID="CloseDateTextbox" 
                        runat="server" Columns="30"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="ProgressDisplayLabel" AssociatedControlId="ProgressDisplayDropDownList" runat="server" EnableViewState="False">Progress display :</asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:DropDownList ID="ProgressDisplayDropDownList" 
                            Width="177" 
                            runat="server">
                            </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="DisableQuestionNumbering" AssociatedControlId="QuestionNumberingCheckbox" runat="server" EnableViewState="False">Disable question numbering:</asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:CheckBox ID="QuestionNumberingCheckbox" runat="server"></asp:CheckBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="ActiveSurveyLabel" AssociatedControlId="ActiveCheckBox" runat="server" EnableViewState="False">Active:</asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:CheckBox ID="ActiveCheckBox" runat="server"></asp:CheckBox>
                            </div>
                        </td>
                    </tr>
                     <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="DefaultSurveyLabel" AssociatedControlId="DefaultSurveyCheckBox" runat="server" EnableViewState="False">Default Survey:</asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:CheckBox ID="DefaultSurveyCheckBox" runat="server"></asp:CheckBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="ArchivedLabel" AssociatedControlId="ArchiveCheckBox" runat="server" EnableViewState="False" Visible="False"></asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:CheckBox ID="ArchiveCheckBox" runat="server" Visible="False"></asp:CheckBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="ScoredLabel" AssociatedControlId="ScoredCheckbox" runat="server" EnableViewState="False">Scored ::</asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:CheckBox ID="ScoredCheckbox" runat="server"></asp:CheckBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="EnableNavigationLabel" AssociatedControlId="EnableNavigationCheckbox" runat="server" EnableViewState="False">Enable navigation :</asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:CheckBox ID="EnableNavigationCheckbox" runat="server"></asp:CheckBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td width="270px">
                            <strong>
                                <asp:Label ID="EnableResumeLabel" AssociatedControlId="ResumeModeDropdownlist" runat="server" EnableViewState="False">resume of progress :</asp:Label></strong>
                        </td>
                        <td><div id="tooltip">
                            <asp:DropDownList ID="ResumeModeDropdownlist" Width="325"  runat="server">
                            </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
            </table>
        </td>
    </tr>
</table>

<!-- Notification Settings -->
<table class="innerText" width="610px;" id="Table4">
    <tr>
        <td><br />
            <font class="titleFont">
                <asp:Literal ID="NotificationSettingsTitle" runat="server" EnableViewState="False"
                    Text="Notification settings"></asp:Literal></font>
        </td>
        <td align="right"><br />
            <div style="position: relative; right: -90px; top: 0px;">
                <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' onclick="document.getElementById('PopUp2').style.display = 'block' ">
                    <img title="Click for more Information" alt="help" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                </a>
                <div id='PopUp2' style='display: none; position: absolute; left: -420px; top: 0px;
                    border: solid #CCCCCC 1px; padding: 10px; background-color: rgb(255,255,225); line-height:15px; text-align: justify;
                    font-size: 11px; width: 425px; -webkit-border-radius: 5px;  -moz-border-radius: 5px; border-radius: 5px;'>
                    <asp:Literal ID="NotificationsSettingsHelp" runat="server" EnableViewState="False">Notification Settings Help</asp:Literal>
                    <br />
                    <div style='text-align: right;'>
                        <a onmouseover='this.style.cursor="pointer" ' style='font-size: 12px;' onfocus='this.blur();'
                            onclick="document.getElementById('PopUp2').style.display = 'none' "><img alt="Close" title="Close" src="<%= Page.ResolveUrl("~")%>Images/close-icn.png" /></a></div>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <td colspan="2"><br />
            <table class="innerText" id="Table5">
                <tr>
                    <td width="140px">
                        <strong>
                            <asp:Literal ID="EntryNotificationLabel" runat="server" EnableViewState="False">Entry notification :</asp:Literal></strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="EntryNotificationDropdownlist" runat="server" AutoPostBack="true">
                        </asp:DropDownList>
                    </td>
                </tr>

                <asp:PlaceHolder ID="NotificationPlaceHolder" runat="server">
                    <tr>
                        <td nowrap="nowrap" width="250px">
                            <strong>
                                <asp:Literal ID="FromEmailNotificationLabel" runat="server" EnableViewState="False"
                                    Text="">Email from :</asp:Literal></strong>
                        </td>
                        <td>
                            <asp:TextBox Width="350px" ID="EmailFromTextbox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" width="250px">
                            <strong>
                                <asp:Literal ID="ToEmailNotificationLabel" runat="server" EnableViewState="False"
                                    Text="">Email to:</asp:Literal></strong>
                        </td>
                        <td >
                            <asp:TextBox Width="350px" ID="EmailToTextBox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td nowrap="nowrap" width="250px">
                            <strong>
                                <asp:Literal ID="NotificationSubjectLabel" runat="server" EnableViewState="False"
                                    Text="">Email subject :</asp:Literal></strong>
                        </td>
                        <td>
                            <asp:TextBox Width="350px" ID="EmailSubjectTextbox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </asp:PlaceHolder></asp:placeholder>
            </table>
        </td>
    </tr>
</table>


<br /><br />
<asp:Button ID="CreateSurveyButton" runat="server"  Text="Create survey!"></asp:Button>
<asp:Button ID="ApplyChangesButton" runat="server" Text="Apply changes" 
    onclick="ApplyChangesButton_Click1"></asp:Button>
<asp:Button ID="DeleteButton" runat="server" Text="Delete"></asp:Button>
<asp:Button ID="CloneButton" runat="server" Text="Clone"></asp:Button>
<asp:Button ID="ExportSurveyButton" runat="server" Text="Export XML"></asp:Button>
<br />


<asp:PlaceHolder runat="server" ID="SurveyImportPlaceHolder"><br /><br />
    <table class="innerText">
        <tr>
            <td>
                <font class="titleFont">
                    <asp:Literal ID="ImportSurveyTitle" runat="server" EnableViewState="False" Text="Import survey from XML"></asp:Literal></font>
            </td>
        </tr>
        <tr>
            <td><br />
                <input id="ImportFile" type="file" size="40" name="ImportFile" runat="server" />
            </td>
        </tr>
        <tr>
            <td><br />
                <asp:Button ID="ImportXMLButton" runat="server" Text="Import XML"></asp:Button>
            </td>
        </tr>
    </table>
    <br />
    
</asp:PlaceHolder>
