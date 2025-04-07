Imports System.Data.SqlClient
Partial Class Views_Master_Admin
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str1 As String
            str1 = "Select User_Name From Login where Login_Id= '" & Session("ID") & "'"
            Dim cmd1 As New SqlCommand(str1, connection.conn)
            Dim dr As SqlDataReader

            dr = cmd1.ExecuteReader()
            While dr.Read
                lbl_user_name.Text = dr.Item(0)
            End While
            connection.conn.Close()

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally

        End Try

        'If (Session("ID") Is Nothing) Then
        '    Response.Redirect("~/Views/Login/Login.aspx")

        'End If

        'If Not (Session("ID") Is Nothing) Then

        '    If Not (Session("ID").Equals("Admin")) Or Not (Session("ID") Like "SA_*") Then
        '        Response.Redirect("~/Views/Login/Login.aspx")

        '    End If
        'End If



    End Sub

    'Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_search.Click
    '    Dim tmpcookies As New HttpCookie("VisitUser")

    '    tmpcookies.Values("keyword") = txt_search.Text
    '    tmpcookies.Values("option") = ddl_search.SelectedValue
    '    tmpcookies.Expires = DateAndTime.Now.AddHours(1)

    '    Response.Cookies.Add(tmpcookies)

    '    Response.Redirect("../../Views/Home/Welcome_admin.aspx")

    'End Sub


    Protected Sub LogOut_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        If Not (Session Is Nothing) Then
            MsgBox("Session is not null")
            Session.Clear()
            Session.Abandon()
            Session.Remove("ID")
            'Response.Redirect("Login.aspx")

        End If

    End Sub
End Class

