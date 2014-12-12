<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center; padding-left:50px;">
        <asp:Login ID="Login1" runat="server" TitleTextStyle-HorizontalAlign="Center" LabelStyle-HorizontalAlign="Center"></asp:Login>
    </div>
</asp:Content>

