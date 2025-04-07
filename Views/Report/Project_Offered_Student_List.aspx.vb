
Partial Class Views_Report_Project_Offered_Student_List
    Inherits System.Web.UI.Page

    Protected Sub ddl_placement_Details_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddl_placement_Details.SelectedIndexChanged
        If ddl_placement_Details.SelectedValue = "Project Offered" Then
            GridView1.DataSource = "SqlDataSource1"
            GridView1.DataBind()
        ElseIf ddl_placement_Details.SelectedValue = "Job Offered" Then
            GridView1.DataSource = "SqlDataSource2"
            GridView1.DataBind()
        ElseIf ddl_placement_Details.SelectedValue = "Both" Then
            GridView1.DataSource = "SqlDataSource3"
            GridView1.DataBind()
        End If
    End Sub

End Class
