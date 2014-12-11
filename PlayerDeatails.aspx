<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="PlayerDeatails.aspx.vb" Inherits="PlayerDeatails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:db_karoberts_HW7 %>" 
        SelectCommand="SELECT * FROM [karoberts_HW7] Where ([PlayerID] = @PlayerID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="PlayerID" QueryStringField="PlayerID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


    <br />

    
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="PlayerID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="PlayerID" HeaderText="Player ID" InsertVisible="False" ReadOnly="True" SortExpression="PlayerID" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            <asp:BoundField DataField="WinsAboveReplacement" HeaderText="Wins Above Replacement" SortExpression="WinsAboveReplacement" />
            <asp:BoundField DataField="AllStar" HeaderText="All-Star" SortExpression="AllStar" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>




</asp:Content>
