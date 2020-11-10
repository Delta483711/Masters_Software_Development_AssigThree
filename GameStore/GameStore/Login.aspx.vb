Public Class Login
    Inherits System.Web.UI.Page

    Public Property MessageBox As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        'Login User'
        If GridView1.Rows.Count = 1 Then
            Session("Loggedin") = True
            Session("Username") = TextBox1.Text
            Response.Redirect("HomePage.aspx")
        End If
        '*********************************************************************'

        'Check Username empty'
        If TextBox1.Text = "" Then
            Label2.Text = "UserName Cannot be empty"
        End If

        If Not (TextBox1.Text = "") Then
            Label2.Text = ""
        End If
        '*********************************************************************'

        'Check Password empty'
        If TextBox2.Text = "" Then
            Label3.Text = "Password Cannot be empty"
        End If

        If Not (TextBox2.Text = "") Then
            Label3.Text = ""
        End If

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)

    End Sub
End Class