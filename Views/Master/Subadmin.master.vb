Imports System.Data.SqlClient
Partial Class Views_Master_Subadmin
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
            MsgBox(ex.ToString)
        Finally

        End Try

        'If (Session("ID") Is Nothing) Then
        '    Response.Redirect("/Placement1_SHRUTI//Views/Login/Login.aspx")
        'End If

        'If Not (Session("ID") Is Nothing) Then

        '    If Not (Session("ID") Like "SA_*") Then
        '        Response.Redirect("/Placement1_SHRUTI//Views/Login/Login.aspx")
        '    End If
        'End If


    End Sub
End Class

