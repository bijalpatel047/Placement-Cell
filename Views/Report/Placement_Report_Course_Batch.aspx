<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Placement_Report_Course_Batch.aspx.vb" Inherits="Views_Report_Placement_Report" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <script type="text/javascript">
	jQuery(document).ready(function() {
		// binds form submission and fields to the validation engine
		jQuery("#form1").validationEngine();
	});
</script>
  <link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/ui.jqgrid.css" />
    <!-- jQuery runtime minified -->
    <link href="../../Content/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <!-- The localization file we need, English in this case -->
    <script src="../../Scripts/js/trirand/i18n/grid.locale-en.js"type="text/javascript"></script>
    <!-- The jqGrid client-side javascript -->
    <script src="../../Scripts/js/trirand/jquery.jqGrid.min.js" type="text/javascript"></script>

    <form id="form1" runat="server">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <fieldset> 
            <legend> <h2> Placement Report</h2></legend>
            <table cellpadding="4" cellspacing="6" style="width: 440px; font-size: medium;">
                
                <tr>
                    <td style="width: 144px">
                        &nbsp;</td>
                    <td style="width: 145px">
                        &nbsp;</td>
                    <td style="width: 145px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 144px">
                        Select Course</td>
                    <td style="width: 145px">
                        <asp:DropDownList ID="ddl_course" runat="server" Width="100px" 
                            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Course_Code" 
                            DataValueField="Course_Code" Height="30px">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 145px">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Course_Code] FROM [Company_Arrival]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">
                        &nbsp;</td>
                    <td style="width: 145px">
                        &nbsp;</td>
                    <td style="width: 145px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 144px">
                        Select Batch</td>
                    <td style="width: 145px">
                        <asp:DropDownList ID="ddl_batch_year" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="Batch_Year" 
                            DataValueField="Batch_Year" Width="100px" Height="30px">
                        </asp:DropDownList>
                    </td>
                    <td style="width: 145px">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Company_Arrival] WHERE ([Course_Code] = @Course_Code) ORDER BY [Batch_Year] DESC">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_course" Name="Course_Code" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 144px">
                        &nbsp;</td>
                    <td style="width: 145px">
                        &nbsp;</td>
                    <td style="width: 145px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btn_submit" runat="server" class =" btn btn-primary" Text="Submit" />
                    </td>
                </tr>
            </table>
            </fieldset>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                
                
                SelectCommand="SELECT Placements.Login_Id, Placements.Letter_Issued_Date, Placements.Salary, Placements.Designation, Placements.Date_of_Join, Placements.Project_Offered, Placements.Stipend, Student_Personal_Details.First_Name, Student_Personal_Details.Gender, Student_Personal_Details.Last_Name, Placements.Remark, Company_Arrival.Company_Name FROM Placements INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id INNER JOIN Company_Arrival ON Placements.Arrival_Id = Company_Arrival.Arrival_Id WHERE (Placements.Login_Id LIKE '%' + @Login_Id + '%') AND (Placements.Login_Id LIKE '%' + @Login_Id2 + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_course" Name="Login_Id" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddl_batch_year" Name="Login_Id2" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <%--<div id="scroll" style="width: 520px;
                height: 400px;
                overflow-x: scroll;
                overflow-y: scroll;
                max-width:570px;
                max-height:400px;">
            --%>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" 
                    CellPadding="8" CellSpacing="6" Visible="False" Width="100%" Height="30px" CssClass ="table">
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <Columns>
                    <asp:BoundField DataField="Login_Id" HeaderText="Login Id" 
                        SortExpression="Login_Id" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" 
                        SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last Name" 
                        SortExpression="Last_Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Company_Name" HeaderText="Company Name" 
                        SortExpression="Company_Name" />
                    <asp:BoundField DataField="Letter_Issued_Date" HeaderText="Letter Issued Date" 
                        SortExpression="Letter_Issued_Date" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Date_of_Join" HeaderText="Date of Join" 
                        SortExpression="Date_of_Join" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" 
                        SortExpression="Salary" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" 
                        SortExpression="Designation" />
                    <asp:CheckBoxField DataField="Project_Offered" HeaderText="Project Offered" 
                        SortExpression="Project_Offered" />
                    <asp:BoundField DataField="Stipend" HeaderText="Stipend" 
                        SortExpression="Stipend" />
                    <asp:BoundField DataField="Remark" HeaderText="Remark" 
                        SortExpression="Remark" />
                </Columns>
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="True" />
            </asp:GridView>
            </div>
            <br />
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
    </p>
    </form>
</asp:Content>

