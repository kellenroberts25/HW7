<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="NewPlayer.aspx.vb" Inherits="admin_NewPlayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_karoberts_HW7 %>" DeleteCommand="DELETE FROM [karoberts_HW7] WHERE [PlayerID] = @original_PlayerID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Age] = @original_Age AND [Position] = @original_Position AND [Salary] = @original_Salary AND [WinsAboveReplacement] = @original_WinsAboveReplacement AND (([AllStar] = @original_AllStar) OR ([AllStar] IS NULL AND @original_AllStar IS NULL))" InsertCommand="INSERT INTO [karoberts_HW7] ([FirstName], [LastName], [Age], [Position], [Salary], [WinsAboveReplacement], [AllStar]) VALUES (@FirstName, @LastName, @Age, @Position, @Salary, @WinsAboveReplacement, @AllStar)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [karoberts_HW7]" UpdateCommand="UPDATE [karoberts_HW7] SET [FirstName] = @FirstName, [LastName] = @LastName, [Age] = @Age, [Position] = @Position, [Salary] = @Salary, [WinsAboveReplacement] = @WinsAboveReplacement, [AllStar] = @AllStar WHERE [PlayerID] = @original_PlayerID AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Age] = @original_Age AND [Position] = @original_Position AND [Salary] = @original_Salary AND [WinsAboveReplacement] = @original_WinsAboveReplacement AND (([AllStar] = @original_AllStar) OR ([AllStar] IS NULL AND @original_AllStar IS NULL))">
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

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="PlayerID" DataSourceID="SqlDataSource1" CellPadding="5" CellSpacing="10" DefaultMode="Insert" HorizontalAlign="Justify">
       
        <InsertItemTemplate>
            <table>
                <tr>
                    <td style="text-align:right;">
                        First Name:
                    </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="val_firstname" runat="server" ErrorMessage="Please Enter the players first name!" ControlToValidate="FirstNameTextbox" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                        </tr>
                <br />
            <tr>
                <td style="text-align:right;">
                    Last Name:
                </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="val_lastname" runat="server" ErrorMessage="Please Enter the players last name!" ControlToValidate="LastNameTextbox" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
               </tr>
                        <br />
            <tr>
                <td style="text-align:right;">
                    Age:
                </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="val_age" runat="server" ErrorMessage="Please enter the players Age!" ControlToValidate="AgeTextbox" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
            </tr>
                       
            <tr>
                <td style="text-align:right;">
                Position:
                </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
                    </td>
            </tr>
                        
            <tr>
                <td style="text-align:right;">
                Salary:
            </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                    </td>
            </tr>
                       
            <tr>
                <td style="text-align:right;">
                Wins Above Replacement:
                </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="WinsAboveReplacementTextBox" runat="server" Text='<%# Bind("WinsAboveReplacement") %>' />
                    </td>
            </tr>
                       
            <tr>
                <td style="text-align:right;">
                All-Star:
            </td>
                    <td style="text-align:left;">
                        <asp:TextBox ID="AllStarTextBox" runat="server" Text='<%# Bind("AllStar") %>' />
                    </td>
            </tr>
                        
           <tr><td></td><td></td></tr>
                <tr>
                    <td style="text-align:right;">
                        <asp:Button ID="InsertButton"  runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />&nbsp;&nbsp;&nbsp;</td>
                 <td style="text-align:left;">
                        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" navigateURL="~/admin/ViewAllPlayers.aspx"/>
                 </td>
            </tr>
                
        </table>        
        </InsertItemTemplate>
        <InsertRowStyle HorizontalAlign="Right" />
        <ItemTemplate>
            </ItemTemplate>
    </asp:FormView>




</asp:Content>

