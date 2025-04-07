Imports System.Data.SqlClient
Partial Class Views_Company_Company_Selection_Procedure
    Inherits System.Web.UI.Page

    Protected Sub btnInsert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnInsert.Click
        Try

            Dim cnn As New ConnectionUtility
            cnn.Add_Conn()
            Dim str As String
            Dim ans As Integer
            str = "INSERT INTO Selection_Procedure VALUES ('" & ddlArrivalId.SelectedValue & "' , '" & ddlCompanyName.SelectedValue & "' , " & txtSSCPercentageCriteria.Text & " , " & txtHSCPercentageCriteria.Text & " , '" & chkAptitudeTest.Checked & "' , '" & txtAptitudeTestDescription.Text & "' , '" & chkTechnicalTest.Checked & "', '" & txtTech_Test_Des.Text & "', '" & chkHRInterview.Checked & "','" & txtHR_Int_Dec.Text & "')"
            Dim cmd As New SqlCommand(str, cnn.conn)
            ans = cmd.ExecuteNonQuery
            cnn.conn.Close()
            lbl_reply.Visible = True
            lbl_reply.Text = ans & " Record Add successfully"
            GridView1.DataBind()
        Catch ex As Exception
            lbl_reply.Visible = True
            lbl_reply.Text = "Error : Can not add, please try later.. "
        End Try

        ddlArrivalId.SelectedValue = ddlArrivalId.Items.Item(0).Text
        ddlCompanyName.SelectedValue = ddlCompanyName.Items.Item(0).Text
        chkAptitudeTest.Checked = True
        chkTechnicalTest.Checked = True
        chkHRInterview.Checked = True
        txtHSCPercentageCriteria.Text = ""
        txtSSCPercentageCriteria.Text = ""
        txtAptitudeTestDescription.Text = ""
        txtTech_Test_Des.Text = ""
        txtHR_Int_Dec.Text = ""



    End Sub

    Protected Sub btnCancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnCancel.Click
        ddlArrivalId.SelectedValue = ddlArrivalId.Items.Item(0).Text
        ddlCompanyName.SelectedValue = ddlCompanyName.Items.Item(0).Text
        chkAptitudeTest.Checked = True
        chkTechnicalTest.Checked = True
        chkHRInterview.Checked = True
        txtHSCPercentageCriteria.Text = ""
        txtSSCPercentageCriteria.Text = ""
        txtAptitudeTestDescription.Text = ""
        txtTech_Test_Des.Text = ""
        txtHR_Int_Dec.Text = ""

    End Sub
End Class