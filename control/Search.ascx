<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Search.ascx.vb" Inherits="control_Search" %>
<table class="tablemain" cellpadding="0" cellspacing="0" width="100%" border="0">
    <tr width="100%">
        <td align="right">
            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            <asp:DropDownList ID="ddlCourse" runat="server" Width="200">
            </asp:DropDownList>
            <%--<asp:Button ID="btngo" runat="server" Text="Search" CssClass="tdbutton" ValidationGroup="Search" />--%>
            <asp:ImageButton ID="imgbtnSearch" runat="server" ImageUrl="~/Images/upbar_search.gif" />
        </td>
    </tr>
</table>
