<%@ Page Title="" Language="C#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"
    AutoEventWireup="true" CodeBehind="SurveyLayout.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.SurveyLayout" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">

        $(function () {
            $('#<%=fuCss.ClientID %>').fileinput();
            $('.fileinput-button').removeClass('ui-state-default ui-widget-header ui-corner-right').append($('<input type="button" value="Upload"/>'));
            $('.fileinput-wrapper').removeClass('ui-widget').unbind('mouseenter mouseleave');
            $('.fileinput-input').removeClass('ui-state-default ui-widget-content ui-corner-left');
            $('.fileinput-button-text').remove();

            $('#<%=fuCss.ClientID %>').change(function () {
                __doPostBack('<%=btnCssUpload.UniqueID %>', '');
            });

        });
        
    </script>
    <asp:Label ID="MessageLabel" runat="server"></asp:Label><br />
    <table style="width: 700px">
        <tr>
            <td style="width: 150px" align="left">
                <strong>
                    <asp:Literal ID="CssLabel" runat="server" EnableViewState="False" Text="Template (Css File)"></asp:Literal></strong>
            </td>
            <td align="left">
                <asp:DropDownList runat="server" ID="ddlTemplate" Width="400px" AppendDataBoundItems="True">
                </asp:DropDownList>
            </td>
            <td align="right" style="width: 25px">
                <div style="position: relative; right: 0px; top: 0px;">
                    <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' href="Help/Style_Introduction.aspx"
                        title="Click for more Information">
                        <img alt="help" border="0" src="<%= Page.ResolveUrl("~")%>Images/small_help.gif" />
                    </a>
                </div>
            </td>
        </tr>
        <tr>
            <td class="rowwithseperator" style="width: 150px">
            </td>
            <td class="rowwithseperator" colspan="2">
                <table>
                    <tr>
                        <td style="padding-right: 5px;" align="right">
                            <div style="display: none">
                                <asp:Button runat="server" ID="btnCssUpload" Text="Upload" OnCommand="OnCssFileUpload" /></div>
                            <asp:FileUpload runat="server" ID="fuCss" Width="187px" Height="23px" />
                        </td>
                        <td style="padding-right: 5px;" align="left">
                            <asp:Button runat="server" ID="btnCssDownload" Text="Download" OnClick="btnCssDownload_Click" />
                        </td>
                        <td style="padding-right: 5px;">
                            <asp:Button runat="server" ID="btnCssDelete" Text="Delete" OnClick="btnCssDelete_Click" />
                        </td>
                        <td style="padding-right: 5px;">
                            <asp:Button runat="server" ID="btnCssEdit" Text="Edit" OnClick="btnCssEdit_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <strong>
                                <asp:Literal ID="EditionLanguageLabel" runat="server" Text="Edition language :"></asp:Literal></strong>
                        </td>
                        <td colspan="2">
                            <asp:DropDownList ID="LanguagesDropdownlist"  runat="server" 
                                AutoPostBack="True" 
                                onselectedindexchanged="LanguagesDropdownlist_SelectedIndexChanged1">
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
            </td>
            <!--
            <td colspan="2" align="left">
                <div style="display: none">
                    <asp:TextBox runat="server" ID="tctEditCxSS" Wrap="true" TextMode="MultiLine" Rows="10" /></div>
            </td>
            -->
        </tr>
    </table>
    <br />
    <asp:Panel ID="pnlHdrFooter" runat="server">
        <table>
            <tr>
                <td class="rowwithseperator" align="left">
                    <strong>
                        <asp:Literal ID="HeaderLabel" runat="server" EnableViewState="False" Text="Page Header"></asp:Literal></strong>
                </td>
                <td class="rowwithseperator">

                   <CKEditor:CKEditorControl ID="txtPageHeader" BasePath="~/ckeditor" runat="server">
                                        </CKEditor:CKEditorControl>

                    <br />
                </td>
            </tr>
            <tr>
                <td align="left">
                    <strong>
                        <asp:Literal ID="FooterLabel" runat="server" EnableViewState="False" Text="Page Footer "></asp:Literal></strong>
                </td>
                <td>


            <CKEditor:CKEditorControl ID="txtPageFooter" BasePath="~/ckeditor" runat="server">
                                        </CKEditor:CKEditorControl>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button runat="server" Text="Save" OnCommand="OnSave" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </tr> </table>
    <asp:PlaceHolder ID="EditCssPlaceHolder" runat="server" Visible="false">
        <table>
            <tr>
                <td align="left">
                    <font class="titleFont">
                        <asp:Literal ID="EditCssTitle" runat="server" EnableViewState="False">Edit CSS</asp:Literal></font>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:TextBox Width="500px" Height="200px" ID="EditCssTextBox" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="EditCssSaveButton" runat="server" Text="Save" OnClick="EditCssSaveButton_Click" />
                    <asp:Button ID="EditCssCancelButton" runat="server" Text="Cancel" OnClick="EditCssCancelButton_Click" />
                </td>
            </tr>
        </table>
    </asp:PlaceHolder>
</asp:Content>
