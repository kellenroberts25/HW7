
Partial Class Search
    Inherits System.Web.UI.Page

    Protected Sub tb_search1_TextChanged(sender As Object, e As EventArgs) Handles tb_search1.TextChanged

        Dim searchword As String

        searchword = "Select * From karoberts_HW7 Where (FirstName Like '&" + tb_search1.Text.ToString() + "%') OR (LastName Like '&" + tb_search1.Text.ToString() + "%') OR (Age Like '&" + tb_search1.Text.ToString() + "%') Or (Position Like '&" + tb_search1.Text.ToString() + "%') OR (Salary Like '&" + tb_search1.Text.ToString() + "%') OR (WinsAboveReplacement Like '&" + tb_search1.Text.ToString() + "%') OR (AllStar Like '&" + tb_search1.Text.ToString() + "%')"

        SqlDataSource1.SelectCommand = searchword

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        tb_search1.Focus()
    End Sub
End Class
