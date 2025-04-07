Imports System.Data.SqlClient
Partial Class Views_Admin_Change_Password
    Inherits System.Web.UI.Page

    Protected Sub btn_change_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_change.Click

        Try
            Dim connection As New ConnectionUtility
            connection.Add_Conn()

            Dim cmd As New SqlCommand("Update Login set Password = '" & txt_confirm_new_pwd.Text & "' where Login_Id = '" & User.Identity.Name & "' ", connection.conn)
            
            If cmd.ExecuteNonQuery() > 0 Then
                lbl_reply.Visible = "True"
                lbl_reply.Text = "Password has been changed succesfully!"

            Else
                lbl_reply.Visible = "True"
                lbl_reply.Text = "Sorry! Could not change password!"

            End If
            connection.conn.Close()
        Catch ex As Exception
            lbl_reply.Visible = "True"
            lbl_reply.Text = "Error --> " + ex.Message
        Finally

        End Try

    End Sub

    Protected Sub btn_cancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_cancel.Click
        txt_current_pwd.Text = ""
        txt_new_pwd.Text = ""
        txt_confirm_new_pwd.Text = ""

    End Sub
End Class
