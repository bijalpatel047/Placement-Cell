Imports Microsoft.VisualBasic
Imports System.Data

Public Class Courses
    Dim connection As New ConnectionUtility


    Function Save_Data(ByVal str)
        Try
            connection.Add_Conn()
            connection.cmd.CommandText = str
            connection.cmd.CommandType = CommandType.Text
            connection.cmd.Connection = connection.conn
            connection.cmd.ExecuteNonQuery()
            connection.conn.Close()
            Return 0
            Exit Function
        Catch ex As Exception
            MsgBox(ex.Message)
            Exit Function
        End Try
    End Function

    Function Find_data(ByVal str)
        Try
            connection.Add_Conn()
            connection.cmd.Connection = connection.conn
            connection.cmd.CommandType = Data.CommandType.Text
            connection.cmd.CommandText = str
            connection.da.SelectCommand = connection.cmd
            connection.da.Fill(connection.dataTable)
            connection.cmd.ExecuteNonQuery()
            connection.conn.Close()
            Return connection.dataTable
            Exit Function
        Catch ex As Exception
            Return 0
            MsgBox("gfgfgfgrf" + ex.Message)
            Exit Function
        End Try
    End Function
End Class
