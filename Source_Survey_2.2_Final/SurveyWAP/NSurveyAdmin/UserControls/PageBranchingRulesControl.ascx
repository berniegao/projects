<%@ Import Namespace="Votations.NSurvey.WebAdmin" %>
<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.PageBranchingRulesControl" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" Codebehind="PageBranchingRulesControl.ascx.cs" %>

			<asp:repeater id="RulesRepeater" runat="server">
			<HeaderTemplate>
			<table border="0" cellpadding="2" cellspacing="1" width="100%" class="smallText" >
			</HeaderTemplate>
			<ItemTemplate>
				<tr><td>
<%#FormatRule(DataBinder.Eval(Container.DataItem,"ConditionalOperator"), 
DataBinder.Eval(Container.DataItem,"QuestionText").ToString(), 
DataBinder.Eval(Container.DataItem,"AnswerText").ToString(), 
DataBinder.Eval(Container.DataItem,"TextFilter").ToString(), 
DataBinder.Eval(Container.DataItem,"TargetPageNumber").ToString(),
DataBinder.Eval(Container.DataItem,"Score").ToString(),
DataBinder.Eval(Container.DataItem,"Scoremax").ToString(),
DataBinder.Eval(Container.DataItem,"ExpressionOperator"))
%>
(<asp:LinkButton id="DeleteRuleLinkButton" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"BranchingRuleID")%>' text='<%#((PageBase)Page).GetPageResource("DeleteRuleInfo")%>' runat="server">Delete rule</asp:LinkButton>)</td>
</tr>
			</ItemTemplate>
			<AlternatingItemTemplate>
				<tr bgcolor="#F4F9FA"><td>
<%#FormatRule(DataBinder.Eval(Container.DataItem,"ConditionalOperator"), 
DataBinder.Eval(Container.DataItem,"QuestionText").ToString(), 
DataBinder.Eval(Container.DataItem,"AnswerText").ToString(), 
DataBinder.Eval(Container.DataItem,"TextFilter").ToString(), 
DataBinder.Eval(Container.DataItem,"TargetPageNumber").ToString(),
DataBinder.Eval(Container.DataItem,"Score").ToString(),
DataBinder.Eval(Container.DataItem,"Scoremax").ToString(),
DataBinder.Eval(Container.DataItem,"ExpressionOperator")
)%>
(<asp:LinkButton id="Linkbutton1" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"BranchingRuleID")%>' text='<%#((PageBase)Page).GetPageResource("DeleteRuleInfo")%>' runat="server">Delete rule</asp:LinkButton>)
</td></tr>
			</AlternatingItemTemplate>
			<FooterTemplate>
				</table>
			</FooterTemplate>
			</asp:repeater>