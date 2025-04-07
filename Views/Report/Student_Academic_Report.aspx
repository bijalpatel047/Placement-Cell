<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Student_Academic_Report.aspx.vb" Inherits="Views_Report_Student_Academic_Report" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <table style="width: 70%">
        <tr>
            <td style="height: 27px; width: 132px;">
                &nbsp;Select Course&nbsp;</td>
            <td style="height: 27px">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Course_Code" 
                    DataValueField="Course_Code">
                </asp:DropDownList>
            </td>
            <td style="height: 27px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Course_Code] FROM [Student_Personal_Details]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 132px">
                &nbsp;Select Batch Year&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Batch_Year" 
                    DataValueField="Batch_Year">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Student_Personal_Details]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Student_Academic_Details] WHERE (([Login_Id] LIKE '%' + @Login_Id + '%') AND ([Login_Id] LIKE '%' + @Login_Id2 + '%'))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Login_Id" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="Login_Id2" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <%--<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Login_Id" 
        DataSourceID="SqlDataSource3" CssClass ="table">
       
--%>        <asp:GridView ID="GridView1" runat="server" 
                AllowSorting="True" AutoGenerateColumns="False" CssClass="table" 
                DataSourceID="SqlDataSource3" 
                CellPadding="4" ForeColor="#333333" GridLines="None" >
                <RowStyle BackColor="#EFF3FB" />
           
        <Columns>
        
            <asp:BoundField DataField="Login_Id" HeaderText="Login_Id" ReadOnly="True" 
                SortExpression="Login_Id" />
            <asp:BoundField DataField="Semester_1" HeaderText="Semester_1" 
                SortExpression="Semester_1" />
            <asp:BoundField DataField="Semester_2" HeaderText="Semester_2" 
                SortExpression="Semester_2" />
            <asp:BoundField DataField="Semester_3" HeaderText="Semester_3" 
                SortExpression="Semester_3" />
            <asp:BoundField DataField="Semester_4" HeaderText="Semester_4" 
                SortExpression="Semester_4" />
            <asp:BoundField DataField="Semester_5" HeaderText="Semester_5" 
                SortExpression="Semester_5" />
            <asp:BoundField DataField="Semester_6" HeaderText="Semester_6" 
                SortExpression="Semester_6" />
        </Columns>
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
           
    </asp:GridView>
    <br />
    
    </form>
</asp:Content>

