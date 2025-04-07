
Partial Class Views_Home_Welcome_SubAdmin
    Inherits System.Web.UI.Page
    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_search.Click
        If txt_search.Text = "" Then
            MsgBox("Please Enter any Value")
        Else
            pnl_search_result.Visible = True
            If ddl_search.SelectedValue = "By Course" Then
                GridView1.DataSourceID = "SqlDataSource3"
            ElseIf ddl_search.SelectedValue = "By Batch Year" Then
                GridView1.DataSourceID = "SqlDataSource4"
            ElseIf ddl_search.SelectedValue = "By Visit Year" Then
                GridView1.DataSourceID = "SqlDataSource5"
            ElseIf ddl_search.SelectedValue = "By Login ID" Then
                GridView1.DataSourceID = "SqlDataSource6"
            ElseIf ddl_search.SelectedValue = "By Company Name" Then
                GridView1.DataSourceID = "SqlDataSource7"
            End If
        End If

    End Sub
End Class
