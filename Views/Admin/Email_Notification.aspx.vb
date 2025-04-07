Imports System.Data.SqlClient
Imports System.Net.Mail

Partial Class Views_Admin_Email_Notification
    Inherits System.Web.UI.Page

    Protected Sub btnSendNotification_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSendNotification.Click
        Dim mail As MailMessage = New MailMessage()
        mail.To.Add("ganesha241@gmail.com")

        mail.From = New MailAddress("rollwalaplacement@gmail.com")
        mail.Subject = "Your Login Id & Password"

        Dim body As String
        body = "Messgae is : " & txtMessage.Text
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
        ddl_course.SelectedValue = ddl_course.Items.Item(0).Text
        ddl_year.SelectedValue = ddl_year.Items.Item(0).Text
        txtMessage.Text = ""
    End Sub
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        GridView1.Visible = True
    End Sub
    
End Class
