<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="ViewAllPlayers.aspx.vb" Inherits="ViewAllPlayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_karoberts_HW7 %>" 
        SelectCommand="SELECT [FirstName], [LastName], [Position] FROM [karoberts_HW7]"></asp:SqlDataSource>




<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
    <Columns>
        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
        <asp:CommandField ShowSelectButton="True" />
    </Columns>
</asp:GridView>
<br />
<br />
<br />




</asp:Content>

