Partial Class control_Search
    Inherits System.Web.UI.UserControl


    Public Sub FillCourse()
        Dim daCourse As New ds_CourseTableAdapters.CourseTableAdapter
        Dim dtCourse As New ds_Course.CourseDataTable
        dtCourse = daCourse.GetDataByCourse(True)
        If dtCourse IsNot Nothing Then
            If dtCourse.Rows.Count > 0 Then
                ddlCourse.DataSource = dtCourse
                ddlCourse.DataTextField = dtCourse.Columns(1).ColumnName
                ddlCourse.DataValueField = dtCourse.Columns(0).ColumnName
                ddlCourse.DataBind()
            End If
        End If
        ddlCourse.Items.Insert(0, New ListItem("All course.", 0))
    End Sub



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            FillCourse()

            If Request.QueryString("SCId") IsNot Nothing Then
                ddlCourse.SelectedValue = Request.QueryString("SCId")
            End If
            If Request.QueryString("Name") IsNot Nothing Then
                txtSearch.Text = Request.QueryString("Name")
            End If
        End If
    End Sub


    Protected Sub imgbtnSearch_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles imgbtnSearch.Click
        Response.Redirect("../Candidate/CourseDisplay.aspx?SCId=" & ddlCourse.SelectedValue & "&Name=" & txtSearch.Text.Trim)
    End Sub
End Class
