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
Namespace GridTest.examples.editing_data.edit_add_delete
    Partial Public Class _default
        Inherits System.Web.UI.Page
        Dim BatchMaster As Courses = New Courses
        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            JQGrid1.DataSource = GetData()
            JQGrid1.DataBind()
        End Sub
        Protected Sub JQGrid1_RowAdding(ByVal sender As Object, ByVal e As Trirand.Web.UI.WebControls.JQGridRowAddEventArgs)
            Dim dt As DataTable = GetData()
            Dim row As DataRow = dt.NewRow()
            ' row("CustomerID") = "NEW" + dt.Rows.Count.ToString()
            row("Batch_Id") = e.RowData("Batch_Id")
            row("Course_Code") = e.RowData("Course_Code")
            row("Batch_Year") = e.RowData("Batch_Year")
            ''row("City") = e.RowData("City")
            Dim sqlStatement As String = "INSERT INTO Batch_Master VALUES ('" & row("Batch_Id").ToString() & "' , '" & row("Course_Code").ToString() & "' , " & row("Batch_Year").ToString() & ")"
            'MsgBox(sqlStatement)
            Dim obj As Integer = BatchMaster.Save_Data(sqlStatement)
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
            dt.PrimaryKey = New DataColumn() {dt.Columns("Batch_Id")}
            Dim rowEdited As DataRow = dt.Rows.Find(e.RowKey)
            rowEdited("Course_Code") = e.RowData("Course_Code")
            rowEdited("Batch_Year") = e.RowData("Batch_Year")
            'rowEdited("PostalCode") = e.RowData("PostalCode")
            'rowEdited("City") = e.RowData("City")
            ''Dim flag As Integer
            ''If (rowEdited("Is_Active").ToString = "True" Or rowEdited("Is_Active").ToString = "true") Then
            '' flag = 1
            ''Else
            ''flag = 0  ' Course_Code = '" & rowEdited("Course_Code").ToString() & "' ,
            ''End If
            Dim sqlStatement As String = "UPDATE Batch_Master SET Course_Code = '" & rowEdited("Course_Code").ToString() & "' , Batch_Year = " & rowEdited("Batch_Year") & " WHERE Batch_Id = '" & rowEdited("Batch_Id").ToString() & "'"
            'MsgBox(sqlStatement)
            Dim obj As Integer = BatchMaster.Save_Data(sqlStatement)
            If obj = 0 Then
                JQGrid1.DataSource = GetData()
                JQGrid1.DataBind()
            Else
                JQGrid1.ShowEditValidationMessage("Could not Able to UPDATE this row")
            End If
        End Sub
        Protected Sub JQGrid1_RowDeleting(ByVal sender As Object, ByVal e As Trirand.Web.UI.WebControls.JQGridRowDeleteEventArgs)

            Try

                ' If True Then
                'JQGrid1.ShowEditValidationMessage("Cannot delete this row")
                'End If

                Dim dt As DataTable = GetData()
                dt.PrimaryKey = New DataColumn() {dt.Columns("Batch_Id")}
                Dim rowToDelete As DataRow = dt.Rows.Find(e.RowKey)

                Dim sqlStatement As String = "DELETE FROM Batch_Master WHERE Batch_Id = '" & rowToDelete("Batch_Id").ToString & "'"
                BatchMaster.Save_Data(sqlStatement)
                dt.Rows.Remove(rowToDelete)

                JQGrid1.DataSource = GetData()
                JQGrid1.DataBind()

            Catch ex As Exception
                MsgBox(ex.Message)
            End Try


        End Sub
        Protected Function GetData() As DataTable
            Try


                '' If Session("EditDialogData") Is Nothing Then
                ''Dim sqlConnection As New SqlConnection()
                Dim connection As New ConnectionUtility
                connection.Add_Conn()

                'MsgBox("Hello - - - - - - - ")
                'sqlConnection.ConnectionString = ConfigurationManager.ConnectionStrings("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True").ConnectionString
                'sqlConnection.Open()

                Dim sqlStatement As String = "SELECT Batch_Id, Course_Code, Batch_Year FROM Batch_Master"
                Dim sqlDataAdapter As New SqlDataAdapter(sqlStatement, connection.conn)
                Dim dtResult As New DataTable()
                sqlDataAdapter.Fill(dtResult)
                Session("EditDialogData") = dtResult ''ExportToPDF(dtResult)
                Return dtResult
                '' Else
                ''Return TryCast(Session("EditDialogData"), DataTable)
                ''End If
            Catch ex As Exception
                MsgBox(ex.Message)
            End Try
        End Function

        Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click
            'ID Create'
            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str1 As String

            str1 = "select  isnull(count(Batch_Id),0) + 1 from Batch_Master"

            Dim cmd1 As New SqlCommand(str1, connection.conn)
            Dim Id As Integer = DirectCast(cmd1.ExecuteScalar(), Int32)
            connection.conn.Close()

            'Insert Values'

            Dim sqlStatement As String = "INSERT INTO Batch_Master VALUES ('" & "B_" & Id & "' , '" & ddlCourseCode.SelectedValue & "' , " & txtBatchYear.Text & ")"

            Dim obj As Integer = BatchMaster.Save_Data(sqlStatement)


            JQGrid1.DataSource = GetData()
            JQGrid1.DataBind()

            txtBatchId.Text = ""
            ddlCourseCode.SelectedValue = ddlCourseCode.Items.Item(0).Text
            txtBatchYear.Text = ""

        End Sub



        Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
            txtBatchId.Text = ""
            ddlCourseCode.SelectedValue = ddlCourseCode.Items.Item(0).Text
            txtBatchYear.Text = ""
        End Sub
    End Class
End Namespace

