<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Placement_Report_visit_Year.aspx.vb" Inherits="Views_Report_Placement_Report_visit_Year" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <br />
            <table style="width: 50%">
                <tr>
                    <td style="width: 115px">
                        Select Visit Year</td>
                    <td style="width: 99px">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="Visit_Year" 
                            DataValueField="Visit_Year">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Visit_Year] FROM [Company_Arrival] ORDER BY [Visit_Year] DESC">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 115px">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            
                            SelectCommand="SELECT Placements.Login_Id, Student_Personal_Details.First_Name, Student_Personal_Details.Last_Name, Placements.Letter_Issued_Date, Placements.Salary, Placements.Designation, Placements.Date_of_Join, Placements.Stipend, Placements.Project_Offered, Company_Arrival.Company_Name, Student_Personal_Details.Gender, Placements.Remark FROM Company_Arrival INNER JOIN Placements ON Company_Arrival.Arrival_Id = Placements.Arrival_Id INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id WHERE (Company_Arrival.Visit_Year = @Visit_Year)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" 
                                    Name="Visit_Year" PropertyName="SelectedValue" Type="Int16" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td style="width: 99px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
           <%-- <div id="scroll" style="width: 520px;
                height: 400px;
                overflow-x: scroll;
                overflow-y: scroll;
                max-width:570px;
                max-height:400px;">
           --%> 
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width ="100%" CssClass ="table">
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
                    <asp:BoundField DataField="Letter_Issued_Date" HeaderText="Letter_Issued_Date" 
                        SortExpression="Letter_Issued_Date" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Date_of_Join" HeaderText="Date_of_Join" 
                        SortExpression="Date_of_Join" DataFormatString="{0:d}" />
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
            </div> 
            <br />
            
        </ContentTemplate>
      
    </asp:UpdatePanel>
    </form>
</asp:Content>

