<%@ Page Title="" Language="C#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"
    AutoEventWireup="true" CodeBehind="DataImport.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.DataImport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(function () {

            $("#<%=txtFrom.ClientID%>").datepicker();
            $("#<%=txtTo.ClientID%>").datepicker();
        });
    </script>
    <table class="innerText" style="text-align: left" >
        <tr >
            <td   colspan="2" class="contentCell" valign="top"> 
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label> 
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <font class="titleFont">
                    <asp:Literal ID="DataImportTitle" runat="server" Text="Data Import" EnableViewState="False"></asp:Literal></font>
                    <br />
                    <br />
            </td>
        </tr>
        <tr>
            <td width="150">
          <strong>  <asp:Literal ID="importFilelabel"   runat="server" >Import file: </asp:Literal> </strong> 
            </td>
            <td>
                <asp:FileUpload runat="server" ID="fupDataFile" />
            </td>
        </tr>
      
        <tr>
            <td colspan="2"><br />
             <strong> <asp:Literal ID="dataSelectionLabel"  runat="server">  Data selection</asp:Literal></strong>
            </td>
        </tr>
        <tr>
            <td><br />
                <asp:RadioButton ID="rbAll" runat="server"  Checked="true" GroupName="DataSelection" Text=" All data." />
            </td>
            <td><br />
                <asp:RadioButton ID="rbSelRange" runat="server" GroupName="DataSelection" Text=" Only data in the selected date range." />
            </td>
        </tr>
        <tr>
            <td><br />
          <strong> <asp:Label ID="importFromLabel" runat="server">  From:</asp:Label>  </strong> 
            </td>
            <td><br />
                <asp:TextBox ID="txtFrom" Columns="8"  runat="server"></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td>
            <strong> <asp:Label ID="importTolabel" runat="server">  To:</asp:Label>  </strong> 
            </td>
            <td>
                <asp:TextBox ID="txtTo" Columns="8" runat="server"></asp:TextBox>
               
            </td>
        </tr>
        <tr>
            <td colspan="2"><br />
                <asp:Button runat="server" ID="btnImport" Text="Import" OnClick="btnImport_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
