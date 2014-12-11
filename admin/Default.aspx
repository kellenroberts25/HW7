<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <ul>
        <li><asp:HyperLink ID="viewallplayers" runat="server" NavigateUrl="~/admin/ViewAllPlayers.aspx">Edit a Current Yankee</asp:HyperLink></li>
        <li><asp:HyperLink ID="addnewplayer" runat="server" NavigateUrl="~/admin/NewPlayer.aspx">Add a new Yankee</asp:HyperLink></li>
        <li><asp:HyperLink ID="manageusers" runat="server" NavigateUrl="~/siteManager/edit_user.aspx">Manage Users</asp:HyperLink></li>
        <li><asp:HyperLink ID="manageroles" runat="server" NavigateUrl="~/siteManager/roles.aspx">Manage Roles</asp:HyperLink></li>

    </ul>


</asp:Content>

