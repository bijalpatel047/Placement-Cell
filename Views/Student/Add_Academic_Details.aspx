<%@ Page Language="VB" MasterPageFile="~/Views/Master/Student.master" AutoEventWireup="false" CodeFile="Add_Academic_Details.aspx.vb" Inherits="Views_Student_Add_Academic_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                <fieldset >
                <legend> <h2> Add Your Academic Details</h2></legend>
                    <table style="width: 70%">
                        <tr>
                            <td>
                                &nbsp;Semester 1&nbsp;</td>
                            <td>
                                <asp:TextBox ID="txt_semester_1" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Semester 2</td>
                            <td>
                                <asp:TextBox ID="txt_semester_2" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Semester 3</td>
                            <td>
                                <asp:TextBox ID="txt_semester_3" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Semester 4</td>
                            <td>
                                <asp:TextBox ID="txt_semester_4" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Semester 5</td>
                            <td>
                                <asp:TextBox ID="txt_semester_5" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Semester 6</td>
                            <td>
                                <asp:TextBox ID="txt_semester_6" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Button ID="btn_insert" runat="server" Text="Insert" Width="100px" CssClass ="btn btn-primary"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Width="100px" CssClass ="btn btn-success"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lbl_reply" runat="server" Text="Status" Visible="False"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    </fieldset>
                </ContentTemplate>
            </asp:UpdatePanel>
            
            </form>
</asp:Content>

