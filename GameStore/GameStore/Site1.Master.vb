Public Class Site1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Button1.Visible = False
        If Session("Loggedin") = True Then
            Label1.Text = "Welcome " + Session("Username")
            Button1.Visible = True
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Session("Loggedin") = False
        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub
End Class