<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Login.ascx.vb" Inherits="Login" %>
<table bgcolor="#d3e8fd" id="tblLogin" runat="server" class="tblLoginAllBorder" cellpadding="0"
    cellspacing="0">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMessage" runat="server" ForeColor="red" Font-Bold="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right" colspan="2" class="tblLoginBottonBorder">
            <asp:HyperLink ID="hlnkRegistration" runat="server" ForeColor="Black" NavigateUrl="~/Candidate/Register.aspx">Not Register yet?</asp:HyperLink>&nbsp;|
            <asp:HyperLink ID="hlnkForgotPassword" runat="server" ForeColor="Black" NavigateUrl="~/Candidate/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right">
            Email Id<asp:RequiredFieldValidator ID="rfvEmailId" runat="server" ControlToValidate="txtEmailId"
                ErrorMessage="Please enter email id." ValidationGroup="Login">*</asp:RequiredFieldValidator></td>
        <td>
            <asp:TextBox ID="txtEmailId" runat="server">user@user.com</asp:TextBox><asp:RegularExpressionValidator
                ID="revEmailid" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Please enter valid email id."
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td align="right" class="tblLoginMiddleBottonBorder">
            Password<asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Please enter password." ValidationGroup="Login">*</asp:RequiredFieldValidator>
        </td>
        <td class="tblLoginMiddleBottonBorder">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr class="tblLoginBottonBorder">
        <td colspan="2" align="center" class="trButtonBack">
            <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="Login" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="vsLogin" runat="server" ShowMessageBox="True" ShowSummary="False"
                ValidationGroup="Login"></asp:ValidationSummary>
        </td>
    </tr>
</table>
<table id="tblLogout" runat="server">
    <tr>
        <td>
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
            |
            <asp:HyperLink ID="hlnkChangePassword" runat="server" NavigateUrl="~/Candidate/ChangePassword.aspx"
                ForeColor="Black">Change Password</asp:HyperLink>
            |
            <asp:HyperLink ID="hlnk" runat="server" NavigateUrl="~/Candidate/ExamLogin.aspx">Login for Exam</asp:HyperLink>
            |
            <asp:HyperLink ID="hlnkSubscribedDetails" runat="server" NavigateUrl="~/Candidate/SubscribeDetails.aspx">Subscribed Details</asp:HyperLink>
            |
            <asp:HyperLink ID="hlnkLogout" runat="server" NavigateUrl="~/Candidate/Logout.aspx">Logout</asp:HyperLink>
        </td>
    </tr>
</table>
