
Partial Class admin_PlayerDetails
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim deletedPlayerFirst As String = e.Values("FirstName").ToString()
        Dim deletedPlayerLast As String = e.Values("LastName").ToString()

        Deletedplayerlbl.text = deletedPlayerFirst & " " & deletedPlayerLast & " has been removed from the roster."

        Response.AddHeader("Refresh", "4:URL=./ViewAllPlayers.aspx")

    End Sub
End Class
