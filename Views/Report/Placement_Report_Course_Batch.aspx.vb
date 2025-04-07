
Partial Class Views_Report_Placement_Report
    Inherits System.Web.UI.Page

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_submit.Click
        GridView1.Visible = "True"
        'DetailsView1.Visible = "True"
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
