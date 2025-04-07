Imports System.Data.SqlClient
Partial Class Views_Company_Company_Arrival_Details
    Inherits System.Web.UI.Page

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles InsertButton.Click
        Try
            'ID Generate......'
            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str1 As String

            str1 = "select  isnull(count(Arrival_Id),0) + 1 from Company_Arrival"

            Dim cmd1 As New SqlCommand(str1, connection.conn)
            Dim Id As Integer = DirectCast(cmd1.ExecuteScalar(), Int32)
            connection.conn.Close()

            'New Connection..'
            Dim cnn As New ConnectionUtility
            cnn.Add_Conn()
            Dim str As String
            Dim ans As Integer
            str = "INSERT INTO Company_Arrival VALUES ('" & "A_" & Id & "' , '" & ddl_com_name.SelectedValue.ToString & "' , '" & ddl_course_code.SelectedValue.ToString & "' , " & ddl_batch_year.SelectedValue.ToString & " , " & txtVisit_Year.Text & " , '" & ddl_campus_type.SelectedValue.ToString & "' , '" & txtPreferedSkill.Text & "')"
            Dim cmd As New SqlCommand(str, cnn.conn)
            ans = cmd.ExecuteNonQuery
            cnn.conn.Close()
            lbl_reply.Visible = True
            lbl_reply.Text = ans & " Record Registerd successfully"
            GridView1.DataBind()
        Catch ex As Exception
            lbl_reply.Visible = True
            lbl_reply.Text = "Error :' " & ex.ToString & "' "
        End Try
        ddl_com_name.SelectedValue = ddl_com_name.Items.Item(0).Text
        ddl_course_code.SelectedValue = ddl_course_code.Items.Item(0).Text
        ddl_batch_year.SelectedValue = ddl_batch_year.Items.Item(0).Text
        ddl_campus_type.SelectedValue = ddl_campus_type.Items.Item(0).Text
        txtVisit_Year.Text = ""
        txtPreferedSkill.Text = ""
        lbl_reply.Text = ""
    End Sub
    Protected Sub InsertCancelButton_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles InsertCancelButton.Click
        ddl_com_name.SelectedValue = ddl_com_name.Items.Item(0).Text
        ddl_course_code.SelectedValue = ddl_course_code.Items.Item(0).Text
        ddl_batch_year.SelectedValue = ddl_batch_year.Items.Item(0).Text
        ddl_campus_type.SelectedValue = ddl_campus_type.Items.Item(0).Text
        txtVisit_Year.Text = ""
        txtPreferedSkill.Text = ""
        lbl_reply.Text = ""
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("../../Views/Company/Company_Registration.aspx")
    End Sub

    
End Class
