<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Placement_Report_Company_Name.aspx.vb" Inherits="Views_Report_Placement_Report" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <table style="width: 50%">
                <tr>
                    <td style="font-size: medium; width: 200px">
                        <b>Select Company Name</b></td>
                    <td>
                        <asp:DropDownList ID="ddl_company" runat="server" Height="30px" Width="130px" 
                            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Company_Name" 
                            DataValueField="Company_Name">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Company_Name] FROM [Company_Arrival]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 200px">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT Company_Arrival.Company_Name, Placements.Login_Id, Student_Personal_Details.First_Name, Student_Personal_Details.Last_Name, Student_Personal_Details.Gender, Placements.Letter_Issued_Date, Placements.Salary, Placements.Designation, Placements.Date_of_Join, Placements.Project_Offered, Placements.Stipend, Placements.Remark FROM Company_Arrival INNER JOIN Placements ON Company_Arrival.Arrival_Id = Placements.Arrival_Id INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id INNER JOIN Student_Personal_Details AS Student_Personal_Details_1 ON Placements.Login_Id = Student_Personal_Details_1.Login_Id WHERE (Company_Arrival.Company_Name = @Company_Name)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_company" Name="Company_Name" 
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass ="table">
                <Columns>
                    <asp:BoundField DataField="Login_Id" HeaderText="Login_Id" 
                        SortExpression="Login_Id" />
                    <asp:BoundField DataField="First_Name" HeaderText="First_Name" 
                        SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" 
                        SortExpression="Last_Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                        SortExpression="Company_Name" />
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

