<%@ Control Language="c#" AutoEventWireup="false" Inherits="Votations.NSurvey.WebAdmin.UserControls.HeaderControl"
    TargetSchema="http://schemas.microsoft.com/intellisense/ie5" CodeBehind="HeaderControl.ascx.cs" %>
<table summary="headerTable" cellspacing="0" cellpadding="0" width="778" border="0">
    <tr>
        <td class="headerCell" colspan="2">

                <asp:Label Text="" CssClass="loginDiv" Visible="false" runat="server" ID="MenuUserName" />
        </td>
    </tr>
    <tr>
        <td style="padding-top:20px; padding-left:0px; width:90%;">

            <asp:Menu ID="mnuMain"  RenderingMode="List" CssClass="mnuMain"
                Orientation="Horizontal" 
                runat="server" 
                DynamicHorizontalOffset="2" 
                DynamicVerticalOffset="1" 
                StaticPopOutImageUrl="~/Images/arrow-right.gif" 
                DynamicPopOutImageUrl="~/Images/arrow-right.gif" >

		<DynamicMenuStyle CssClass="mnuMain" /> 
		<DynamicMenuItemStyle CssClass="mnuMain" /> 
		<DynamicSelectedStyle CssClass="mnuMain" /> 
		<DynamicHoverStyle CssClass="mnuMain" /> 

                <LevelMenuItemStyles>
                    <asp:MenuItemStyle CssClass="level1" />
                    <asp:MenuItemStyle CssClass="level2" />
                    <asp:MenuItemStyle CssClass="level3" />
                </LevelMenuItemStyles>

            </asp:Menu>

        </td>
        <td align="center"  style="padding-top:21px; 
            vertical-align:middle; 
            width:75px;">

            <asp:LinkButton Text="" runat="server" ID="LogoutButton" OnCommand="LogoutButton_Click"
                Visible="false" CssClass="logouthyperlink" Height="13"
                Style="
                padding:0px 2px 0px 2px; 
              width:50px;
              position: relative;
              left:-10px;
              vertical-align:middle;
                background-color: #9999FF;
                border: 1px solid #dddddd;
                -moz-border-radius: 5px;
                border-radius: 5px;        
                -webkit-border-radius: 5px;"    
                 ToolTip="Click to Log Out" />


        </td>
    </tr>
</table>