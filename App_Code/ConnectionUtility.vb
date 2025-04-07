Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data

Public Class ConnectionUtility
    Public conn As New SqlConnection
    Public da As New SqlDataAdapter
    Public cmd As New SqlCommand
    Dim reader As SqlDataReader
    Public ds As New DataSet
    Public dataTable As DataTable

    Public Function Add_Conn()
        conn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=E:\Placement1_SHRUTI\App_Data\Database.mdf;Integrated Security=True;User Instance=True"
        conn.Open()
        Return 0
    End Function
End Class
