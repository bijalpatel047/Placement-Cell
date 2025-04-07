Partial Class Views_Company_Company_Placement_Details
    Inherits System.Web.UI.Page
    Protected Sub lbl_click_Here_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbl_click_Here.Click
        FormView1.Visible = "True"
    End Sub
    Protected Sub ddl_course_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddl_course.SelectedIndexChanged
        ddl_year.DataBind()
    End Sub
    Protected Sub ddl_company_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddl_company.SelectedIndexChanged
        ddl_visit_year.DataBind()
    End Sub
    Protected Sub InsertCancelButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        FormView1.Visible = "False"
    End Sub

    
End Class
