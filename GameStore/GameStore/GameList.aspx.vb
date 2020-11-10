Public Class GameList
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("Loggedin") = False Then
            GridView1.Columns(8).Visible = False
        End If

    End Sub

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged1(sender As Object, e As EventArgs)

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim RowNum As Integer

        RowNum = GridView1.SelectedIndex

        Session("GameId") = GridView1.Rows(RowNum).Cells(0).Text
        Session("GameName") = GridView1.Rows(RowNum).Cells(1).Text
        Session("Price") = GridView1.Rows(RowNum).Cells(7).Text

        SqlDataSource2.Insert()



    End Sub
End Class