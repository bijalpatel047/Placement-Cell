Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data
Imports System.Configuration
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.IO
Imports System.Net.Mail
Imports System.Data.SqlClient

'Partial Class Views_Master_Default2
Partial Class Views_Register_Registration_All
    Inherits System.Web.UI.Page
    Protected Sub ddl_type_of_users_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddl_type_of_users.SelectedIndexChanged
        If ddl_type_of_users.SelectedValue = "S" Then
            pnl_student.Visible = True
            pnl_faculty.Visible = False
            pnl_SubAdmin.Visible = False
        ElseIf ddl_type_of_users.SelectedValue = "F" Then
            pnl_student.Visible = False
            pnl_SubAdmin.Visible = False
            pnl_faculty.Visible = True
        Else
            pnl_student.Visible = False
            pnl_faculty.Visible = False
            pnl_SubAdmin.Visible = True
        End If
    End Sub
    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_submit.Click
        txt_student_id_1.Text = ddl_course.SelectedValue & ddl_year.SelectedValue

    End Sub
    Protected Sub btn_create_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_create.Click
        lbl_display_student_id.Text = txt_student_id_1.Text & txt_student_id_2.Text

    End Sub
    Protected Sub btn_generate_password_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_generate_password.Click
        ' txt_password.Text = ddl_course.SelectedValue & txt_student_id_2.Text

        Dim guid As String = ""
        Dim allowchars As String = " "
        allowchars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"
        allowchars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"
        allowchars += "1,2,3,4,5,6,7,8,9,0"

        Dim array() As String = allowchars.Split(New Char() {","c})
        Dim temp As String = ""
        Dim random As New Random()

        For i As Integer = 0 To 8
            temp = array(random.Next(0, array.Length))
            guid += temp
        Next
        txt_password.Text = guid.ToString()
    End Sub
    Protected Sub btn_register_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_register.Click
        'TO Create Id & Password'
        Try

            Dim cnn As New ConnectionUtility
            cnn.Add_Conn()
            Dim str As String
            Dim ans As Integer
            str = "Insert into Login values('" & lbl_display_student_id.Text & "','" & txt_s_name.Text & "','" & txt_password.Text & "','" & ddl_type_of_users.SelectedValue & "','" & True & "','" & False & "')"

            Dim cmd As New SqlCommand(str, cnn.conn)

            ans = cmd.ExecuteNonQuery
            cnn.conn.Close()
            lbl_s_reply.Visible = "True"
            lbl_s_reply.Text = ans & " Student Account Created Successfully..."

        Catch ex As Exception
            lbl_s_reply.Visible = "True"
            lbl_s_reply.Text = "Error : can't create Account."
        End Try

        'Sent Mail to Inform Id & Password

        Dim mail As MailMessage = New MailMessage()
        mail.To.Add(txt_email.Text)

        mail.From = New MailAddress("rollwalaplacement@gmail.com")
        mail.Subject = "Your Login Id & Password"

        Dim body As String
        body = " Now, You are able to login your account with this Id & Password." & vbCrLf & vbCrLf & "Login ID : " & lbl_display_student_id.Text & vbCrLf & "Password : " & txt_password.Text
        mail.Body = body

        mail.IsBodyHtml = True

        Dim smtp As SmtpClient = New SmtpClient()

        smtp.Host = "smtp.gmail.com"
        smtp.Credentials = New System.Net.NetworkCredential("rollwalaplacement@gmail.com", "9408752770")
        smtp.EnableSsl = True
        Try
            smtp.Send(mail)
            lbl_s_reply_2.Visible = "True"
            lbl_s_reply_2.Text = "Message sent"
        Catch ex As Exception
            lbl_s_reply_2.Visible = "True"
            lbl_s_reply_2.Text = "Error---> Server not Found, So You Can't send Mail. "
        End Try

        ddl_course.SelectedValue = ddl_course.Items.Item(0).Text
        ddl_year.SelectedValue = ddl_year.Items.Item(0).Text
        txt_student_id_1.Text = ""
        txt_student_id_2.Text = ""
        lbl_display_student_id.Text = ""
        txt_s_name.Text = ""
        txt_password.Text = ""
        txt_email.Text = ""
    End Sub
    Protected Sub btn_cancel1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_cancel1.Click
        ddl_course.SelectedValue = ddl_course.Items.Item(0).Text
        ddl_year.SelectedValue = ddl_year.Items.Item(0).Text
        txt_student_id_1.Text = ""
        txt_student_id_2.Text = ""
        lbl_display_student_id.Text = ""
        txt_s_name.Text = ""
        txt_password.Text = ""
        txt_email.Text = ""
        lbl_s_reply.Text = ""
        lbl_s_reply_2.Text = ""

    End Sub
    'Protected Sub btn_view_details_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_view_details.Click
    '    GridView1.Visible = True
    'End Sub
    Protected Sub btn_f_pwd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_f_pwd.Click
        Dim guid As String = ""
        Dim allowchars As String = " "
        allowchars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"
        allowchars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"
        allowchars += "1,2,3,4,5,6,7,8,9,0"

        Dim array() As String = allowchars.Split(New Char() {","c})
        Dim temp As String = ""
        Dim random As New Random()

        For i As Integer = 0 To 8
            temp = array(random.Next(0, array.Length))
            guid += temp
        Next
        txt_f_pwd.Text = guid.ToString()

    End Sub
    Protected Sub btn_f_reg_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_f_reg.Click
        'connection For Id Generate'
        Try

            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str1 As String

            str1 = "select isnull(count(Login_Id),0) + 1 from Login where Type_of_Users = '" & "F" & "' "

            Dim cmd1 As New SqlCommand(str1, connection.conn)
            Dim Id As Integer = DirectCast(cmd1.ExecuteScalar(), Int32)
            connection.conn.Close()

            'Create Id & Password for Faculty'

            Dim cnn As New ConnectionUtility
            cnn.Add_Conn()
            Dim str As String
            Dim ans As Integer
            str = "Insert into Login values('" & "F_" & Id & "','" & txt_f_name.Text & "','" & txt_f_pwd.Text & "','" & ddl_type_of_users.SelectedValue & "','" & True & "','" & True & "')"

            Dim cmd As New SqlCommand(str, cnn.conn)

            ans = cmd.ExecuteNonQuery
            cnn.conn.Close()
            lbl_f_reply.Visible = "True"
            lbl_f_reply.Text = ans & " Faculty Account Created Successfully..."

        Catch ex As Exception
            lbl_f_reply.Visible = "True"
            lbl_f_reply.Text = "Error : can't create Account."
        End Try

        'Sent Mail to Inform Id & Password

        Dim mail As MailMessage = New MailMessage()
        mail.To.Add(txt_f_mail.Text)

        mail.From = New MailAddress("rollwalaplacement@gmail.com")
        mail.Subject = "Your Login Id & Password"

        Dim body As String
        body = " Now, You are able to login your account with this Id & Password." & vbCrLf & vbCrLf & "Login ID : " & lbl_display_student_id.Text & vbCrLf & "Password : " & txt_password.Text
        mail.Body = body

        mail.IsBodyHtml = True

        Dim smtp As SmtpClient = New SmtpClient()

        smtp.Host = "smtp.gmail.com"
        smtp.Credentials = New System.Net.NetworkCredential("rollwalaplacement@gmail.com", "9408752770")
        smtp.EnableSsl = True
        Try
            smtp.Send(mail)
            lbl_f_reply_2.Visible = "True"
            lbl_f_reply_2.Text = "Messgaae sent"
        Catch ex As Exception
            lbl_f_reply_2.Visible = "True"
            lbl_f_reply_2.Text = "Error---> Server not Found, So You Can't send Mail. "
        End Try


        txt_f_name.Text = ""
        txt_f_pwd.Text = ""
        txt_f_mail.Text = ""

    End Sub
    Protected Sub btn_f_cancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_f_cancel.Click

        txt_f_name.Text = ""
        txt_f_pwd.Text = ""
        txt_f_mail.Text = ""
        lbl_f_reply.Text = ""
        lbl_f_reply_2.Text = ""

    End Sub
    Protected Sub btn_sa_pwd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_sa_pwd.Click
        Dim guid As String = ""
        Dim allowchars As String = " "
        allowchars = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"
        allowchars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z"
        allowchars += "1,2,3,4,5,6,7,8,9,0"

        Dim array() As String = allowchars.Split(New Char() {","c})
        Dim temp As String = ""
        Dim random As New Random()

        For i As Integer = 0 To 8
            temp = array(random.Next(0, array.Length))
            guid += temp
        Next
        txt_sa_pwd.Text = guid.ToString()
    End Sub
    Protected Sub btn_sa_register_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_sa_register.Click
        'connection For Id Generate'
        Try

            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str1 As String

            str1 = "select isnull(count(Login_Id),0) + 1 from Login where Type_of_Users = '" & "SA" & "' "

            Dim cmd1 As New SqlCommand(str1, connection.conn)
            Dim Id As Integer = DirectCast(cmd1.ExecuteScalar(), Int32)
            connection.conn.Close()

            'New Connection For Registration'

            Dim cnn As New ConnectionUtility
            cnn.Add_Conn()
            Dim str As String
            Dim ans As Integer
            str = "Insert into Login values('" & "SA_" & Id & "','" & txt_sa_uname.Text & "','" & txt_sa_pwd.Text & "','" & ddl_type_of_users.SelectedValue & "','" & True & "','" & True & "')"

            Dim cmd As New SqlCommand(str, cnn.conn)

            ans = cmd.ExecuteNonQuery
            cnn.conn.Close()
            lbl_sa_reply.Visible = "True"
            lbl_sa_reply.Text = ans & " SubAdmin Account Created Successfully..."

        Catch ex As Exception
            lbl_sa_reply.Visible = "True"
            lbl_sa_reply.Text = "Error : can't create Account."
        End Try

        'Sent Mail to Inform Id & Password

        Dim mail As MailMessage = New MailMessage()
        mail.To.Add(txt_sa_email.Text)

        mail.From = New MailAddress("rollwalaplacement@gmail.com")
        mail.Subject = "Your Login Id & Password"

        Dim body As String
        body = " Now, You are able to login your account with this Id & Password." & vbCrLf & vbCrLf & "Login ID : " & lbl_display_student_id.Text & vbCrLf & "Password : " & txt_password.Text
        mail.Body = body

        mail.IsBodyHtml = True

        Dim smtp As SmtpClient = New SmtpClient()

        smtp.Host = "smtp.gmail.com"
        smtp.Credentials = New System.Net.NetworkCredential("rollwalaplacement@gmail.com", "9408752770")
        smtp.EnableSsl = True
        Try
            smtp.Send(mail)
            lbl_sa_reply_2.Visible = "True"
            lbl_sa_reply_2.Text = "Messgaae sent"
        Catch ex As Exception
            lbl_sa_reply_2.Visible = "True"
            lbl_sa_reply_2.Text = "Error---> Server not Found, So You Can't send Mail. "
        End Try

        txt_sa_uname.Text = ""
        txt_sa_pwd.Text = ""
        txt_sa_email.Text = ""

    End Sub
    Protected Sub btn_sa_cancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_sa_cancel.Click
        txt_sa_uname.Text = ""
        txt_sa_pwd.Text = ""
        txt_sa_email.Text = ""
        lbl_sa_reply.Text = ""
        lbl_sa_reply_2.Text = ""
    End Sub
  
    Protected Sub btn_s_view_details_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_s_view_details.Click

        GridView1.Visible = True
        GridView1.DataSourceID = "SqlDataSource1"
    End Sub

    Protected Sub btn_f_view_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_f_view.Click
        GridView1.Visible = True
        GridView1.DataSourceID = "SqlDataSource2"

    End Sub

    Protected Sub btn_sa_view_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_sa_view.Click
       
        GridView1.Visible = True
        GridView1.DataSourceID = "SqlDataSource3"

    End Sub
End Class
