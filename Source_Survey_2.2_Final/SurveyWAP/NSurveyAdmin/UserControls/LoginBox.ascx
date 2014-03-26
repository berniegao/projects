<%@ Control Language="C#" AutoEventWireup="true" ClassName="LoginBox" Inherits="Votations.NSurvey.WebAdmin.NSurveyAdmin.UserControls.LoginBox" TargetSchema="http://schemas.microsoft.com/intellisense/ie5" Codebehind="LoginBox.ascx.cs" %>

                    <div style="height:25px">&nbsp;
                    <asp:Label ID="MessageLabel" runat="server" CssClass="ErrorMessage" Width="180" BorderWidth="5" BorderColor="#EAEAEC" Visible="False"></asp:Label>
                    </div>
<div style="margin-left:10px; 
                    background-color:rgba(221,221,221,0.3); 
                    border: 1px outset white ;
                    -moz-border-radius: 0.45em; 
                    border-radius: 0.45em; 
                    padding: 10px; 
                    width:190px; text-align:left;" 
                    >
                                <table summary="T4" class="normal">
                                    <tr>
                                        <td nowrap="nowrap" colspan="2">
                                            <font class="FPtitleFont">
                                                <asp:Literal ID="NSurveyAuthenticationTitle" runat="server" EnableViewState="False">Survey Administation Authentication</asp:Literal>
                                            </font> 
                                            <!--
                                       <div style=" position:relative; left:155px; top:115px; ">

                                           <a onmouseover='this.style.cursor="help" ' onfocus='this.blur();' onclick="document.getElementById('PopUp').style.display = 'block' ">
                                               <img title='<asp:Literal ID="HelpGifTitle" runat="server" />' alt="help" src="Images/help.gif" />
                                               </a>
                                           <div id='PopUp' style='display: none; position: absolute; left: -200px; top: -50px;
                                               border: solid #CCCCCC 1px; padding: 10px; background-color: rgba(255,255,225,0.9); text-align: justify; overflow:auto; 
                                               font-size: 12px; width: 175px; -webkit-border-radius: 7px;  -moz-border-radius: 7px;   border-radius: 7px;'>
                                               <asp:Literal ID="Introduction" runat="server" EnableViewState="False">Introduction</asp:Literal>
                                               <br />
                                               <div style='text-align: right;'>
                                                   <a onmouseover='this.style.cursor="pointer" ' style='font-size: 12px;' onfocus='this.blur();'
                                                       onclick="document.getElementById('PopUp').style.display = 'none' "><img alt="Close" title="Close" src="<%= Page.ResolveUrl("~")%>Images/close-icn.png" />  </a>
                                                       </div>
                                           </div>

                                         </div>
                                            -->
                                         </td>
                                    </tr>
                                    <tr>
                                        <td nowrap="nowrap">
                                            <br />
                                            <strong>
                                            <asp:Literal ID="LoginLabel" runat="server" EnableViewState="False">Login :</asp:Literal></strong><br />
                                            <asp:TextBox ID="LoginTextBox" runat="server" Width="180px"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td nowrap="nowrap">
                                            <strong>
                                                <asp:Literal ID="PasswordLabel" runat="server" EnableViewState="False">Password :</asp:Literal></strong><br />
                                            <asp:TextBox ID="PasswordTextBox" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                                <br />
                                <asp:Button ID="ValidateCredentialsButton" runat="server" Text="Validate credentials">
                                </asp:Button>

                </div>


