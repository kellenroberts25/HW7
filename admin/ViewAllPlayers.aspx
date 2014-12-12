<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="ViewAllPlayers.aspx.vb" Inherits="admin_ViewAllPlayers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_karoberts_HW7 %>" 
        SelectCommand="SELECT * FROM [karoberts_HW7]" DeleteCommand="DELETE FROM [karoberts_HW7] WHERE [PlayerID] = @PlayerID" InsertCommand="INSERT INTO [karoberts_HW7] ([FirstName], [LastName], [Age], [Position], [Salary], [WinsAboveReplacement], [AllStar]) VALUES (@FirstName, @LastName, @Age, @Position, @Salary, @WinsAboveReplacement, @AllStar)" UpdateCommand="UPDATE [karoberts_HW7] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Position] = @Position, [Salary] = @Salary, [WinsAboveReplacement] = @WinsAboveReplacement, [AllStar] = @AllStar WHERE [PlayerID] = @PlayerID">
        <DeleteParameters>
            <asp:Parameter Name="PlayerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="WinsAboveReplacement" Type="Decimal" />
            <asp:Parameter Name="AllStar" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String" />
            <asp:Parameter Name="LastName" Type="String" />
            <asp:Parameter Name="Age" Type="Int32" />
            <asp:Parameter Name="Position" Type="String" />
            <asp:Parameter Name="Salary" Type="Decimal" />
            <asp:Parameter Name="WinsAboveReplacement" Type="Decimal" />
            <asp:Parameter Name="AllStar" Type="String" />
            <asp:Parameter Name="PlayerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
<div style="padding-left:25px;">
<asp:GridView ID="GridView1" runat="server" width="700px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" DataKeyNames="PlayerID">
    <Columns>
        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
        <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
        <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="PlayerDetails.aspx?playerID={0}" Text="Select" />
    </Columns>
</asp:GridView>
</div>
<br />
<br />
<br />




</asp:Content>