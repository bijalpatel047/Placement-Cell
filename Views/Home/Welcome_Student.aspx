<%@ Page Language="VB" MasterPageFile="~/Views/Master/Student.master" AutoEventWireup="false" CodeFile="Welcome_Student.aspx.vb" Inherits="Views_Home_Welcome_Student" title="Untitled Page" %>
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
            <br /><br />
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
            <br />
        
        <asp:Panel ID="pnl_student_reg" runat="server" Visible="False">
            <asp:Button ID="btn_click" runat="server" CssClass="btn btn-primary" 
                Height="25px" Text="Click Here For Registration" Width="200px" />
            <br />
            <br />
            <asp:Wizard ID="Wizard_student_personal_details" runat="server" 
                ActiveStepIndex="0" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" 
                DisplayCancelButton="True" Font-Names="Verdana" Font-Size="Medium" 
                Height="250px" Visible="False" Width="500px">
                <StepStyle Font-Size="0.8em" ForeColor="#333333" />
                <StartNavigationTemplate>
                    <asp:Button ID="StartNextButton" runat="server" BackColor="White" 
                        BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
                        CommandName="MoveNext" Font-Names="Verdana" Font-Size="Small" 
                        ForeColor="#284E98" Text="Next" />
                </StartNavigationTemplate>
                <NavigationStyle Font-Size="Small" />
                <WizardSteps>
                    <asp:WizardStep ID="WizardStep1" runat="server" title="Personal Details">
                        <table cellpadding="4" cellspacing="6" class="style1">
                            <tr>
                                <td class="style3" colspan="2">
                                    &nbsp; Personal Details&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [Course_Code] FROM [Courses]">
                                    </asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Batch_Master] WHERE ([Course_Code] = @Course_Code)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="ddl_course_code" Name="Course_Code" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                    <asp:Label ID="lbl_coures_code" runat="server" Text="Course Code"></asp:Label>
                                    &nbsp;&nbsp;</td>
                                <td>
                                    <asp:DropDownList ID="ddl_course_code" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource1" DataTextField="Course_Code" 
                                        DataValueField="Course_Code">
                                    </asp:DropDownList>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lbl_batch_year" runat="server" Text="Batch Year"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddl_batch_year" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource2" DataTextField="Batch_Year" 
                                        DataValueField="Batch_Year">
                                    </asp:DropDownList>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                    <asp:Label ID="lbl_firstname" runat="server" Text="First Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_firstname" runat="server" ToolTip="Enter First Name"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                    <asp:Label ID="lbl_middle_name" runat="server" Text="Middle Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_middle_name" runat="server" ToolTip="Enter Middle Name"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                    <asp:Label ID="lbl_last_name" runat="server" Text="Last Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_last_name" runat="server" ToolTip="Enter Last Name"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                    <asp:Label ID="lbl_birth_date" runat="server" Text="Birth Date"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_birth_date" runat="server" ToolTip="Enter Birth Date"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                    <asp:Label ID="lbl_gender" runat="server" Text="Gender"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rbtn_list_gender" runat="server" AutoPostBack="True" 
                                        RepeatDirection="Horizontal" Width="150px">
                                        <asp:ListItem Selected="True">M</asp:ListItem>
                                        <asp:ListItem>F</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep2" runat="server" title="Address Details">
                        <table cellpadding="4" cellspacing="6" class="style2">
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp; <span class="style3"><b>Address Details<br />
                                    </b></span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lbl_pin_code" runat="server" Text="Pin Code"></asp:Label>
                                    &nbsp;</td>
                                <td>
                                    <asp:TextBox ID="txt_pin_code" runat="server" Height="25px" 
                                        ToolTip="Enter Pin Code"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_city" runat="server" Height="25px" ToolTip="Enter City"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lbl_state" runat="server" Text="State"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_state" runat="server" Height="25px" ToolTip="Enter State"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Contact Details">
                        <table cellpadding="4" cellspacing="6" class="style1">
                            <tr>
                                <td class="style2" colspan="2">
                                    <span class="style3">&nbsp; Contact Details</span>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;
                                    <asp:Label ID="lbl_area_code" runat="server" Text="Area Code"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_area_code" runat="server" Height="23px" 
                                        ToolTip="Enter Area Code"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;
                                    <asp:Label ID="lbl_resident_no" runat="server" Text="Resident No"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_resident_no" runat="server" Height="23px" 
                                        ToolTip="Enter Resident No"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;
                                    <asp:Label ID="lbl_mobile_no" runat="server" Text="Mobile No"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_mobile_no" runat="server" Height="23px" 
                                        ToolTip="Enter Mobile No"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style4">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="lbl_email" runat="server" Text="Email Id"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txt_email" runat="server" ToolTip="Enter Your Email Id"></asp:TextBox>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                    <asp:WizardStep ID="WizardStep4" runat="server" 
                        Title="Educational Qualification">
                        <table cellpadding="4" cellspacing="6" class="style1" style="width: 625px">
                            <tr>
                                <td colspan="4">
                                    <span class="style2">&nbsp;Educational Qualification</span>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    &nbsp;</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp;</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp;</td>
                                <td style="width: 160px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    &nbsp;</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp;Percentage</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp; Board</td>
                                <td style="width: 160px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    <asp:Label ID="lbl_ssc" runat="server" Text="S.S.C"></asp:Label>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_ssc_per" runat="server" ToolTip="Enter SSC Percentage"></asp:TextBox>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_ssc_board" runat="server" ToolTip="Enter S.S.C Board"></asp:TextBox>
                                </td>
                                <td style="width: 160px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    <asp:Label ID="lbl_hsc" runat="server" Text="H.S.C."></asp:Label>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_hsc_per" runat="server" ToolTip="Enter HSC Percentage"></asp:TextBox>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_hsc_board" runat="server" ToolTip="Enter HSC Board"></asp:TextBox>
                                </td>
                                <td style="width: 160px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    &nbsp;</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp;</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp;</td>
                                <td style="width: 160px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    &nbsp;</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp; Course</td>
                                <td class="style3" style="width: 160px">
                                    &nbsp;Percentage</td>
                                <td style="width: 160px">
                                    &nbsp;University</td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    <asp:Label ID="lbl_bachelor" runat="server" Text="  Bachelor"></asp:Label>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_bachelor_course" runat="server" 
                                        ToolTip="Enter Bachelor Course"></asp:TextBox>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_bachelor_per" runat="server" 
                                        ToolTip="Enter Bachelor Percentage"></asp:TextBox>
                                </td>
                                <td style="width: 160px">
                                    <asp:TextBox ID="txt_bachelor_university" runat="server" 
                                        ToolTip="Enter Bachelor University"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    &nbsp;
                                    <asp:Label ID="lbl_post_graduate" runat="server" style="text-align: right" 
                                        Text="Post Graduate"></asp:Label>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_post_course" runat="server" 
                                        ToolTip="Enter Post Graduate Course"></asp:TextBox>
                                </td>
                                <td class="style3" style="width: 160px">
                                    <asp:TextBox ID="txt_post_per" runat="server" 
                                        ToolTip="Enter Post Graduate Percentage"></asp:TextBox>
                                </td>
                                <td style="width: 160px">
                                    <asp:TextBox ID="txt_post_university" runat="server" 
                                        ToolTip="Enter Post Graduate University"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    Other&nbsp; Degree (If Have)
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_other_course" runat="server"></asp:TextBox>
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_other_Percentage" runat="server"></asp:TextBox>
                                </td>
                                <td class="style3">
                                    <asp:TextBox ID="txt_other_uni" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 83px">
                                    <asp:Label ID="lbl_add_info" runat="server" Text="Additional Info"></asp:Label>
                                </td>
                                <td class="style3" colspan="3">
                                    <asp:TextBox ID="txt_add_info" runat="server" Height="75px" 
                                        TextMode="MultiLine" ToolTip="Enter Your Additional Infomation" Width="270px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </asp:WizardStep>
                </WizardSteps>
                <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" 
                    ForeColor="White" />
                <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="Small" 
                    ForeColor="#284E98" />
                <SideBarStyle BackColor="#507CD1" Font-Size="Medium" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
                <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                    BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                    HorizontalAlign="Center" />
            </asp:Wizard>
        </asp:Panel>
       
        <br />
        
         <br />
        <br />
        
        <br />
        <br />
        
        </ContentTemplate> 
          </asp:UpdatePanel>
              </form>
                
 </asp:Content>
