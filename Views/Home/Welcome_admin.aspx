<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="Welcome_admin.aspx.vb" Inherits="Views_Master_Default" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
<form id="form1" runat="server">
          
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
  <ContentTemplate>
            
            <table align="right" cellpadding="4" cellspacing="4" class="style1" 
                style="height: 50px;">
                <tr>
                    <td class="style2" colspan="3" 
                        style="font-family: 'Bookman Old Style'; font-weight: bold">
                        &nbsp;&nbsp; To Get Placed Student Information,Use this...</td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:TextBox ID="txt_search" runat="server" Height="30px" 
                            ToolTip="Enter any Keyword" Width="170px"></asp:TextBox>
                        &nbsp;&nbsp;
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="ddl_search" runat="server" AutoPostBack="True" 
                            Height="30px" Width="150px">
                            <asp:ListItem Selected="True">By Course</asp:ListItem>
                            <asp:ListItem>By Batch Year</asp:ListItem>
                            <asp:ListItem>By Visit Year</asp:ListItem>
                            <asp:ListItem>By Login ID</asp:ListItem>
                            <asp:ListItem>By Company Name</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;&nbsp;
                        <asp:Button ID="btn_search" runat="server" Height="30px" CssClass="btn btn-primary"
                            Text="Search" Width="50px" />
                    </td>
                </tr>
            </table>
            <br /><br /><br /><br />
         <asp:Panel ID="pnl_search_result" runat="server" Visible="False">
         
         
             <br />
             <table style="width: 100%">
                 <tr>
                     <td>
                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT Student_Personal_Details.Login_Id, Student_Personal_Details.First_Name,Company_Arrival.Company_Name, Company_Arrival.Visit_Year, Company_Arrival.Campus_Type, Company_Arrival.Prefered_Skill, Placements.Offer_Letter_Issued, Placements.Salary, Placements.Designation, Placements.Project_Offered, Placements.Stipend, Placements.Remark FROM Placements INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id INNER JOIN Company_Arrival ON Placements.Arrival_Id = Company_Arrival.Arrival_Id WHERE (Company_Arrival.Course_Code = @Course_Code)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="txt_search" Name="Course_Code" 
                                     PropertyName="Text" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                     <td>
                         <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             
                             SelectCommand="SELECT Student_Personal_Details.Login_Id, Student_Personal_Details.First_Name, Company_Arrival.Company_Name, Company_Arrival.Visit_Year, Placements.Offer_Letter_Issued, Placements.Salary, Placements.Designation, Placements.Project_Offered, Placements.Stipend, Company_Arrival.Campus_Type, Company_Arrival.Prefered_Skill, Placements.Remark FROM Placements INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id INNER JOIN Company_Arrival ON Placements.Arrival_Id = Company_Arrival.Arrival_Id WHERE (Company_Arrival.Batch_Year = @Batch_Year)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="txt_search" Name="Batch_Year" 
                                     PropertyName="Text" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                     <td>
                         <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             
                             SelectCommand="SELECT Student_Personal_Details.Login_Id, Student_Personal_Details.First_Name, Company_Arrival.Company_Name, Company_Arrival.Visit_Year,Placements.Offer_Letter_Issued, Placements.Salary, Placements.Designation, Placements.Project_Offered,Placements.Stipend,Company_Arrival.Campus_Type,Company_Arrival.Prefered_Skill,Placements.Remark FROM Company_Arrival INNER JOIN Placements ON Company_Arrival.Arrival_Id = Placements.Arrival_Id INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id WHERE (Company_Arrival.Visit_Year = @Visit_Year)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="txt_search" Name="Visit_Year" 
                                     PropertyName="Text" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                     <td>
                         <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT Student_Personal_Details.Login_Id, Student_Personal_Details.First_Name, Company_Arrival.Company_Name, Company_Arrival.Visit_Year,Placements.Offer_Letter_Issued, Placements.Salary, Placements.Designation, Placements.Project_Offered, Placements.Stipend,Company_Arrival.Campus_Type,Company_Arrival.Prefered_Skill, Placements.Remark FROM Company_Arrival INNER JOIN Placements ON Company_Arrival.Arrival_Id = Placements.Arrival_Id INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id WHERE (Placements.Login_Id = @Login_Id)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="txt_search" Name="Login_Id" 
                                     PropertyName="Text" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                     <td>
                         <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             
                             SelectCommand="SELECT Student_Personal_Details.Login_Id, Student_Personal_Details.First_Name,Company_Arrival.Company_Name,Company_Arrival.Visit_Year,Placements.Offer_Letter_Issued, Placements.Salary, Placements.Designation, Placements.Project_Offered, Placements.Stipend, Company_Arrival.Campus_Type, Company_Arrival.Prefered_Skill,  Placements.Remark FROM Company_Arrival INNER JOIN Placements ON Company_Arrival.Arrival_Id = Placements.Arrival_Id INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id WHERE (Company_Arrival.Company_Name = @Company_Name)">
                             <SelectParameters>
                                 <asp:ControlParameter ControlID="txt_search" Name="Company_Name" 
                                     PropertyName="Text" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     </td>
                 </tr>
             </table>
             <br />
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                 AllowSorting="True" AutoGenerateColumns="False">
                 <Columns>
                     <asp:BoundField DataField="Login_Id" HeaderText="Login Id" 
                         SortExpression="Login_Id" />
                     <asp:BoundField DataField="First_Name" HeaderText="First Name" 
                         SortExpression="First_Name" />
                     <asp:BoundField DataField="Company_Name" HeaderText="Company Name" 
                         SortExpression="Company_Name" />
                     <asp:BoundField DataField="Visit_Year" HeaderText="Visit Year" 
                         SortExpression="Visit_Year" />
                     <asp:CheckBoxField DataField="Offer_Letter_Issued" 
                         HeaderText="Offer Letter Issued" SortExpression="Offer_Letter_Issued" />
                     <asp:BoundField DataField="Salary" HeaderText="Salary" 
                         SortExpression="Salary" />
                     <asp:BoundField DataField="Designation" HeaderText="Designation" 
                         SortExpression="Designation" />
                     <asp:CheckBoxField DataField="Project_Offered" HeaderText="Project Offered" 
                         SortExpression="Project_Offered" />
                     <asp:BoundField DataField="Stipend" HeaderText="Stipend" 
                         SortExpression="Stipend" />
                     <asp:BoundField DataField="Campus_Type" HeaderText="Campus Type" 
                         SortExpression="Campus_Type" />
                     <asp:BoundField DataField="Prefered_Skill" HeaderText="Prefered Skill" 
                         SortExpression="Prefered_Skill" />
                     <asp:BoundField DataField="Remark" HeaderText="Remark" 
                         SortExpression="Remark" />
                 </Columns>
             </asp:GridView>
             <br />
         
         
        </asp:Panel>
</ContentTemplate>
</asp:UpdatePanel>
</form>
</asp:Content>

