Public Class Register
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Session("Loggedin") = True Then
            MsgBox("Cannot Register if you are logged in.")
            Response.Redirect("HomePage.aspx")
        End If

        If Not (TextBox4.Text = "") And Not (TextBox5.Text = "") Then
            SqlDataSource1.Insert()
            regSuccess.Text = "Registration was successful!!"

        End If
    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
End Class