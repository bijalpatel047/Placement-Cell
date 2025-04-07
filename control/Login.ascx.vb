
Partial Class Login
    Inherits System.Web.UI.UserControl

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        If ValidateMe() Then
            LoginCheck()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not IsPostBack Then
                lblMessage.Text = ""
                If Session("CandidateId") IsNot Nothing Then
                    ViewState("CandiadateId") = Session("CandidateId")
                    tblLogin.Visible = False
                    tblLogout.Visible = True
                    lblStatus.Text = "Welcome, " & ViewState("CandiadateId")
                Else
                    ViewState("CandiadateId") = Nothing
                    tblLogin.Visible = True
                    tblLogout.Visible = False
                End If
            End If

           

        Catch ex As Exception

        End Try
        
    End Sub

    'Protected Sub lnkLogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles lnkLogout.Click
    '    Response.Redirect("Logout.aspx")
    'End Sub

    Public Function ValidateMe() As Boolean
        Dim strError As String = ""

        If txtEmailId.Text.Trim = "" Then
            strError = strError & rfvEmailId.ErrorMessage & "<br>"
        ElseIf IsNumeric(txtEmailId.Text.Trim) Then
            strError = strError & "Please enter valid email id.<br>"
        End If

        If strError <> "" Then
            lblMessage.Text = strError
            Return False
        Else
            Return True
        End If
    End Function

    Public Sub LoginCheck()
        Try
            Dim daLogin As New ds_LoginTableAdapters.MemberTableAdapter
            Dim dtLogin As New ds_Login.MemberDataTable
            Dim drLogin As ds_Login.MemberRow
            dtLogin = daLogin.GetDataByLogin(txtEmailId.Text.Trim, txtPassword.Text.Trim)
            If dtLogin IsNot Nothing Then
                If dtLogin.Rows.Count > 0 Then
                    drLogin = dtLogin.Rows(0)
                    If drLogin.IsActive = False Then
                        lblMessage.Text = "Your membership is not active.<br>"
                    ElseIf drLogin.IsBlocked = True Then
                        lblMessage.Text = "Your membership is blocked.<br>"
                    Else
                        Session("CandidateId") = drLogin.EmailId
                        Session("MemberId") = drLogin.MemberId
                        Response.Redirect("~/Candidate/Home.aspx")
                    End If
                Else
                    lblMessage.Text = "Email id and password is not valid.<br>"
                End If
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
