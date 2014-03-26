<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LibraryNew.ascx.cs"
    Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls.LibraryNew" %>
<%@ Import Namespace="Votations.NSurvey.WebAdmin" %>

<table class="formTable">
    <tr>
        <td colspan="2" align="left" style="width: 50%;"><br />
            <asp:Label runat="server" ID="lblLibraryTitle" CssClass="titleFont"></asp:Label>
            <br />
            <br />
        </td>
        <td colspan="2"><br />
            <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
            <asp:ValidationSummary ID="valsum" runat="server" />
        </td>
    </tr>

    <tr>
        <td align="left">
            <span class="tableLabel">
                <%=((PageBase)Page).GetPageResource("LibraryTabNewName")%></span>
        </td>
        <td colspan="3" align="left">
            <asp:TextBox Width="300" runat="server" ID="txtLibName" />
            <asp:RequiredFieldValidator ID="rvLibName" ControlToValidate="txtLibName" ValidationGroup="LibUpdateValidationGroup"
                ErrorMessage="*" runat="Server">
            </asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left">
            <span class="tableLabel">
                <%=((PageBase)Page).GetPageResource("LibraryTabNewDescription")%></span>
        </td>
        <td colspan="3" align="left">
            <asp:TextBox Width="300" runat="server" ID="txtLibDescr" />
        </td>
    </tr>

    <asp:Panel ID="pnllanguageSelection" runat="server" Visible="true">
        <tr>
            <td style="width:150px;" align="left"><br />
                <span class="tableLabel">
                    <%=((PageBase)Page).GetPageResource("LibraryTabNewEnabledLanguages")%></span>
            </td>
            <td style="text-align:left;"><br />
                <asp:ListBox runat="server" ID="lbLangSrc" OnSelectedIndexChanged="OnAddLang" AutoPostBack="true"
                    Width="200" Height="200" />
            </td>
            <td style="width:45px; text-align:center;"><br />
                >><br />
                <<
            </td>
            <td style="text-align:right;"><br />
                <asp:ListBox runat="server" ID="lbLangEnabled" OnSelectedIndexChanged="OnRemoveLang"
                    AutoPostBack="true" Width="200" Height="200" />
            </td>
        </tr>
        <tr>
            <td class="style2" align="left"><br />
                <span class="tableLabel">
                    <%=((PageBase)Page).GetPageResource("LibraryTabNewDefaultLanguage")%></span>
            </td>
            <td colspan="3" align="left"><br />
                <asp:DropDownList runat="server" ID="ddlDefaultLang" Width="200" />
            </td>
        </tr>
    </asp:Panel>
    <tr>
        <td align="left" colspan="4">
            <br />
            <asp:Button runat="server" ID="btnAddLib" OnClick="OnAddLibrary" CausesValidation="true" />
            <asp:Button runat="server" ID="btnDeleteLib" OnClientClick="return ConfirmLibraryDelete();"
                OnClick="OnDeleteLibrary" Visible="false" />
        </td>
    </tr>
</table>
<script type="text/javascript">
    function ConfirmLibraryDelete() {
        return confirm('<%= ((PageBase)Page).GetPageResource("LibraryTabDeleteConfirm") %>');
    }
</script>
