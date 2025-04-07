<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Project_Offered_Student_List.aspx.vb" Inherits="Views_Report_Project_Offered_Student_List" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   <ContentTemplate>
    <table style="width: 70%">
        <tr>
            <td style="width: 116px">
                &nbsp;Student List By &nbsp;</td>
            <td>
                <asp:DropDownList ID="ddl_placement_Details" runat="server" AutoPostBack="True">
                    <asp:ListItem>Project Offered</asp:ListItem>
                    <asp:ListItem>Job Offered</asp:ListItem>
                    <asp:ListItem>Both</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 116px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT Placements.Letter_Issued_Date, Placements.Salary, Placements.Project_Offered, Placements.Date_of_Join, Placements.Designation, Placements.Stipend, Placements.Remark, Placements.Login_Id, Student_Personal_Details.First_Name, Student_Personal_Details.Last_Name, Student_Personal_Details.Gender FROM Placements INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id WHERE (Placements.Project_Offered = @Project_Offered)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="Project_Offered" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT Placements.Login_Id, Student_Personal_Details.First_Name, Student_Personal_Details.Last_Name, Student_Personal_Details.Gender, Placements.Letter_Issued_Date, Placements.Salary, Placements.Designation, Placements.Date_of_Join, Placements.Project_Offered, Placements.Stipend, Placements.Remark FROM Placements INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id WHERE (Placements.Salary_Offered = @Salary_Offered)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="" Name="Salary_Offered" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT Placements.Login_Id, Student_Personal_Details.First_Name, Student_Personal_Details.Last_Name, Student_Personal_Details.Gender, Placements.Letter_Issued_Date, Placements.Salary, Placements.Designation, Placements.Date_of_Join, Placements.Project_Offered, Placements.Stipend, Placements.Remark FROM Placements INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id WHERE (Placements.Project_Offered = @Project_Offered) AND (Placements.Salary_Offered = @Salary_Offered)">
                    <SelectParameters>
                        <asp:Parameter Name="Project_Offered" />
                        <asp:Parameter Name="Salary_Offered" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
        <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
           AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass ="table" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="Login_Id" HeaderText="Login_Id" 
                            SortExpression="Login_Id" />
                        <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                            SortExpression="First_Name" />
                        <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                            SortExpression="Last_Name" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Letter_Issued_Date" DataFormatString="{0:d}" 
                            HeaderText="Letter_Issued_Date" SortExpression="Letter_Issued_Date" />
                        <asp:BoundField DataField="Date_of_Join" DataFormatString="{0:d}" 
                            HeaderText="Date_of_Join" SortExpression="Date_of_Join" />
                        <asp:BoundField DataField="Salary" HeaderText="Salary" 
                            SortExpression="Salary" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" 
                            SortExpression="Designation" />
                        <asp:CheckBoxField DataField="Project_Offered" HeaderText="Project_Offered" 
                            SortExpression="Project_Offered" />
                        <asp:BoundField DataField="Stipend" HeaderText="Stipend" 
                            SortExpression="Stipend" />
                        <asp:BoundField DataField="Remark" HeaderText="Remark" 
                            SortExpression="Remark" />
                    </Columns>
    </asp:GridView>
        <br />
        </ContentTemplate> 
     </asp:UpdatePanel>    
    </form>
</asp:Content>

