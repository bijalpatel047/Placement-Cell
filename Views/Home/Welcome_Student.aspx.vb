Imports System.Data.SqlClient
'Partial Class Views_Master_Default2
Partial Class Views_Home_Welcome_Student
    Inherits System.Web.UI.Page

    Protected Sub Wizard_student_personal_details_CancelButtonClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Wizard_student_personal_details.CancelButtonClick
        ddl_batch_year.SelectedValue = ddl_batch_year.Items.Item(0).Text
        ddl_course_code.SelectedValue = ddl_course_code.Items.Item(0).Text
        txt_firstname.Text = ""
        txt_middle_name.Text = ""
        txt_last_name.Text = ""
        rbtn_list_gender.SelectedValue = rbtn_list_gender.Items.Item(0).Text
        txt_pin_code.Text = ""
        txt_city.Text = ""
        txt_state.Text = ""
        txt_area_code.Text = ""
        txt_resident_no.Text = ""
        txt_mobile_no.Text = ""
        txt_email.Text = ""
        txt_birth_date.Text = ""
        txt_ssc_per.Text = ""
        txt_ssc_board.Text = ""
        txt_hsc_per.Text = ""
        txt_hsc_board.Text = ""
        txt_bachelor_course.Text = ""
        txt_bachelor_per.Text = ""
        txt_bachelor_university.Text = ""
        txt_post_course.Text = ""
        txt_post_per.Text = ""
        txt_post_university.Text = ""
        txt_other_course.Text = ""
        txt_other_Percentage.Text = ""
        txt_other_uni.Text = ""
        txt_add_info.Text = ""

    End Sub

    Protected Sub Wizard_student_personal_details_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard_student_personal_details.FinishButtonClick
        Try
            
            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str3 As String

            str3 = "Select * From Student_Personal_Details where E_Mail='" & txt_email.Text & "'"

            Dim cmd3 As New SqlCommand(str3, connection.conn)
            Dim dr As SqlDataReader = cmd3.ExecuteReader()
            If dr.Read() Then
                MsgBox("Email address is not unqiue!")
                Return
            End If

            connection.conn.Close()


            'New Connection'
            Dim str2 As String
            Dim ans As Integer
            Dim cnn As New ConnectionUtility
            cnn.Add_Conn()

            str2 = "Insert into Student_Personal_Details values('" & User.Identity.Name & "'," & ddl_batch_year.SelectedValue & ",'" & ddl_course_code.SelectedValue & "','" & txt_firstname.Text & "','" & txt_middle_name.Text & "','" & txt_last_name.Text & "','" & rbtn_list_gender.SelectedValue & "','" & txt_pin_code.Text & "','" & txt_city.Text & "','" & txt_state.Text & "','" & txt_area_code.Text & "','" & txt_resident_no.Text & "','" & txt_mobile_no.Text & "','" & txt_email.Text & "'," & txt_birth_date.Text & "," & txt_ssc_per.Text & ",'" & txt_ssc_board.Text & "'," & txt_hsc_per.Text & ",'" & txt_hsc_board.Text & "','" & txt_bachelor_course.Text & "'," & txt_bachelor_per.Text & ",'" & txt_bachelor_university.Text & "','" & txt_post_course.Text & "'," & txt_post_per.Text & ",'" & txt_post_university.Text & "','" & txt_other_course.Text & "'," & txt_other_Percentage.Text & ",'" & txt_other_uni.Text & "','" & txt_add_info.Text & "')"

            Dim cmd As New SqlCommand(str2, cnn.conn)

            ans = cmd.ExecuteNonQuery
            cnn.conn.Close()
            ' MsgBox("All Details Registered successfully " & ans)

            If ans = "1" Then

                Dim cnn1 As New ConnectionUtility
                cnn1.Add_Conn()
                Dim str As String
                Dim ans2 As Integer
                str = "Update Login set Is_Registered = '" & True & "' where Login_Id = '" & User.Identity.Name & "' "

                Dim cmd1 As New SqlCommand(str, cnn1.conn)

                ans2 = cmd1.ExecuteNonQuery
                cnn1.conn.Close()
            End If
            MsgBox("Your Details Registered Sucessfully...")

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try

        ddl_batch_year.SelectedValue = ddl_batch_year.Items.Item(0).Text
        ddl_course_code.SelectedValue = ddl_course_code.Items.Item(0).Text
        txt_firstname.Text = ""
        txt_middle_name.Text = ""
        txt_last_name.Text = ""
        rbtn_list_gender.SelectedValue = rbtn_list_gender.Items.Item(0).Text
        txt_pin_code.Text = ""
        txt_city.Text = ""
        txt_state.Text = ""
        txt_area_code.Text = ""
        txt_resident_no.Text = ""
        txt_mobile_no.Text = ""
        txt_email.Text = ""
        txt_birth_date.Text = ""
        txt_ssc_per.Text = ""
        txt_ssc_board.Text = ""
        txt_hsc_per.Text = ""
        txt_hsc_board.Text = ""
        txt_bachelor_course.Text = ""
        txt_bachelor_per.Text = ""
        txt_bachelor_university.Text = ""
        txt_post_course.Text = ""
        txt_post_per.Text = ""
        txt_post_university.Text = ""
        txt_other_course.Text = ""
        txt_other_Percentage.Text = ""
        txt_other_uni.Text = ""
        txt_add_info.Text = ""


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim connection As New ConnectionUtility
        connection.Add_Conn()
        Dim str As String

        str = "select Count(Login_Id) from Student_Personal_Details where Login_Id='" & User.Identity.Name & "'"

        Dim cmd1 As New SqlCommand(str, connection.conn)
        'Dim ans As Integer = DirectCast(cmd1.ExecuteScalar(), Int32)
        Dim ans As Integer
        ans = cmd1.ExecuteScalar()
        connection.conn.Close()

        If ans = "0" Then
            pnl_student_reg.Visible = True
            'btn_click.Visible = "True"
        Else
            pnl_student_reg.Visible = False
            'btn_click.Visible = "False"
        End If

    End Sub

    Protected Sub btn_click_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_click.Click
        Wizard_student_personal_details.Visible = True
    End Sub

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
