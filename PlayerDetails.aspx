<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="PlayerDetails.aspx.vb" Inherits="PlayerDeatails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align:center;"
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  
        ConnectionString="<%$ ConnectionStrings:db_karoberts_HW7 %>" 
        SelectCommand="SELECT * FROM [karoberts_HW7]" 
        DeleteCommand="DELETE FROM [karoberts_HW7] WHERE [PlayerID] = @PlayerID" 
        InsertCommand="INSERT INTO [karoberts_HW7] ([FirstName], [LastName], [Age], [Position], [Salary], [WinsAboveReplacement], [AllStar]) VALUES (@FirstName, @LastName, @Age, @Position, @Salary, @WinsAboveReplacement, @AllStar)" UpdateCommand="UPDATE [karoberts_HW7] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Position] = @Position, [Salary] = @Salary, [WinsAboveReplacement] = @WinsAboveReplacement, [AllStar] = @AllStar WHERE [PlayerID] = @PlayerID">
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

        </div>
    <br />

    
 <asp:DetailsView ID="DetailsView1" runat="server" Height="60px" Width="150px" AutoGenerateRows="False" DataKeyNames="PlayerID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
            <asp:BoundField DataField="WinsAboveReplacement" HeaderText="Wins Above Replacement" SortExpression="WinsAboveReplacement" />
            <asp:BoundField DataField="AllStar" HeaderText="All Star" SortExpression="AllStar" />
          
        </Fields>
    </asp:DetailsView>
    <br />
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Return" OnClientClick="JavaScript:window.history.back(1);return false;" UseSubmitBehavior="True" />

</asp:Content>
