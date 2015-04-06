
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tb_search_TextChanged(sender As Object, e As EventArgs) Handles tb_search.TextChanged
        Dim searchWord As String
        searchWord = "Select * From acorlando_hw7 where (team_Name Like '%" + tb_search.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord
    End Sub
End Class
