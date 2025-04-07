Imports System.Data.SqlClient
Partial Class Company_Registration

    Inherits System.Web.UI.Page
    Protected Sub Wizard_company_registration_FinishButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles Wizard_company_registration.FinishButtonClick
        Try
            Dim connection As New ConnectionUtility
            connection.Add_Conn()
            Dim str1, str2 As String
            Dim ans1 As Integer

            str1 = "select  isnull(count(Company_Id),0) + 1 from Company_Details"

            Dim cmd1 As New SqlCommand(str1, connection.conn)
            Dim Id As Integer = DirectCast(cmd1.ExecuteScalar(), Int32)
            connection.conn.Close()

            'New Connection'

            Dim cnn As New ConnectionUtility
            cnn.Add_Conn()

            str2 = "Insert into Company_Details values('" & "C_" & Id & "','" & txt_com_name.Text & "','" & txt_com_dec.Text & "','" & txt_com_state.Text & "','" & txt_city.Text & "','" & txt_com_pincode.Text & "','" & txt_com_phoneno.Text & "','" & txt_com_email.Text & "','" & txt_com_website.Text & "','" & txt_contact_name.Text & "','" & txt_contact_designation.Text & "','" & txt_contact_email.Text & "','" & txt_contact_mobile.Text & "','" & txt_com_add_info.Text & "')"

            Dim cmd As New SqlCommand(str2, cnn.conn)

            ans1 = cmd.ExecuteNonQuery
            cnn.conn.Close()
            MsgBox("All Details inserted successfully in Company Table" & ans1)

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try


        txt_com_name.Text = ""
        txt_com_dec.Text = ""
        txt_com_add_info.Text = ""
        txt_com_state.Text = ""
        txt_city.Text = ""
        txt_com_pincode.Text = ""
        txt_com_phoneno.Text = ""
        txt_com_email.Text = ""
        txt_com_website.Text = ""
        txt_contact_name.Text = ""
        txt_contact_designation.Text = ""
        txt_contact_email.Text = ""
        txt_contact_mobile.Text = ""

    End Sub

    Protected Sub Wizard_company_registration_CancelButtonClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles Wizard_company_registration.CancelButtonClick

        txt_com_name.Text = ""
        txt_com_dec.Text = ""
        txt_com_add_info.Text = ""
        txt_com_state.Text = ""
        txt_city.Text = ""
        txt_com_pincode.Text = ""
        txt_com_phoneno.Text = ""
        txt_com_email.Text = ""
        txt_com_website.Text = ""
        txt_contact_name.Text = ""
        txt_contact_designation.Text = ""
        txt_contact_email.Text = ""
        txt_contact_mobile.Text = ""

    End Sub

End Class
