<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuestionExtraLinks.ascx.cs"
    Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls.QuestionExtraLinks" %>
<table class="QuestionExtraLinks">
    <tr>
        <td>
            <a runat="server" id="prevLink" ><asp:Literal ID="ltPrev" runat="server">Previous</asp:Literal></a>
        </td>
        <td>
            <a runat="server" id="nextLink" ><asp:Literal ID="ltNext" runat="server">Next</asp:Literal></a>
        </td>
        <td>
        <asp:LinkButton Text="Clone" id="cloneLink" runat="server" 
                onclick="cloneLink_Click1" ></asp:LinkButton>
  
        </td>
        <td>
            <a runat="server" id="insertLink" ><asp:Literal ID="ltInsert" runat="server">Insert Question</asp:Literal></a>
        </td>
    </tr>
</table>
