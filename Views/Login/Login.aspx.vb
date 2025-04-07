Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports System.IO

Partial Class Views_Master_Default
    Inherits System.Web.UI.Page

    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        'Try
        Dim connection As New ConnectionUtility
        connection.Add_Conn()

        Dim str As String
        Dim ans As Integer

        str = "Select Count(Login_Id) from Login where Login_Id='" & Login1.UserName.ToString & "' and Password='" & Login1.Password.ToString & "'"
        Dim cmd As New SqlCommand(str, connection.conn)

        ans = cmd.ExecuteScalar()

        If ans > 0 Then
            e.Authenticated = True
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, False)
            If Login1.UserName.ToString Like "MCA*" Then
                Session("ID") = Login1.UserName
                Response.Redirect("~/Views/Home/Welcome_Student.aspx")
            ElseIf Login1.UserName.ToString Like "PGDCSA*" Then
                Session("ID") = Login1.UserName
                Response.Redirect("~/Views/Home/Welcome_Student.aspx")
            ElseIf Login1.UserName.ToString Like "PGDNA*" Then
                Session("ID") = Login1.UserName
                Response.Redirect("~/Views/Home/Welcome_Student.aspx")
            ElseIf Login1.UserName.ToString Like "MTECH_WEB*" Then
                Session("ID") = Login1.UserName
                Response.Redirect("~/Views/Home/Welcome_Student.aspx")
            ElseIf Login1.UserName.ToString Like "MTECH_NT*" Then
                Session("ID") = Login1.UserName
                Response.Redirect("~/Views/Home/Welcome_Student.aspx")
            ElseIf Login1.UserName.ToString = "Admin" Then
                Session("ID") = Login1.UserName
                Response.Redirect("../../Views/Home/Welcome_admin.aspx")
            ElseIf Login1.UserName.ToString Like "SA_*" Then
                Session("ID") = Login1.UserName
                Response.Redirect("~/Views/Home/Welcome_SubAdmin.aspx")
            ElseIf Login1.UserName.ToString Like "F_*" Then
                Session("ID") = Login1.UserName
                Response.Redirect("~/Views/Home/Welcome_Faculty.aspx")
            Else
                MsgBox("Invlaid UserName Or Password...")

            End If
        Else
            e.Authenticated = False
        End If
        connection.conn.Close()
        'Catch ex As Exception
        '    MsgBox(ex.ToString)
        'Finally

        'End Try

    End Sub
End Class
