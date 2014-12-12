<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="PlayerDetails.aspx.vb" Inherits="admin_PlayerDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=apollo.biz.uiowa.edu;Initial Catalog=msci3300_g7;Persist Security Info=True;User ID=msci3300_g7;Password=Colbert!3300" 
        DeleteCommand="DELETE FROM [karoberts_HW7] WHERE [PlayerID] = @original_PlayerID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Age] = @original_Age AND [Position] = @original_Position AND [Salary] = @original_Salary AND [WinsAboveReplacement] = @original_WinsAboveReplacement AND (([AllStar] = @original_AllStar) OR ([AllStar] IS NULL AND @original_AllStar IS NULL))" 
        InsertCommand="INSERT INTO [karoberts_HW7] ([FirstName], [LastName], [Age], [Position], [Salary], [WinsAboveReplacement], [AllStar]) VALUES (@FirstName, @LastName, @Age, @Position, @Salary, @WinsAboveReplacement, @AllStar)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [karoberts_HW7]" 
        UpdateCommand="UPDATE [karoberts_HW7] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Position] = @Position, [Salary] = @Salary, [WinsAboveReplacement] = @WinsAboveReplacement, [AllStar] = @AllStar WHERE [PlayerID] = @original_PlayerID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Age] = @original_Age AND [Position] = @original_Position AND [Salary] = @original_Salary AND [WinsAboveReplacement] = @original_WinsAboveReplacement AND (([AllStar] = @original_AllStar) OR ([AllStar] IS NULL AND @original_AllStar IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_PlayerID" Type="Int32" />
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
            <asp:Parameter Name="original_PlayerID" Type="Int32" />
            <asp:Parameter Name="original_FirstName" Type="String" />
            <asp:Parameter Name="original_LastName" Type="String" />
            <asp:Parameter Name="original_Age" Type="Int32" />
            <asp:Parameter Name="original_Position" Type="String" />
            <asp:Parameter Name="original_Salary" Type="Decimal" />
            <asp:Parameter Name="original_WinsAboveReplacement" Type="Decimal" />
            <asp:Parameter Name="original_AllStar" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>


    <br />

    <asp:Label ID="DeletedPlayerlbl" runat="server" Text="" ForeColor="Red"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="60px" Width="150px" AutoGenerateRows="False" DataKeyNames="PlayerID" DataSourceID="SqlDataSource1">
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

    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Return" OnClientClick="JavaScript:window.history.back(1);return false;" UseSubmitBehavior="True" />


</asp:Content>

