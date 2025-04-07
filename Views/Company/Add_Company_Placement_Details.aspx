<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="Add_Company_Placement_Details.aspx.vb" Inherits="Views_Company_Company_Placement_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
            <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <fieldset> 
            <legend> <h2> Placement Details</h2> </legend>
                <table style="width: 80%; font-size: small;" cellpadding="6" cellspacing="10">
                  <tr>
                        <td style="width: 176px">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [Placements] WHERE [Login_Id] = @original_Login_Id AND [Arrival_Id] = @original_Arrival_Id" 
                                InsertCommand="INSERT INTO [Placements] ([Placement_Id], [Login_Id], [Arrival_Id], [Offer_Letter_Issued], [Letter_Issued_Date], [Salary_Offered], [Salary], [Designation], [Date_of_Join], [Project_Offered], [Stippend_Offered], [Stipend], [Remark]) VALUES (@Placement_Id, @Login_Id, @Arrival_Id, @Offer_Letter_Issued, @Letter_Issued_Date, @Salary_Offered, @Salary, @Designation, @Date_of_Join, @Project_Offered, @Stippend_Offered, @Stipend, @Remark)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT * FROM [Placements]" 
                                
                                UpdateCommand="UPDATE [Placements] SET [Placement_Id] = @Placement_Id, [Offer_Letter_Issued] = @Offer_Letter_Issued, [Letter_Issued_Date] = @Letter_Issued_Date, [Salary_Offered] = @Salary_Offered, [Salary] = @Salary, [Designation] = @Designation, [Date_of_Join] = @Date_of_Join, [Project_Offered] = @Project_Offered, [Stippend_Offered] = @Stippend_Offered, [Stipend] = @Stipend, [Remark] = @Remark WHERE [Login_Id] = @original_Login_Id AND [Arrival_Id] = @original_Arrival_Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Login_Id" Type="String" />
                                    <asp:Parameter Name="original_Arrival_Id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Placement_Id" Type="String" />
                                    <asp:Parameter Name="Offer_Letter_Issued" Type="Boolean" />
                                    <asp:Parameter Name="Letter_Issued_Date" Type="DateTime" />
                                    <asp:Parameter Name="Salary_Offered" Type="Boolean" />
                                    <asp:Parameter Name="Salary" Type="Decimal" />
                                    <asp:Parameter Name="Designation" Type="String" />
                                    <asp:Parameter Name="Date_of_Join" Type="DateTime" />
                                    <asp:Parameter Name="Project_Offered" Type="Boolean" />
                                    <asp:Parameter Name="Stippend_Offered" Type="Boolean" />
                                    <asp:Parameter Name="Stipend" Type="Decimal" />
                                    <asp:Parameter Name="Remark" Type="String" />
                                    <asp:Parameter Name="original_Login_Id" Type="String" />
                                    <asp:Parameter Name="original_Arrival_Id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Placement_Id" Type="String" />
                                    <asp:Parameter Name="Login_Id" Type="String" />
                                    <asp:Parameter Name="Arrival_Id" Type="String" />
                                    <asp:Parameter Name="Offer_Letter_Issued" Type="Boolean" />
                                    <asp:Parameter Name="Letter_Issued_Date" Type="DateTime" />
                                    <asp:Parameter Name="Salary_Offered" Type="Boolean" />
                                    <asp:Parameter Name="Salary" Type="Decimal" />
                                    <asp:Parameter Name="Designation" Type="String" />
                                    <asp:Parameter Name="Date_of_Join" Type="DateTime" />
                                    <asp:Parameter Name="Project_Offered" Type="Boolean" />
                                    <asp:Parameter Name="Stippend_Offered" Type="Boolean" />
                                    <asp:Parameter Name="Stipend" Type="Decimal" />
                                    <asp:Parameter Name="Remark" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 179px">
                            <asp:SqlDataSource ID="Student_Personal_Details" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Login_Id] FROM [Student_Personal_Details] WHERE (([Course_Code] = @Course_Code) AND ([Batch_Year] = @Batch_Year))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_course" Name="Course_Code" 
                                        PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="ddl_year" Name="Batch_Year" 
                                        PropertyName="SelectedValue" Type="Int16" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 180px">
                            <asp:SqlDataSource ID="CompanyArrival_3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT Arrival_Id FROM Company_Arrival WHERE (Company_Name = @Company_Name) AND (Visit_Year = @Visit_Year) AND (Course_Code = @Course_Code) AND (Batch_Year = @Batch_Year)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_company" DefaultValue="TCS" 
                                        Name="Company_Name" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="ddl_visit_year" DefaultValue="2013" 
                                        Name="Visit_Year" PropertyName="SelectedValue" Type="Int16" />
                                    <asp:ControlParameter ControlID="ddl_course" DefaultValue="" Name="Course_Code" 
                                        PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="ddl_year" Name="Batch_Year" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 176px" height="35">
                            <asp:Label ID="lbl_course" runat="server" Text="Select Course" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 179px">
                            <asp:DropDownList ID="ddl_course" runat="server" AutoPostBack="True" 
                                DataSourceID="Course" DataTextField="Course_Code" DataValueField="Course_Code" 
                                Width="120px" Height="30px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 180px">
                            <asp:SqlDataSource ID="Course" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT [Course_Code] FROM [Courses] WHERE ([Is_Active] = @Is_Active)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="True" Name="Is_Active" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 176px" height="35">
                            <asp:Label ID="lbl_select_year" runat="server" Text="Batch Year" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 179px">
                            <asp:DropDownList ID="ddl_year" runat="server" AutoPostBack="True" 
                                DataSourceID="Batch_Master" DataTextField="Batch_Year" 
                                DataValueField="Batch_Year" Width="120px" Height="30px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 180px">
                            <asp:SqlDataSource ID="Batch_Master" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Batch_Master] WHERE ([Course_Code] = @Course_Code)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_course" Name="Course_Code" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 176px" height="35">
                            <asp:Label ID="lbl_select_company" runat="server" Text="Select Company" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 179px">
                            <asp:DropDownList ID="ddl_company" runat="server" AutoPostBack="True" 
                                DataSourceID="Company_Arrival_1" DataTextField="Company_Name" 
                                DataValueField="Company_Name" Width="120px" Height="30px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 180px">
                            <asp:SqlDataSource ID="Company_Arrival_1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Company_Name] FROM [Company_Arrival] WHERE (([Course_Code] = @Course_Code) AND ([Batch_Year] = @Batch_Year))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_course" DefaultValue="PGDCSA" 
                                        Name="Course_Code" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="ddl_year" DefaultValue="2012" 
                                        Name="Batch_Year" PropertyName="SelectedValue" Type="Int16" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 176px; height: 39px;" height="35">
                            <asp:Label ID="lbl_visit_year" runat="server" Text="Visit Year" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 179px; height: 39px;">
                            <asp:DropDownList ID="ddl_visit_year" runat="server" AutoPostBack="True" 
                                DataSourceID="Comapny_Arrival_2" DataTextField="Visit_Year" 
                                DataValueField="Visit_Year" Width="120px" Height="30px">
                            </asp:DropDownList>
                        </td>
                        <td style="width: 180px; height: 39px;">
                            <asp:SqlDataSource ID="Comapny_Arrival_2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                
                                SelectCommand="SELECT DISTINCT Visit_Year FROM Company_Arrival WHERE (Company_Name = @Company_Name) AND (Course_Code = @Course_Code) AND (Batch_Year = @Batch_Year)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_company" DefaultValue="Microsoft" 
                                        Name="Company_Name" PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="ddl_course" DefaultValue="" Name="Course_Code" 
                                        PropertyName="SelectedValue" />
                                    <asp:ControlParameter ControlID="ddl_year" Name="Batch_Year" 
                                        PropertyName="SelectedValue" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="height: 39px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 176px; height: 14px;">
                            </td>
                        <td style="width: 179px; height: 14px;">
                            </td>
                        <td style="width: 180px; height: 14px;">
                            </td>
                        <td style="height: 14px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 176px">
                            <asp:Button ID="lbl_click_Here" runat="server" class="btn btn-primary" 
                                Text="Click Here" Width="130px" />
                        </td>
                        <td colspan="2" style="font-weight: 700;">
                            &nbsp;( To Fill Up Placement Details... )</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                  
                    <tr>
                        <td style="width: 176px">
                            &nbsp;</td>
                        <td colspan="2" style="font-weight: 700;">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                  
                </table>
                </fieldset>   
            <br />
            <br /> 
            
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="Placement_Id" 
                    DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin-right: 23px" 
                    Visible="False" Width="671px">
                    <EditItemTemplate>
                        Placement_Id:
                        <asp:Label ID="Placement_IdLabel1" runat="server" 
                            Text='<%# Eval("Placement_Id") %>' />
                        <br />
                        Login_Id:
                        <asp:TextBox ID="Login_IdTextBox" runat="server" 
                            Text='<%# Bind("Login_Id") %>' />
                        <br />
                        Arrival_Id:
                        <asp:TextBox ID="Arrival_IdTextBox" runat="server" 
                            Text='<%# Bind("Arrival_Id") %>' />
                        <br />
                        Offer_Letter_Issued:
                        <asp:CheckBox ID="Offer_Letter_IssuedCheckBox" runat="server" 
                            Checked='<%# Bind("Offer_Letter_Issued") %>' />
                        <br />
                        Letter_Issued_Date:
                        <asp:TextBox ID="Letter_Issued_DateTextBox" runat="server" 
                            Text='<%# Bind("Letter_Issued_Date") %>' />
                        <br />
                        Salary_Offered:
                        <asp:CheckBox ID="Salary_OfferedCheckBox" runat="server" 
                            Checked='<%# Bind("Salary_Offered") %>' />
                        <br />
                        Salary:
                        <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                        <br />
                        Designation:
                        <asp:TextBox ID="DesignationTextBox" runat="server" 
                            Text='<%# Bind("Designation") %>' />
                        <br />
                        Date_of_Join:
                        <asp:TextBox ID="Date_of_JoinTextBox" runat="server" 
                            Text='<%# Bind("Date_of_Join") %>' />
                        <br />
                        Project_Offered:
                        <asp:CheckBox ID="Project_OfferedCheckBox" runat="server" 
                            Checked='<%# Bind("Project_Offered") %>' />
                        <br />
                        Stippend_Offered:
                        <asp:CheckBox ID="Stippend_OfferedCheckBox" runat="server" 
                            Checked='<%# Bind("Stippend_Offered") %>' />
                        <br />
                        Stipend:
                        <asp:TextBox ID="StipendTextBox" runat="server" Text='<%# Bind("Stipend") %>' />
                        <br />
                        Remark:
                        <asp:TextBox ID="RemarkTextBox" runat="server" Text='<%# Bind("Remark") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="True" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                  
                        <table cellpadding="4" cellspacing="8" 
                            style="width: 100%; height: 97%; text-align: left; vertical-align: middle; font-size: medium; font-family: Cambria;">
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Placement&nbsp; Id</td>
                                <td>
                                    <asp:TextBox ID="Placement_IdTextBox" runat="server" Height="30px" 
                                        Text='<%# Bind("Placement_Id") %>' Width="126px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Login Id</td>
                                <td>
                                    <asp:DropDownList ID="ddl_login_id" runat="server" AutoPostBack="True" 
                                        DataSourceID="Student_Personal_Details" DataTextField="Login_Id" 
                                        DataValueField="Login_Id" Height="30px" SelectedValue='<%# Bind("Login_Id") %>' 
                                        Width="120px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px; text-align: left;">
                                    &nbsp; Arrival_ Id</td>
                                <td>
                                    <asp:DropDownList ID="ddl_arrival_id" runat="server" 
                                        DataSourceID="CompanyArrival_3" DataTextField="Arrival_Id" 
                                        DataValueField="Arrival_Id" Height="30px" 
                                        SelectedValue='<%# Bind("Arrival_Id") %>' Width="120px" 
                                        AutoPostBack="True">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px" valign="middle">
                                    &nbsp; Offer Letter Issued</td>
                                <td>
                                    <asp:CheckBox ID="Offer_Letter_IssuedCheckBox" runat="server" 
                                        Checked='<%# Bind("Offer_Letter_Issued") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Letter&nbsp; Issued Date</td>
                                <td>
                                    <asp:TextBox ID="Letter_Issued_DateTextBox0" runat="server" Height="26px" 
                                        Text='<%# Bind("Letter_Issued_Date") %>' Width="126px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Salary Offered</td>
                                <td>
                                    <asp:CheckBox ID="Salary_OfferedCheckBox0" runat="server" AutoPostBack="True" 
                                        Checked='<%# Bind("Salary_Offered") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Salary</td>
                                <td>
                                    <asp:TextBox ID="SalaryTextBox0" runat="server" Height="26px" 
                                        Text='<%# Bind("Salary") %>' Width="126px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Designation</td>
                                <td>
                                    <asp:TextBox ID="DesignationTextBox0" runat="server" Height="26px" 
                                        Text='<%# Bind("Designation") %>' Width="126px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Date of Join</td>
                                <td>
                                    <asp:TextBox ID="Date_of_JoinTextBox0" runat="server" Height="26px" 
                                        Text='<%# Bind("Date_of_Join") %>' Width="126px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Project Offered</td>
                                <td>
                                    <asp:CheckBox ID="Project_OfferedCheckBox0" runat="server" 
                                        Checked='<%# Bind("Project_Offered") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Stippend Offered</td>
                                <td>
                                    <asp:CheckBox ID="Stippend_OfferedCheckBox0" runat="server" AutoPostBack="True" 
                                        Checked='<%# Bind("Stippend_Offered") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Stipend</td>
                                <td>
                                    <asp:TextBox ID="StipendTextBox0" runat="server" Height="26px" 
                                        Text='<%# Bind("Stipend") %>' Width="126px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp; Remark</td>
                                <td>
                                    <asp:TextBox ID="RemarkTextBox0" runat="server" Height="109px" 
                                        Text='<%# Bind("Remark") %>' TextMode="MultiLine" Width="259px" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 165px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                        class="btn btn-primary" CommandName="Insert" Text="Insert" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="True" 
                                        class="btn btn-success" CommandName="Cancel" Text="Cancel" 
                                        onclick="InsertCancelButton_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;</td>
                            </tr>
                        </table>
               
                    </InsertItemTemplate>
                    <ItemTemplate>
                        Placement_Id:
                        <asp:Label ID="Placement_IdLabel" runat="server" 
                            Text='<%# Eval("Placement_Id") %>' />
                        <br />
                        Login_Id:
                        <asp:Label ID="Login_IdLabel" runat="server" Text='<%# Bind("Login_Id") %>' />
                        <br />
                        Arrival_Id:
                        <asp:Label ID="Arrival_IdLabel" runat="server" 
                            Text='<%# Bind("Arrival_Id") %>' />
                        <br />
                        Offer_Letter_Issued:
                        <asp:CheckBox ID="Offer_Letter_IssuedCheckBox1" runat="server" 
                            Checked='<%# Bind("Offer_Letter_Issued") %>' Enabled="false" />
                        <br />
                        Letter_Issued_Date:
                        <asp:Label ID="Letter_Issued_DateLabel" runat="server" 
                            Text='<%# Bind("Letter_Issued_Date") %>' />
                        <br />
                        Salary_Offered:
                        <asp:CheckBox ID="Salary_OfferedCheckBox1" runat="server" 
                            Checked='<%# Bind("Salary_Offered") %>' Enabled="false" />
                        <br />
                        Salary:
                        <asp:Label ID="SalaryLabel" runat="server" Text='<%# Bind("Salary") %>' />
                        <br />
                        Designation:
                        <asp:Label ID="DesignationLabel" runat="server" 
                            Text='<%# Bind("Designation") %>' />
                        <br />
                        Date_of_Join:
                        <asp:Label ID="Date_of_JoinLabel" runat="server" 
                            Text='<%# Bind("Date_of_Join") %>' />
                        <br />
                        Project_Offered:
                        <asp:CheckBox ID="Project_OfferedCheckBox1" runat="server" 
                            Checked='<%# Bind("Project_Offered") %>' Enabled="false" />
                        <br />
                        Stippend_Offered:
                        <asp:CheckBox ID="Stippend_OfferedCheckBox1" runat="server" 
                            Checked='<%# Bind("Stippend_Offered") %>' Enabled="false" />
                        <br />
                        Stipend:
                        <asp:Label ID="StipendLabel" runat="server" Text='<%# Bind("Stipend") %>' />
                        <br />
                        Remark:
                        <asp:Label ID="RemarkLabel" runat="server" Text='<%# Bind("Remark") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="True" 
                            CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="True" 
                            CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="True" 
                            CommandName="New" Text="New" />
                    </ItemTemplate>
                    
                </asp:FormView>
                
                <br />    
            </p>
              </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</asp:Content>

