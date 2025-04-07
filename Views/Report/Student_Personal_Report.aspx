<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Student_Personal_Report.aspx.vb" Inherits="Views_Report_Student_Report" title="Untitled Page" %>

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
              <legend> <h2> Student Report </h2> </legend>
            
            <table style="width: 50%; font-size: medium;" cellpadding="6" cellspacing="8">
              
                <tr>
                    <td style="width: 132px">
                        &nbsp;</td>
                    <td style="width: 163px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 132px">
                        Select Course</td>
                    <td style="width: 163px">
                        <asp:DropDownList ID="ddl_course" runat="server" Width="100px" Height="30px"
                            AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Course_Code" 
                            DataValueField="Course_Code">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT DISTINCT [Course_Code] FROM [Student_Personal_Details]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">
                        &nbsp;</td>
                    <td style="width: 163px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 132px">
                        Select Batch Year</td>
                    <td style="width: 163px">
                        <asp:DropDownList ID="ddl_batch_year" runat="server" Width="100px" Height="30px" 
                            AutoPostBack="True" DataSourceID="SqlDataSource2" 
                            DataTextField="Batch_Year" DataValueField="Batch_Year">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Student_Personal_Details] WHERE ([Course_Code] = @Course_Code)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_course" Name="Course_Code" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 132px">
                        &nbsp;</td>
                    <td style="width: 163px">
                        &nbsp;</td>
                    <td>
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
                
                
                
                SelectCommand="SELECT DISTINCT Student_Personal_Details.Login_Id, Student_Personal_Details.First_Name, Student_Personal_Details.E_Mail, Student_Personal_Details.SSC_Percentage, Student_Personal_Details.HSC_Percentage, Student_Personal_Details.Bachelors_Course, Student_Personal_Details.Bachelors_Percentage, Student_Personal_Details.Post_Graduation_Course, Student_Personal_Details.Post_Graduation_Percentage, Student_Personal_Details.Other_Course, Student_Personal_Details.Other_Course_Percentage, Student_Academic_Details.Semester_1, Student_Academic_Details.Semester_2, Student_Academic_Details.Semester_3, Student_Academic_Details.Semester_4, Student_Academic_Details.Semester_5, Student_Academic_Details.Semester_6 FROM Student_Personal_Details INNER JOIN Student_Academic_Details ON Student_Personal_Details.Login_Id = Student_Academic_Details.Login_Id WHERE (Student_Personal_Details.Course_Code = @Course_Code) AND (Student_Personal_Details.Batch_Year = @Batch_Year)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_course" Name="Course_Code" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="ddl_batch_year" Name="Batch_Year" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
             <div id="scroll" style="width: 1100px;
                height: 300px;
                <%--overflow-x: scroll;--%>
                overflow-y: scroll;
                max-width:1250px;
                max-height:250px;">

           <%-- <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" 
                Visible="False" Width="290%" CellPadding="6" CellSpacing="6">
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle"  CssClass ="table"/>
           --%>      <asp:GridView ID="GridView1" runat="server" 
                AllowSorting="True" AutoGenerateColumns="False" CssClass="table" 
                DataSourceID="SqlDataSource3" 
                CellPadding="4" ForeColor="#333333" GridLines="None" CellSpacing ="8" Width="1500px">
                <RowStyle BackColor="#EFF3FB"  />
           
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Login_Id" HeaderText="Login Id" 
                        SortExpression="Login_Id" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" 
                        SortExpression="First_Name" />
                    <asp:BoundField DataField="E_Mail" HeaderText="E Mail" 
                        SortExpression="E_Mail" />
                    <asp:BoundField DataField="SSC_Percentage" HeaderText="SSC Percentage" 
                        SortExpression="SSC_Percentage" />
                    <asp:BoundField DataField="HSC_Percentage" HeaderText="HSC Percentage" 
                        SortExpression="HSC_Percentage" />
                    <asp:BoundField DataField="Bachelors_Course" HeaderText="Bachelors Course" 
                        SortExpression="Bachelors_Course" />
                    <asp:BoundField DataField="Bachelors_Percentage" 
                        HeaderText="Bachelors Percentage" SortExpression="Bachelors_Percentage" />
                    <asp:BoundField DataField="Post_Graduation_Course" 
                        HeaderText="Post Graduation Course" SortExpression="Post_Graduation_Course" />
                    <asp:BoundField DataField="Post_Graduation_Percentage" 
                        HeaderText="Post Graduation Percentage" 
                        SortExpression="Post_Graduation_Percentage" />
                    <asp:BoundField DataField="Semester_1" HeaderText="Sem_1" 
                        SortExpression="Semester_1" />
                    <asp:BoundField DataField="Semester_2" HeaderText="Sem_2" 
                        SortExpression="Semester_2" />
                    <asp:BoundField DataField="Semester_3" HeaderText="Sem_3" 
                        SortExpression="Semester_3" />
                    <asp:BoundField DataField="Semester_4" HeaderText="Sem_4" 
                        SortExpression="Semester_4" />
                    <asp:BoundField DataField="Semester_5" HeaderText="Sem_5" 
                        SortExpression="Semester_5" />
                    <asp:BoundField DataField="Semester_6" HeaderText="Sem_6" 
                        SortExpression="Semester_6" />
                </Columns>
                 <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
           
                
            </asp:GridView>
            </div>
            <br />
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
       </form>
</asp:Content>

