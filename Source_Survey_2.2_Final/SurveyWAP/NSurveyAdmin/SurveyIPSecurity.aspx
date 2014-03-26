﻿<%@ Page Title="" Language="C#" MasterPageFile="~/NSurveyAdmin/MsterPageTabs.master"
    AutoEventWireup="true" CodeBehind="SurveyIPSecurity.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.SurveyIPSecurity" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function ConfirmIPRangeDelete() {
            return confirm('<%= GetPageResource("IPRangeDeleteConfirm") %>');
        }
    </script>
    <table class="TableLayoutContainer">
        <tr>
            <td colspan="2" class="contentCell" valign="top">
                <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <font class="titleFont">
                    <asp:Literal ID="literalIPRangesTitle" runat="server" Text="Data Import" EnableViewState="False"></asp:Literal></font>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server">IP Ranges</asp:Label>
                <asp:LinkButton class="IPLink" runat="server" ID="lbAddNew" Text="Add new" OnClick="lbAddNew_Click"></asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <table width="590px" class="BorderedTable">
                    <tr>
                        <td class="tableLabel">
                            <asp:Literal ID="literalIPRangeStart" Text="IP Range : Start" runat="server"></asp:Literal>
                        </td>
                        <td class="tableLabel">
                            <asp:Literal ID="literalIPRangeEnd" Text="IP Range : End " runat="server"></asp:Literal>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView runat="server" ID="gvIPRanges" AutoGenerateColumns="false" DataKeyNames="SurveyIPrangeId"
                    RowStyle-VerticalAlign="Top" CellPadding="0" CellSpacing="0" Style="overflow: hidden"
                    CssClass="AlignRight BorderedTable" AlternatingRowStyle-CssClass="AlternateStyle"
                    ShowHeader="false" ShowFooter="false" Width="590px">
                    <Columns>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStart1" Text='<%# GetIPSection(Eval("IPStart"),0) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStart1" ControlToValidate="txtIpStart1"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStart1" ControlToValidate="txtIpStart1"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpStart1" Text='<%# GetIPSection(Eval("IPStart"),0) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStartNew1"
                                    runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStartNew1" ControlToValidate="txtIpStartNew1"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStartNew1" ControlToValidate="txtIpStartNew1"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStart2" Text='<%# GetIPSection(Eval("IPStart"),1) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStart2" ControlToValidate="txtIpStart2"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStart2" ControlToValidate="txtIpStart2"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpStart2" Text='<%# GetIPSection(Eval("IPStart"),1) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStartNew2"
                                    runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStartNew2" ControlToValidate="txtIpStartNew2"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStartNew2" ControlToValidate="txtIpStartNew2"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStart3" Text='<%# GetIPSection(Eval("IPStart"),2) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStart3" ControlToValidate="txtIpStart3"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStart3" ControlToValidate="txtIpStart3"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpStart3" Text='<%# GetIPSection(Eval("IPStart"),2) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStartNew3"
                                    runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStartNew3" ControlToValidate="txtIpStartNew3"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStartNew3" ControlToValidate="txtIpStartNew3"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStart4" Text='<%# GetIPSection(Eval("IPStart"),3) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStart4" ControlToValidate="txtIpStart4"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStart4" ControlToValidate="txtIpStart4"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpStart4" Text='<%# GetIPSection(Eval("IPStart"),3) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpStartNew4"
                                    runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvStartNew4" ControlToValidate="txtIpStartNew4"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpStartNew4" ControlToValidate="txtIpStartNew4"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <ItemTemplate>
                                &nbsp;&nbsp;<strong>-</strong>&nbsp; &nbsp;
                            </ItemTemplate>
                            <EditItemTemplate>
                                &nbsp;&nbsp;<strong>-</strong>&nbsp; &nbsp;
                            </EditItemTemplate>
                            <FooterTemplate>
                                &nbsp;&nbsp;<strong>-</strong>&nbsp; &nbsp;
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEnd1" Text='<%# GetIPSection(Eval("IPEnd"),0) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEnd1" ControlToValidate="txtIpEnd1"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEnd1" ControlToValidate="txtIpEnd1"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpEnd1" Text='<%# GetIPSection(Eval("IPEnd"),0) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEndNew1" runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEndNew1" ControlToValidate="txtIpEndNew1"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEndNew1" ControlToValidate="txtIpEndNew1"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEnd2" Text='<%# GetIPSection(Eval("IPEnd"),1) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEnd2" ControlToValidate="txtIpEnd2"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEnd2" ControlToValidate="txtIpEnd2"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpEnd2" Text='<%# GetIPSection(Eval("IPEnd"),1) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEndNew2" runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEndNew2" ControlToValidate="txtIpEndNew2"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEndNew2" ControlToValidate="txtIpEndNew2"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEnd3" Text='<%# GetIPSection(Eval("IPEnd"),2) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEnd3" ControlToValidate="txtIpEnd3"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEnd3" ControlToValidate="txtIpEnd3"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpEnd3" Text='<%# GetIPSection(Eval("IPEnd"),2) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEndNew3" runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEndNew3" ControlToValidate="txtIpEndNew3"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEndNew3" ControlToValidate="txtIpEndNew3"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="42px" />
                            <FooterStyle Width="42px" />
                            <EditItemTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEnd4" Text='<%# GetIPSection(Eval("IPEnd"),3) %>'
                                    runat="server">
                                </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEnd4" ControlToValidate="txtIpEnd4"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEnd4" ControlToValidate="txtIpEnd4"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label CssClass="IPSection AlignTextBox" ID="lblIpEnd4" Text='<%# GetIPSection(Eval("IPEnd"),3) %>'
                                    runat="server"></asp:Label>
                            </ItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox MaxLength="3" CssClass="IPSection AlignTextBox" ID="txtIpEndNew4" runat="server"> </asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" runat="server" ID="rfvEndNew4" ControlToValidate="txtIpEndNew4"
                                    ErrorMessage="*"></asp:RequiredFieldValidator>
                                <asp:RangeValidator Display="Dynamic" runat="server" ID="rngvIpEndNew4" ControlToValidate="txtIpEndNew4"
                                    Type="Integer" ErrorMessage="*" MaximumValue="255" MinimumValue="0"></asp:RangeValidator>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle Width="100px" CssClass="AlignCentre" />
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnEdit" runat="server" CssClass="IPLink" CommandName="DoEdit"
                                    OnCommand="OnCommand" Text='<%# GetPageResource("EditText")  %>'></asp:LinkButton>&nbsp;&nbsp;&nbsp;
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:LinkButton ID="lbtnOk" CommandName="EditOK" runat="server" CssClass="IPLink"
                                    OnCommand="OnCommand" Text='<%# GetPageResource("OkText") %>'></asp:LinkButton>&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="lbtncancel" CommandName="CancelEdit" runat="server" CssClass="IPLink"
                                    OnCommand="OnCommand" CausesValidation="false" Text='<%# GetPageResource("CancelText") %>'></asp:LinkButton>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:LinkButton CommandName="InsertOK" ID="lbtnOk" runat="server" CssClass="IPLink"
                                    OnCommand="OnCommand" Text='<%# GetPageResource("OkText") %>'></asp:LinkButton>&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton CommandName="CancelInsert" ID="lbtncancel" runat="server" CssClass="IPLink"
                                    OnCommand="OnCommand" CausesValidation="false" Text='<%# GetPageResource("CancelText") %>'></asp:LinkButton>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemStyle CssClass="AlignCentre" />
                            <ItemTemplate>
                                <asp:LinkButton ID="lbtnDelete" runat="server" OnClientClick="return ConfirmIPRangeDelete();"
                                    CssClass="IPLink" CommandName="DoDelete" OnCommand="OnCommand" Text='<%# GetPageResource("ButtonDeleteColumn")  %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
