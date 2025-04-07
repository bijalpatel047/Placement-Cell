
Partial Class Views_Student_View_Profile
    Inherits System.Web.UI.Page

    Protected Sub lbtn_edit_profile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lbtn_edit_profile.Click
        Response.Redirect("~/Views/Student/Edit_Profile.aspx")
    End Sub
End Class
