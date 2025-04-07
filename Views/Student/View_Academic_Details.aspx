<%@ Page Language="VB" MasterPageFile="~/Views/Master/Student.master" AutoEventWireup="false" CodeFile="View_Academic_Details.aspx.vb" Inherits="Views_Student_Academic_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <fieldset > 
        <legend> <h2> Your Academic Details</h2></legend>
            <table cellpadding="4" cellspacing="8" style="width: 315px">
                <tr>
                    <td style="width: 85px">
                        Login Id</td>
                    <td style="width: 206px">
                        <asp:TextBox ID="txt_Login_Id" runat="server" ReadOnly="True" 
                            ToolTip="Can not change.." Width="130px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">
                        &nbsp; Semester 1</td>
                    <td style="width: 206px">
                        <asp:TextBox ID="txt_sem_1" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">
                        &nbsp; Semester 2</td>
                    <td style="width: 206px">
                        <asp:TextBox ID="txt_sem_2" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">
                        &nbsp; Semester 3</td>
                    <td style="width: 206px">
                        <asp:TextBox ID="txt_sem_3" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">
                        &nbsp; Semester 4</td>
                    <td style="width: 206px">
                        <asp:TextBox ID="txt_sem_4" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">
                        &nbsp; Semester 5</td>
                    <td style="width: 206px">
                        <asp:TextBox ID="txt_sem_5" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">
                        &nbsp; Semester 6</td>
                    <td style="width: 206px">
                        <asp:TextBox ID="txt_sem_6" runat="server" Width="100px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">
                        &nbsp;</td>
                    <td style="width: 206px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn_view" runat="server" CssClass="btn btn-danger" Text="View" 
                            Width="80px" />
                        &nbsp;&nbsp;
                        <asp:Button ID="btn_update" runat="server" CssClass="btn btn-primary" 
                            Text="Update" Width="80px" />
                        &nbsp;&nbsp;
                        <asp:Button ID="btn_cancel" runat="server" CssClass="btn btn-success" 
                            Text="Cancel" Width="80px" />
                    </td>
                </tr>
            </table>
            </fieldset>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;<asp:Label ID="lbl_reply" runat="server" Text="Status" Visible="False"></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>

