
Partial Class Players
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim todaysdate As Date
        todaysdate = Date.Now
        Datelbl.Text = todaysdate

        'Dim currenttime As Date
        'currenttime = TimeOfDay
        'Timelbl.Text = currenttime

    End Sub
End Class

