<%@ Register TagPrefix="uc1" TagName="FooterControl" Src="UserControls/FooterControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="HeaderControl" Src="UserControls/HeaderControl.ascx" %>
<%@ Page language="c#" MasterPageFile="MsterPageTabs.master"   validaterequest="false" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.EditVoterReport" Codebehind="EditVoterReport.aspx.cs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="TableLayoutContainer">
        <tr>
            <td class="contentCell" valign="top">
     <asp:Label ID="MessageLabel" runat="server"  CssClass="ErrorMessage" Visible="False"></asp:Label>
                <table class="Innertext">
                    <tr>
                        <td>
                            <font class="titleFont">
                                <asp:Literal ID="VoterInformationTitle" runat="server" EnableViewState="False">Voter information</asp:Literal></font>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td width="160px">
                                        <strong>
                                            <asp:Literal ID="VoterDBIDLabel" runat="server" EnableViewState="False">Voter DB ID :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:Label ID="VoterUIDLabel" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="160px">
                                        <strong>
                                            <asp:Literal ID="VoterUserNameLabel" runat="server" EnableViewState="False">Voter user name :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:Label ID="VoterUserName" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="160px">
                                        <strong>
                                            <asp:Literal ID="VoterEmailLabel" runat="server" EnableViewState="False">Voter Email :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:Label ID="VoterEmail" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="160px">
                                        <strong>
                                            <asp:Literal ID="VoterIPAddressLabel" runat="server" EnableViewState="False">IP address :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:Label ID="IPAddressLabel" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="160px">
                                        <strong>
                                            <asp:Literal ID="VoteRecordedLabel" runat="server" EnableViewState="False">Vote recorded on :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:Label ID="VoteDateLabel" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" width="160px">
                                        <strong>
                                            <asp:Literal ID="TimeToTakeLabel" runat="server" EnableViewState="False">Time to take the survey :</asp:Literal></strong>
                                    </td>
                                    <td>
                                        <asp:Label ID="TimeToTakeSurveyLabel" runat="server"></asp:Label>&nbsp;<br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:PlaceHolder ID="AddInVoterDataPlaceHolder" runat="server"></asp:PlaceHolder>
                <br />
                <table class="innerText">
                    <tr>
                        <td>
                            <font class="titleFont">
                                <asp:Literal ID="EditSurveyAnswersTitle" runat="server" EnableViewState="False" Text="Edit survey answers"></asp:Literal></font>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="ReadOnlyAnswersLinkButton" runat="server">Enter voter's answers read only mode</asp:LinkButton>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="innerText">
                                <tr>
                                    <td>
                                        <asp:PlaceHolder ID="EditAnswersPlaceHolder" runat="server"></asp:PlaceHolder>
                                        <br />
                                        <asp:Button ID="UpdateVoterAnswersButton" runat="server" Text="Update answers"></asp:Button>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
