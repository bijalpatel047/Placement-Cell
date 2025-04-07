Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.SqlClient
Imports System.Data
Imports System.Configuration
Namespace GridTest.examples.editing_data.edit_add_delete
    Partial Public Class _default
        Inherits System.Web.UI.Page
        Dim courses As Courses = New Courses

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
            JQGrid1.DataSource = GetData()
            JQGrid1.DataBind()
        End Sub
        Protected Sub JQGrid1_RowAdding(ByVal sender As Object, ByVal e As Trirand.Web.UI.WebControls.JQGridRowAddEventArgs)
            Dim dt As DataTable = GetData()
            Dim row As DataRow = dt.NewRow()
            ' row("CustomerID") = "NEW" + dt.Rows.Count.ToString()
            row("Course_Code") = e.RowData("Course_Code")
            row("Course_Name") = e.RowData("course_Name")
            row("Semesters") = e.RowData("Semesters")
            row("No_of_Student") = e.RowData("No_of_Student")
            row("Is_Active") = e.RowData("Is_Active")

            Dim flag As Integer
            If (row("Is_Active").ToString = "True" Or row("Is_Active").ToString = "true") Then
                flag = 1
            Else
                flag = 0
            End If
            Dim sqlStatement As String = "INSERT INTO Courses VALUES ('" & row("Course_Code").ToString() & "' , '" & row("course_Name").ToString() & "' , " & row("Semesters").ToString() & " , " & row("No_of_Student").ToString & " , " & flag & ")"
            'MsgBox(sqlStatement)
            Dim obj As Integer = courses.Save_Data(sqlStatement)
            If obj = 0 Then
                dt.Rows.InsertAt(row, 0)
                JQGrid1.DataSource = dt
                JQGrid1.DataBind()
            Else
                JQGrid1.ShowEditValidationMessage("Could not Able to Insert this row")
            End If
            
        End Sub
        Protected Sub JQGrid1_RowEditing(ByVal sender As Object, ByVal e As Trirand.Web.UI.WebControls.JQGridRowEditEventArgs)
            Dim dt As DataTable = GetData()
            dt.PrimaryKey = New DataColumn() {dt.Columns("Course_Code")}
            Dim rowEdited As DataRow = dt.Rows.Find(e.RowKey)
            rowEdited("course_Name") = e.RowData("course_Name")
            rowEdited("Semesters") = e.RowData("Semesters")
            rowEdited("No_of_Student") = e.RowData("No_of_Student")
            rowEdited("Is_Active") = e.RowData("Is_Active")
            Try

                Dim flag As Integer
                If (rowEdited("Is_Active").ToString = "True" Or rowEdited("Is_Active").ToString = "true") Then
                    flag = 1
                Else
                    flag = 0  ' Course_Code = '" & rowEdited("Course_Code").ToString() & "' ,
                End If
                Dim sqlStatement As String = "UPDATE Courses SET course_Name = '" & rowEdited("course_Name").ToString() & "' , Semesters = " & rowEdited("Semesters").ToString() & " , No_of_Student= " & rowEdited("No_of_Student").ToString & " , Is_Active = " & flag & " WHERE Course_Code = '" & rowEdited("Course_Code").ToString() & "'"
                'MsgBox(sqlStatement)
                Dim obj As Integer = courses.Save_Data(sqlStatement)
                If obj = 0 Then
                    JQGrid1.DataSource = GetData()
                    JQGrid1.DataBind()
                Else
                    JQGrid1.ShowEditValidationMessage("Could not Able to UPDATE this row")
                End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
            ' Str = row("Course_Code").ToString





        End Sub
        Protected Sub JQGrid1_RowDeleting(ByVal sender As Object, ByVal e As Trirand.Web.UI.WebControls.JQGridRowDeleteEventArgs)

            Try

                'If True Then
                '    JQGrid1.ShowEditValidationMessage("Cannot delete this row")
                'End If

                Dim dt As DataTable = GetData()
                dt.PrimaryKey = New DataColumn() {dt.Columns("Course_Code")}
                Dim rowToDelete As DataRow = dt.Rows.Find(e.RowKey)

                Dim sqlStatement As String = "DELETE Courses WHERE Course_Code = '" & rowToDelete("Course_Code").ToString & "'"
                courses.Save_Data(sqlStatement)
                dt.Rows.Remove(rowToDelete)

                JQGrid1.DataSource = GetData()
                JQGrid1.DataBind()

            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End Sub
        Protected Function GetData() As DataTable
            Try


                ''If Session("EditDialogData") Is Nothing Then
                ''Dim sqlConnection As New SqlConnection()
                Dim connection As New ConnectionUtility
                connection.Add_Conn()

                'MsgBox("Hello - - - - - - - ")
                Dim sqlStatement As String = "SELECT * FROM Courses"
                Dim sqlDataAdapter As New SqlDataAdapter(sqlStatement, connection.conn)
                Dim dtResult As New DataTable()
                sqlDataAdapter.Fill(dtResult)
                Session("EditDialogData") = dtResult
                Return dtResult
                '' Else
                '' Return TryCast(Session("EditDialogData"), DataTable)
                '' End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End Function

        Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click

            Dim flag As Integer
            If (chkIsActive.Checked = True) Then
                flag = 1
            Else
                flag = 0
            End If
            Dim sqlStatement As String = "INSERT INTO Courses VALUES ('" & txtCourseCode.Text & "' , '" & txtCourseName.Text & "' , " & txtSemesters.Text & " , " & txtNoOfStudent.Text & " , " & flag & ")"
            'MsgBox(sqlStatement)
            Dim obj As Integer = courses.Save_Data(sqlStatement)


            JQGrid1.DataSource = GetData()
            JQGrid1.DataBind()

            txtCourseCode.Text = ""
            txtCourseName.Text = ""
            txtSemesters.Text = ""
            txtNoOfStudent.Text = ""
            chkIsActive.Checked = "True"

        End Sub

        Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
            txtCourseCode.Text = ""
            txtCourseName.Text = ""
            txtSemesters.Text = ""
            txtNoOfStudent.Text = ""
            chkIsActive.Checked = "True"

        End Sub

    End Class
End Namespace

