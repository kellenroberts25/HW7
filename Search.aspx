<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  <div style="text-align:center;">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:db_karoberts_HW7 %>" 
        SelectCommand="SELECT * FROM [karoberts_HW7]"></asp:SqlDataSource>
    <br />
    <%If Not IsPostBack Then%>
        Search for a Player: <asp:TextBox ID="tb_search1" runat="server" />

       <%Else%>
             <p style="align-content:center;">Search for a Player: <asp:TextBox ID="tb_search2" runat="server" /></p>
       <br /><br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" 
        AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AutoPostback="True" AlternatingRowStyle-CssClass="" PagerStyle-CssClass="" 
        CellPadding="5" CellSpacing="5" HorizontalAlign="Left" CoWidth="200px" DataKeyNames="PlayerID" >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" HeaderStyle-Width="200 px" ItemStyle-Width="200" ></asp:BoundField>
            <asp:BoundField DataField="WinsAboveReplacement" HeaderText="Wins Above Replacement" SortExpression="WinsAboveReplacement" />
       
                <asp:BoundField DataField="AllStar" HeaderText="All Star" SortExpression="AllStar" />
            <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="PlayerDetails.aspx?playerID" Text="Select" />
       
                </Columns>
        <EditRowStyle HorizontalAlign="Center" Width="100" VerticalAlign="NotSet" Font-Underline="False" />
        <HeaderStyle BackColor="#003399" ForeColor="White" Wrap="False" HorizontalAlign="Center" Width="100px" />
        <RowStyle Font-Italic="True" Font-Names="Arial" HorizontalAlign="Center" Width="200px" />
        <SelectedRowStyle BackColor="#FFFF66" />
    </asp:GridView>
    <%End If%>
<br />

<br />
</div>  
</asp:Content>

