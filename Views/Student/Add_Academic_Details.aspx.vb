Imports System.Data.SqlClient
Partial Class Views_Student_Add_Academic_Details
    Inherits System.Web.UI.Page
    Protected Sub btn_insert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_insert.Click
        Try
            Dim connection As New ConnectionUtility
            connection.Add_Conn()

            Dim str As String
            Dim ans As Integer


            str = "INSERT INTO Student_Academic_Details VALUES ('" & User.Identity.Name & "' , " & txt_semester_1.Text & " , " & txt_semester_2.Text & " , " & txt_semester_3.Text & " , " & txt_semester_4.Text & " , " & txt_semester_5.Text & " , " & txt_semester_6.Text & " )"
            Dim cmd As New SqlCommand(str, connection.conn)
            ans = cmd.ExecuteNonQuery
            connection.conn.Close()
            lbl_reply.Visible = "True"
            lbl_reply.Text = ans & "Record Inserted successfully "

        Catch ex As Exception
            lbl_reply.Visible = "True"
            lbl_reply.Text = "Error --> " + ex.Message

        End Try

    End Sub

    
End Class
