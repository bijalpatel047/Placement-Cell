Imports System.Data.SqlClient
Imports System.Net.Mail

Partial Class Views_Login_Forget_Password
    Inherits System.Web.UI.Page

    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_submit.Click
        'check Details is correct or not?

        Dim connection As New ConnectionUtility
        connection.Add_Conn()
        Dim str As String
        Dim name As String
        str = "Select First_Name From Student_Personal_Details where E_Mail='" & txt_email.Text & "' and Login_Id='" & txt_login_id.Text & "' "

        Dim cmd As New SqlCommand(str, connection.conn)

        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader()

        If Not dr.Read() Then
            lbl_reply.Visible = True
            lbl_reply.Text = "Sorry! Your given details is not found!"
            Return
        Else
            name = dr.Item(0)
        End If
        connection.conn.Close()

        'new connection'

        Dim cnn As New ConnectionUtility
        cnn.Add_Conn()
        Dim str1 As String
        Dim Pwd As String
        str1 = "Select Password From Login where Login_Id='" & txt_login_id.Text & "'"

        Dim cmd1 As New SqlCommand(str1, cnn.conn)


        Dim dr1 As SqlDataReader
        dr1 = cmd1.ExecuteReader()
        While dr1.Read
            Pwd = dr1.Item(0)   
        End While

        cnn.conn.Close()


        Dim mail As MailMessage = New MailMessage()
        mail.To.Add(txt_email.Text)

        mail.From = New MailAddress("rollwalaplacement@gmail.com")
        mail.Subject = "Password Recovery"

        Dim body As String

        body = " Dear " & name & "," & vbCrLf & "You are able to login your account with this Id & Password." & vbCrLf & vbCrLf & "Login ID : " & txt_login_id.Text & vbCrLf & "Password : " & Pwd
        mail.Body = body

        mail.IsBodyHtml = True
        Dim smtp As SmtpClient = New SmtpClient()
        smtp.Host = "smtp.gmail.com"
        smtp.Credentials = New System.Net.NetworkCredential("rollwalaplacement@gmail.com", "9408752770")
        smtp.EnableSsl = True
        Try
            smtp.Send(mail)
            lbl_reply.Visible = "True"
            lbl_reply.Text = "Messgaae sent"
        Catch ex As Exception
            lbl_reply.Visible = "True"
            lbl_reply.Text = "Error---> Server not Found, so You can't send mail."
        End Try

    End Sub

    
    Protected Sub btn_cancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_cancel.Click
        txt_email.Text = ""
        txt_login_id.Text = ""
        lbl_reply.Text = ""


    End Sub
End Class
