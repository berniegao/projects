
<%@ Register TagPrefix="uc1" TagName="SurveyListControl" Src="SurveyListControl.ascx" %>
<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.AnswerOptionControl" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" Codebehind="AnswerOptionControl.ascx.cs" %>


 <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
<table class="innerText">
    <tr>
        <td colspan="2">
            <font class="titleFont">
                <asp:Literal ID="EditAnswerTitle" runat="server" Text="Edit answer settings"></asp:Literal></font><br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;
        </td>
        <td>
            <table class="innerText">
                <tr>
                    <td nowrap="nowrap" width="172">
                        <strong>
                            <asp:Literal ID="AnswerTextLabel" runat="server" EnableViewState="False" Text="Answer text :"></asp:Literal></strong>
                    </td>
                    <td width="180">
                        <asp:TextBox ID="AnswerTextTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>ID:</td>
                    <td><asp:TextBox runat="server" ID="txtAnswerID"></asp:TextBox></td>
                </tr>
                <tr>
                    <td width="172">
                        <strong>
                            <asp:Literal ID="AnswerURLLabel" runat="server" EnableViewState="False" Text="Image URL :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:TextBox ID="AnswerImageURLTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>Alias:</td>
                    <td><asp:TextBox runat="server" ID="txtAnswerAlias"></asp:TextBox></td>
                </tr>
                <tr>
                    <td nowrap="nowrap" width="172">
                        <strong>
                            <asp:Literal ID="AnswerTypeLabel" runat="server" EnableViewState="False" Text="Type :"></asp:Literal></strong>
                    </td>
                    <td width="180">
                        <asp:DropDownList ID="AnswerTypeDropDownList" runat="server" AutoPostBack="True">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Literal ID="SliderRangeLabel" runat="server" Visible="False" EnableViewState="False" Text="Min or Max"></asp:Literal>
                    </td>
                    <td><br /><br /><div id="tooltip">
                         <asp:DropDownList ID="SliderRangeDDL" Visible="False" runat="server">
                         <asp:ListItem Selected="True" Text="No Value" Value=""></asp:ListItem>
                         <asp:ListItem Text="Minimum Value" Value="min"></asp:ListItem>
                         <asp:ListItem Text="Maximum Value" Value="max"></asp:ListItem>                         
                         </asp:DropDownList></div>
                    </td>
                </tr>
                <tr>
                    <td width="172">
                        <strong>
                            <asp:Literal ID="RegExValidationLabel" Visible="False" runat="server" EnableViewState="False"
                                Text="RegEx validation :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="RegExDropDownList" runat="server" Visible="False">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Literal ID="SliderValueLabel" runat="server" Visible="False" EnableViewState="False" Text="Starting Value"></asp:Literal>
                    </td>
                    <td><div id="tooltip">
                         <asp:TextBox ID="SliderValueTextBox" Visible="False" runat="server" Columns="15"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="SliderValueTextBox"
        ErrorMessage="No Valid Number" ValidationExpression="^-{0,1}\d+$"></asp:RegularExpressionValidator></div>
                    </td>
                </tr>
                <tr>
                    <td width="172">
                        <strong>
                            <asp:Literal ID="MandatoryLabel" Visible="False" runat="server" EnableViewState="False"
                                Text="Mandatory :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:CheckBox ID="MandatoryCheckBox" runat="server"></asp:CheckBox>
                    </td>
                    <td>
                        <asp:Literal ID="SliderMinLabel" runat="server" Visible="False" EnableViewState="False" Text="Min Value"></asp:Literal>
                    </td>
                    <td><div id="tooltip">
                        <asp:TextBox ID="SliderMinTextBox" Visible="False" runat="server" Columns="15"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="SliderMinTextBox"
        ErrorMessage="No Valid Number" ValidationExpression="^-{0,1}\d+$"></asp:RegularExpressionValidator></div>
                    </td>
                </tr>
                <tr>
                    <td width="172">
                        <strong>
                            <asp:Literal ID="DefaultTextLabel" Visible="False" runat="server" EnableViewState="False"
                                Text="Default text value* :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:TextBox ID="DefaultTextTextBox" Visible="False" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Literal ID="SliderMaxLabel" runat="server" Visible="False" EnableViewState="False" Text="Max Value"></asp:Literal>
                    </td>
                    <td><div id="tooltip">
                        <asp:TextBox ID="SliderMaxTextBox" Visible="False" runat="server" Columns="15"></asp:TextBox>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="SliderMaxTextBox"
        ErrorMessage="No Valid Number" ValidationExpression="^-{0,1}\d+$"></asp:RegularExpressionValidator></div>
                    </td>
                </tr>
                <tr>
                    <td nowrap="nowrap" width="172">
                        <strong>
                            <asp:Literal ID="AnswerPipeAliasLabel" runat="server" EnableViewState="False" Text="Pipe alias :"></asp:Literal></strong>
                    </td>
                    <td width="180">
                        <asp:TextBox ID="AnswerPipeAliasTextBox" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Literal ID="SliderAnimateLabel" runat="server" Visible="False" EnableViewState="False" Text="Animate Y/N"></asp:Literal>
                    </td>
                    <td><div id="tooltip">
                        <asp:CheckBox ID="SliderAnimateCheckbox" Visible="False" runat="server"></asp:CheckBox></div>
                    </td>
                </tr>
                <tr>
                    <td width="172">
                        <strong>
                            <asp:Literal ID="SelectedAnswersLabel" Visible="False" runat="server" EnableViewState="False"
                                Text="Selected by default :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:CheckBox ID="SelectionCheckBox" Visible="False" runat="server"></asp:CheckBox>
                    </td>
                    <td>
                        <asp:Literal ID="SliderStepLabel" runat="server" Visible="False" EnableViewState="False" Text="Step value"></asp:Literal>

                    </td>
                    <td><div id="tooltip">
                        <asp:TextBox ID="SliderStepTextBox" Visible="False" runat="server" Columns="15"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SliderStepTextBox"
        ErrorMessage="No Valid Number" ValidationExpression="^-{0,1}\d+$"></asp:RegularExpressionValidator></div>
                    </td>
                </tr>
                <tr>
                    <td width="172">
                        <strong>
                            <asp:Literal ID="AnswerRatingLabel" Visible="False" runat="server" EnableViewState="False"
                                Text="Rating part :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:CheckBox ID="RatingPartCheckbox" Visible="False" runat="server"></asp:CheckBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td width="172">
                        <strong>
                            <asp:Literal ID="ScoreLabel" Visible="False" runat="server" EnableViewState="False"
                                Text="Score :"></asp:Literal></strong>
                    </td>
                    <td>
                        <asp:TextBox ID="ScoreTextBox" Visible="False" runat="server" Columns="20"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <asp:PlaceHolder ID="ConnectionsPlaceHolder" Visible="False" runat="server">
                    <tr>
                        <td valign="top" width="172">
                            <strong>
                                <asp:Literal ID="ConnectionLabel" runat="server" Text="Connections :" EnableViewState="False"></asp:Literal></strong>
                        </td>
                        <td>
                            <table class="smallText">
                                <tr>
                                    <td>
                                        <asp:Literal ID="AnswerPublishersLabel" runat="server" Text="Answer publishers" EnableViewState="False"></asp:Literal>
                                    </td>
                                    <td>
                                    </td>
                                    <td>
                                        <asp:Literal ID="AnswerSubscribedLabel" runat="server" Text="Subscribed to :" EnableViewState="False"></asp:Literal>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ListBox ID="AvailablePublishersListBox" runat="server" AutoPostBack="True">
                                        </asp:ListBox>
                                    </td>
                                    <td>
                                        &lt;&lt;<br />
                                        &gt;&gt;
                                    </td>
                                    <td>
                                        <asp:ListBox ID="SubscribedListbox" runat="server" AutoPostBack="True"></asp:ListBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    <td>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;
                    </td>
                    </tr>
                </asp:PlaceHolder>
            </table>
            <asp:Button ID="UpdateAnswerButton" runat="server" Text="Update"></asp:Button>
            <asp:Button ID="AddAnswerButton" runat="server" Text="Add answer"></asp:Button>
            <asp:Button ID="DeleteAnswerButton" runat="server" Text="Delete"></asp:Button>
            <asp:Button ID="CancelAnswerButton" runat="server" Text="Cancel"></asp:Button><br />

        </td>
    </tr>
</table>

<table class="innerText">
    <tr>
        <td>
            <br />
            <br />
           <asp:PlaceHolder ID="ExtendedPlaceholder" Visible="False" runat="server">
            <table class="innerText">
                <tr>
                    <td colspan="2">
                        <font class="titleFont">
                            <asp:Literal ID="EditExtendedSettingsTitle" runat="server" Text="Edit extended settings"
                                EnableViewState="False"></asp:Literal></font><br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:PlaceHolder ID="ExtendedPropertiesPlaceholder" Visible="False" runat="server">
                        </asp:PlaceHolder>
                    </td>
                </tr>
            </table>
            </asp:PlaceHolder>
            <asp:Label ID="PipeHelpLabel" runat="server">
*you can pipe special values that will be replaced at runtime into the text value :<br />
##yourquerystringvariablename##<br />
@@yoursessionvariablename@@<br />
&&yourcookievariablename&&<br />
%%servervariablename%%
            </asp:Label>
        </td>
    </tr>
</table>
