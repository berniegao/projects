<%@ Page Title="" Language="C#" MasterPageFile="~/Wap.Master" AutoEventWireup="true"
    CodeBehind="SurveyList.aspx.cs" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.SurveyList" %>
<%@ Register TagPrefix="uc1" TagName="SurveyOptionControl" Src="UserControls/SurveyOptionControl.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script type="text/javascript">
    function ConfirmSurveyDelete() {
        return confirm('<%= GetPageResource("SurveyListDeleteConfirm") %>');
    }
</script>

    <script type="text/javascript">
        var obj = { selected: <%= selectedTabIndex %> ,
                select: function(event, ui) { 
                    $("#tabindex").val(ui.index); 
                    __doPostBack();
                }
        };
        $(function () {
            $("#tabs").tabs(obj);
        });
    </script>
        <input type="hidden" id="tabindex" name="tabindex" value="<%= selectedTabIndex %>" />

    <div id="tabs" style="overflow:auto; min-height:740px;">
        <ul>
            <li><a href="#tabs-1">
                <%=GetPageResource("SurveyListTabList")%></a></li>
            <li><a href="#tabs-2">
                <%=GetPageResource("SurveyListTabNew")%></a></li>
        </ul>
        <div id="tabs-1" style="position: relative; left:-10px;">
            <table>
                <tr>
                    <td>
                        <asp:TextBox runat="server" ID="txtSearchField"></asp:TextBox>
                        <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="OnSurveyFilter" />
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="gridSurveys" runat="server" AutoGenerateColumns="False" AllowSorting="True"
                            ShowHeaderWhenEmpty="true" OnSorting="gvSurveys_Sorting" Width="750">
                            <Columns>
                                <asp:TemplateField HeaderText="Survey" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white"  HeaderStyle-HorizontalAlign="Center" ItemStyle-Wrap="true" ItemStyle-Width="180px">
                                    <HeaderTemplate>
                                        <table align="center">
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text='<%#GetPageResource("SurveyTitle") %>' /> &nbsp;
                                                </td>
                                                <td>
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_up.gif" CommandName="sort"
                                                        CommandArgument="Title ASC" /><br />
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_down.gif" CommandName="sort"
                                                        CommandArgument="Title DESC" />
                                                </td>
                                            </tr>
                                        </table>                                        
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" ToolTip="Survey Statistics" Text='<%#GetSurveyName(Container.DataItemIndex + 1, (string)Eval("Title")) %>'
                                            OnCommand="OnSurveyStats" CommandName="SurveyStats" CommandArgument='<%#Eval("SurveyID")%>' CssClass="hyperlink" />
                                    </ItemTemplate>
                                </asp:TemplateField >
                                <asp:TemplateField  ItemStyle-Wrap="true" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" HeaderStyle-HorizontalAlign="Center" >
                                    <HeaderTemplate>
                                        <table align="center">
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text='<%#GetPageResource("SurveyStatus") %>' />  &nbsp;
                                                </td>
                                                <td>
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_up.gif" CommandName="sort"
                                                        CommandArgument="Activated ASC" /><br />
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_down.gif" CommandName="sort"
                                                        CommandArgument="Activated DESC" />
                                                </td>
                                            </tr>
                                        </table>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%#GetStatus((bool)Eval("Activated")) %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField  ItemStyle-Wrap="true" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" HeaderStyle-HorizontalAlign="Center" >
                                    <HeaderTemplate>
                                        <table align="center">
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text='<%#GetPageResource("SurveyResponses") %>' /> &nbsp;
                                                </td>
                                                <td>
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_up.gif" CommandName="sort"
                                                        CommandArgument="SurveyDisplayTimes ASC" /><br />
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_down.gif" CommandName="sort"
                                                        CommandArgument="SurveyDisplayTimes DESC" />
                                                </td>
                                            </tr>
                                        </table>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%#Eval("VoterNumber")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField  ItemStyle-Wrap="true" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" HeaderStyle-HorizontalAlign="Center" >
                                    <HeaderTemplate>
                                        <table align="center">
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" Text='<%#GetPageResource("SurveyCreated") %>' /> &nbsp;
                                                </td>
                                                <td>
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_up.gif" CommandName="sort"
                                                        CommandArgument="CreationDate ASC" /><br />
                                                    <asp:ImageButton runat="server" ImageUrl="~/Images/arrow_down.gif" CommandName="sort"
                                                        CommandArgument="CreationDate DESC" />
                                                </td>
                                            </tr>
                                        </table>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("CreationDate")%>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField  ItemStyle-Wrap="true" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" HeaderStyle-HorizontalAlign="Center" >
                                    <HeaderTemplate>
                                    <asp:Label runat="server" Text='<%#GetPageResource("SurveyEdit") %>' />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                    <!--     <asp:LinkButton runat="server" Text='<%#GetPageResource("SurveyEdit")%>' OnCommand="OnSurveyEdit"
                                            CommandName="SurveyEdit" CommandArgument='<%#Eval("SurveyID")%>' CssClass="hyperlink" /> -->
                                                    <asp:ImageButton runat="server" ToolTip="Edit Survey Information" ImageUrl="~/Images/edit.gif" OnCommand="OnSurveyEdit"
                                            CommandName="SurveyEdit" CommandArgument='<%#Eval("SurveyID")%>' />                                               
                                            
                                            </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Wrap="true" ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" HeaderStyle-HorizontalAlign="Center" >
                                    <HeaderTemplate>
                                    <asp:Label runat="server" Text='<%#GetPageResource("SurveySecurity") %>' />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                               <!--         <asp:LinkButton runat="server" Text='<%#GetPageResource("SurveySecurity")%>' OnCommand="OnSurveySecurity"
                                            CommandName="SurveySecurity" CommandArgument='<%#Eval("SurveyID")%>' CssClass="hyperlink" /> -->
                                                    <asp:ImageButton runat="server" ToolTip="Survey Security Settings" ImageUrl="~/Images/lock.gif" OnCommand="OnSurveySecurity"
                                            CommandName="SurveySecurity" CommandArgument='<%#Eval("SurveyID")%>'  />                                            
                                            
                                     </ItemTemplate>

                                </asp:TemplateField>
                                <asp:TemplateField ItemStyle-Wrap="true"  ItemStyle-Width="180px" ItemStyle-HorizontalAlign="Center" HeaderStyle-BackColor="#5720C6" HeaderStyle-BorderColor="black" HeaderStyle-ForeColor="white" HeaderStyle-HorizontalAlign="Center" >
                                    <HeaderTemplate>
                                    <asp:Label runat="server" Text='<%#GetPageResource("SurveyDesign") %>' />
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                       <!-- <asp:LinkButton runat="server" Text='<%#GetPageResource("SurveyDesign")%>' OnCommand="OnSurveyDesign"
                                            CommandName="SurveyDesign" CommandArgument='<%#Eval("SurveyID")%>' CssClass="hyperlink" /> -->
                                                    <asp:ImageButton runat="server" ToolTip="Survey Form Builder" ImageUrl="~/Images/edit_pen.gif" OnCommand="OnSurveyDesign"
                                            CommandName="SurveyDesign" CommandArgument='<%#Eval("SurveyID")%>' />


                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
        <div id="tabs-2" align="left">

            <table class="TableLayoutContainer">
                <tr>
                    <td style="padding: 10px 10px 10px 10px; margin: 0px 0px 0px 0px; font-family: Arial, Verdana, sans-serif;
                        vertical-align: top;" valign="top">
            <uc1:surveyoptioncontrol id="SurveyOption" runat="server" Visible="false"></uc1:surveyoptioncontrol>
                    </td>
                </tr>
            </table>

        </div>
    </div>
</asp:Content>
