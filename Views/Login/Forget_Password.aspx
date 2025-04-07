<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Forget_Password.aspx.vb" Inherits="Views_Login_Forget_Password" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           <fieldset > 
           <legend> <h2 > Password Recovery </h2></legend>
            <table>
                <tr>
                    <td style="width: 149px">
                        <b>&nbsp;&nbsp; Your Login ID</b></td>
                    <td style="width: 459px">
                        <asp:TextBox ID="txt_login_id" runat="server" Height="30px" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 149px">
                        <b>&nbsp;&nbsp; Your Email</b>
                    </td>
                    <td style="width: 459px">
                        <asp:TextBox ID="txt_email" runat="server" Height="30px" Width="170px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 149px">
                        &nbsp;</td>
                    <td style="width: 459px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;
                        <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" 
                            Text="Submit" Width="100px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_cancel" runat="server" CssClass="btn btn-success" 
                            Text="Cancel" Width="100px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        &nbsp;&nbsp;
                        <asp:Label ID="lbl_reply" runat="server" Text="Status" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>

