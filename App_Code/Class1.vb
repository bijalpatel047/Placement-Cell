Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel

Public Class Login

    Private Login_Id As Integer
    Private Password As Integer
    Private Type_of_Users As Integer
    Private Is_Active As Integer
    Private Is_Registered As Integer




    Public Sub AddRecords()

    End Sub

    Public Sub RemoveRecords()

    End Sub

    Public Sub GetRecords()

    End Sub

    Public Sub EditRecords()

    End Sub


End Class

Public Class Course
    Inherits Batch

    Private Course_Code As Integer
    Private Course_Name As Integer
    Private Semesters As Integer
    Private No_of_Students As Integer
    Private Is_Active As Integer

    Public Sub AddCourse()

    End Sub

    Public Sub RemoveCourse()

    End Sub

    Public Sub GetCourse()

    End Sub

    Public Sub EditCourse()

    End Sub
End Class

Public Class Batch

    Private Batch_Id As Integer
    Private Course_Code As Integer
    Private Batch_Year As Integer

    Public Sub AddBatch()

    End Sub

    Public Sub RemoveBatch()

    End Sub

    Public Sub EditBatch()

    End Sub
End Class

Public Class Student

    Private Login_Id As Integer
    Private Batch_Year As Integer
    Private Mobile_No As Integer
    Private SSC_Board As Integer
    Private HSC_Percentage As Integer
    Private HSC_Board As Integer
    Private field6 As Integer
    Private field7 As Integer
    Private field8 As Integer
    Private field9 As Integer
    Private Course_Code As Integer
    Private First_Name As Integer
    Private Middle_Name As Integer
    Private Last_Name As Integer
    Private Gender As Integer
    Private Pin_Code As Integer
    Private City As Integer
    Private State As Integer
    Private Area_Code As Integer
    Private Resident_No As Integer
    Private E_Mail As Integer
    Private Birth_Date As Integer
    Private SSC_Percentage As Integer
End Class
