Imports System.Data.SqlClient
Partial Class Views_Student_Academic_Details
    Inherits System.Web.UI.Page
    Protected Sub btn_update_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_update.Click
        Try
            Dim connection As New ConnectionUtility
            connection.Add_Conn()

            Dim cmd1 As New SqlCommand("UPDATE Student_Academic_Details SET Semester_1 = " & txt_sem_1.Text & " , Semester_2 = " & txt_sem_2.Text & " , Semester_3= " & txt_sem_3.Text & " , Semester_4 = " & txt_sem_4.Text & " , Semester_5 = " & txt_sem_5.Text & ",Semester_6 = " & txt_sem_6.Text & " WHERE Login_Id = '" & User.Identity.Name & "' ", connection.conn)
            Dim ans As Integer
            ans = cmd1.ExecuteNonQuery()
            If ans > 0 Then
                lbl_reply.Visible = "True"
                lbl_reply.Text = "Details has been changed succesfully!"

            Else
                lbl_reply.Visible = "True"
                lbl_reply.Text = "Sorry! Could not change!"

            End If
            connection.conn.Close()
        Catch ex As Exception
            lbl_reply.Visible = "True"
            lbl_reply.Text = "Error --> " + ex.Message
        Finally

        End Try

    End Sub


    Protected Sub btn_view_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_view.Click
        Try
            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str1 As String

            str1 = "Select * From Student_Academic_Details where Login_Id= '" & User.Identity.Name & "'"
            Dim cmd1 As New SqlCommand(str1, connection.conn)
            Dim dr As SqlDataReader

            dr = cmd1.ExecuteReader()
            While dr.Read
                txt_Login_Id.Text = dr.Item(0)
                txt_sem_1.Text = dr.Item(1)
                txt_sem_2.Text = dr.Item(2)
                txt_sem_3.Text = dr.Item(3)
                txt_sem_4.Text = dr.Item(4)
                txt_sem_5.Text = dr.Item(5)
                txt_sem_6.Text = dr.Item(6)
            End While
            connection.conn.Close()
        Catch ex As Exception
            MsgBox(ex.ToString)
        Finally

        End Try

    End Sub

    
    Protected Sub btn_cancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_cancel.Click
        txt_sem_1.Text = ""
        txt_sem_2.Text = ""
        txt_sem_3.Text = ""
        txt_sem_4.Text = ""
        txt_sem_5.Text = ""
        txt_sem_6.Text = ""
    End Sub
End Class

