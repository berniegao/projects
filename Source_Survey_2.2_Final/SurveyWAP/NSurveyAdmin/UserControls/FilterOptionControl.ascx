<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.FilterOptionControl"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="FilterOptionControl.ascx.cs" %>
<%@ Import Namespace="Votations.NSurvey.WebAdmin" %>
<asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
<table class="innerText">
    <tr>
        <td>
            <asp:Label CssClass="titleFont" ID="filtertitle" runat="server"></asp:Label>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <table class="innerText">
                <tr>
                    <td nowrap="nowrap" width="150">
                        <strong>
                            <asp:Literal ID="FilterNameLabel" runat="server" EnableViewState="False">Filter name :</asp:Literal></strong>
                    </td>
                    <td width="470">
                        <asp:TextBox ID="FilterNameTextBox" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td width="150">
                        <strong>
                            <asp:Literal ID="RuleOperatorLabel" runat="server" EnableViewState="False">Conditional rule operator 
            :</asp:Literal></strong>
                    </td>
                    <td>
                        <asp:DropDownList ID="LogicalOperatorDropDownList" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table><br />
<asp:Button ID="UpdateFilterButton" runat="server" Text="Update filter"></asp:Button>
<asp:Button ID="DeleteFilterButton" runat="server" Text="Delete filter"></asp:Button>
<asp:Button ID="CreatefilterButton" runat="server" Text="Create filter"></asp:Button>
<asp:PlaceHolder ID="EditplaceHolder" runat="server">
    <br />
    <br />
    <br />
    <table class="Innertext">
        <tr>
            <td>
                <font class="titleFont">
                    <asp:Literal ID="NewRuleTitle" runat="server" EnableViewState="False">
      Add new rule to filter</asp:Literal></font>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <table class="Innertext">
                    <tr>
                        <td nowrap="nowrap" width="140">
                            <strong>
                                <asp:Literal ID="QuestionLabel" runat="server" EnableViewState="False">Question:</asp:Literal></strong>
                        </td>
                        <td width="480">
                            <asp:DropDownList ID="QuestionFilterDropdownlist" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="140">
                            <strong>
                                <asp:Label ID="AnswerLabel" runat="server">Answer :</asp:Label></strong>
                        </td>
                        <td>
                            <asp:DropDownList ID="AnswerFilterDropdownlist" runat="server" AutoPostBack="True">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td width="140">
                            <strong>
                                <asp:Label ID="FilterText" runat="server">Text contains :</asp:Label></strong>
                        </td>
                        <td>
                            <asp:TextBox ID="TextFilterTextbox" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <asp:Button ID="AddRuleButton" runat="server" Text="Add new rule"></asp:Button>
    <br />
    <br />
    <br />
    <table class="Innertext">
        <tr>
            <td colspan="2">
                <font class="titleFont">
                    <asp:Literal ID="FilterRulesTitle" runat="server" EnableViewState="False">Filter rules</asp:Literal></font>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;
            </td>
            <td>
                <table class="Innertext">
                    <tr>
                        <td nowrap="nowrap" width="700">
                            <asp:Repeater ID="RulesRepeater" runat="server">
                                <HeaderTemplate>
                                    <table border="0" cellpadding="4" cellspacing="3" class="InnerText">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%#FormatRule(DataBinder.Eval(Container.DataItem,"QuestionText").ToString(), DataBinder.Eval(Container.DataItem,"AnswerText").ToString(), DataBinder.Eval(Container.DataItem,"TextFilter").ToString())%>
                                            (<asp:LinkButton ID="DeleteRuleLinkButton" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"FilterRuleID")%>'
                                                Text='<%#((PageBase)Page).GetPageResource("DeleteRuleInfo")%>' runat="server"></asp:LinkButton>)
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <AlternatingItemTemplate>
                                    <tr bgcolor="#F4F9FA">
                                        <td>
                                            <%#FormatRule(DataBinder.Eval(Container.DataItem,"QuestionText").ToString(), DataBinder.Eval(Container.DataItem,"AnswerText").ToString(), DataBinder.Eval(Container.DataItem,"TextFilter").ToString())%>
                                            (<asp:LinkButton ID="Linkbutton1" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"FilterRuleID")%>'
                                                Text='<%#((PageBase)Page).GetPageResource("DeleteRuleInfo")%>' runat="server"></asp:LinkButton>)
                                        </td>
                                    </tr>
                                </AlternatingItemTemplate>
                                <FooterTemplate>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:PlaceHolder>
<br />
<br />
<asp:PlaceHolder ID="AutoPlaceHolder" runat="server">
    <table width="620px" class="Innertext">
        <tr valign="bottom">
            <td colspan="2"><br /><br />
                <font class="titleFont">
                    <asp:Literal ID="autoFilterLabel" runat="server" EnableViewState="False">
      Auto-Create Filter</asp:Literal></font>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2"><br />
                <asp:Literal ID="autoFilterMessageLabel" runat="server">
        Note: Auto-create creates one filter for every answer a question can have.<br />
         It is available only for closed questions (no free text fields).
                </asp:Literal>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td width="350">
                <strong>
                    <asp:Literal ID="autoFilterQuestionLabel" runat="server">Auto-create filter based on question:</asp:Literal>
                </strong>
            </td>
            <td width="380">
                <asp:DropDownList ID="ddlAutoQuestions" Width="370" runat="server">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2"><br />
                <asp:Label ID="autoFilterMsg2title" CssClass="subtitleFont" runat="server">Filter naming scheme:</asp:Label>
            </td>
        </tr>
        <tr>
            <td><br />
                <strong>
                    <asp:Literal ID="autoQuestionNamingLabel" runat="server">Question Naming:</asp:Literal>
                </strong>
            </td>
            <td><br />
                <asp:DropDownList Width="225" ID="ddlAutoQuestionNaming" runat="server">
                    <asp:ListItem Value="Question">Question</asp:ListItem>
                    <asp:ListItem Value="QuestionDisplayOrderNumber">Question Display Order Number</asp:ListItem>
                    <asp:ListItem Value="QuestionID">Question ID</asp:ListItem>
                    <asp:ListItem Value="QuestionAlias">Question Alias</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <strong>
                    <asp:Literal ID="autoanswerNaminglabel" runat="server">Auto-create filter based on question:</asp:Literal>
                </strong>
            </td>
            <td>
                <asp:DropDownList Width="225" ID="ddlAutoAnswerNaming" runat="server">
                    <asp:ListItem Value="Answer">Answer</asp:ListItem>
                    <asp:ListItem Value="AnswerDisplayOrderNumber">Answer Display Order Number</asp:ListItem>
                    <asp:ListItem Value="AnswerID">Answer ID</asp:ListItem>
                    <asp:ListItem Value="AnswerAlias">Answer Alias</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Literal ID="autofilterInfo2Label" runat="server">
    Note: The filter is named following the scheme [Question naming] | [Answer naming].<br />
Only the first 32 characters are taken each for Question naming and for Answer naming.
                </asp:Literal>
            </td>
        </tr>
        <tr>
            <td colspan="2"><br /><br />
                <asp:Button ID="btnAutoFilter" runat="server" Text="Generate Filters" />
            </td>
        </tr>
    </table>
</asp:PlaceHolder>
