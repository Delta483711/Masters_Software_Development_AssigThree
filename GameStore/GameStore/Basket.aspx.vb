Public Class Basket
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'Make the grid visiable = false'

        If Session("Loggedin") = False Then
            GridView1.Visible = False
            Button2.Visible = False
            Label2.Text = "You need to login to view the basket !"
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        MsgBox("Thank you for your Purchase!")
        Response.Redirect("HomePage.aspx")
    End Sub
End Class