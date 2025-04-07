<%@ Page Language="VB" MasterPageFile="~/Views/Master/Student.master" AutoEventWireup="false" CodeFile="Edit_Profile.aspx.vb" Inherits="Views_Student_Edit_Profile" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [First_Name], [Middle_Name], [Last_Name], [Gender], [Pin_Code], [City], [State], [Area_Code], [Resident_No], [Mobile_No], [E_Mail], [Birth_Date], [SSC_Percentage], [SSC_Board], [HSC_Percentage], [HSC_Board], [Bachelors_Course], [Bachelors_Percentage], [Bachelors_University], [Post_Graduation_Course], [Post_Graduation_Percentage], [Post_Graduation_University], [Other_Course], [Other_Course_Percentage], [Other_Course_University], [Additional_Info], [Login_Id] FROM [Student_Personal_Details] WHERE ([Login_Id] = @Login_Id)" 
                DeleteCommand="DELETE FROM [Student_Personal_Details] WHERE [E_Mail] = @E_Mail AND [Login_Id] = @Login_Id" 
                InsertCommand="INSERT INTO [Student_Personal_Details] ([First_Name], [Middle_Name], [Last_Name], [Gender], [Pin_Code], [City], [State], [Area_Code], [Resident_No], [Mobile_No], [E_Mail], [Birth_Date], [SSC_Percentage], [SSC_Board], [HSC_Percentage], [HSC_Board], [Bachelors_Course], [Bachelors_Percentage], [Bachelors_University], [Post_Graduation_Course], [Post_Graduation_Percentage], [Post_Graduation_University], [Other_Course], [Other_Course_Percentage], [Other_Course_University], [Additional_Info], [Login_Id]) VALUES (@First_Name, @Middle_Name, @Last_Name, @Gender, @Pin_Code, @City, @State, @Area_Code, @Resident_No, @Mobile_No, @E_Mail, @Birth_Date, @SSC_Percentage, @SSC_Board, @HSC_Percentage, @HSC_Board, @Bachelors_Course, @Bachelors_Percentage, @Bachelors_University, @Post_Graduation_Course, @Post_Graduation_Percentage, @Post_Graduation_University, @Other_Course, @Other_Course_Percentage, @Other_Course_University, @Additional_Info, @Login_Id)" 
                UpdateCommand="UPDATE [Student_Personal_Details] SET [First_Name] = @First_Name, [Middle_Name] = @Middle_Name, [Last_Name] = @Last_Name, [Gender] = @Gender, [Pin_Code] = @Pin_Code, [City] = @City, [State] = @State, [Area_Code] = @Area_Code, [Resident_No] = @Resident_No, [Mobile_No] = @Mobile_No, [Birth_Date] = @Birth_Date, [SSC_Percentage] = @SSC_Percentage, [SSC_Board] = @SSC_Board, [HSC_Percentage] = @HSC_Percentage, [HSC_Board] = @HSC_Board, [Bachelors_Course] = @Bachelors_Course, [Bachelors_Percentage] = @Bachelors_Percentage, [Bachelors_University] = @Bachelors_University, [Post_Graduation_Course] = @Post_Graduation_Course, [Post_Graduation_Percentage] = @Post_Graduation_Percentage, [Post_Graduation_University] = @Post_Graduation_University, [Other_Course] = @Other_Course, [Other_Course_Percentage] = @Other_Course_Percentage, [Other_Course_University] = @Other_Course_University, [Additional_Info] = @Additional_Info WHERE [E_Mail] = @E_Mail AND [Login_Id] = @Login_Id">
                <SelectParameters>
                    <asp:SessionParameter Name="Login_Id" SessionField="ID" Type="String" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="E_Mail" Type="String" />
                    <asp:Parameter Name="Login_Id" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="Middle_Name" Type="String" />
                    <asp:Parameter Name="Last_Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Pin_Code" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Area_Code" Type="String" />
                    <asp:Parameter Name="Resident_No" Type="String" />
                    <asp:Parameter Name="Mobile_No" Type="String" />
                    <asp:Parameter Name="Birth_Date" Type="DateTime" />
                    <asp:Parameter Name="SSC_Percentage" Type="Decimal" />
                    <asp:Parameter Name="SSC_Board" Type="String" />
                    <asp:Parameter Name="HSC_Percentage" Type="Decimal" />
                    <asp:Parameter Name="HSC_Board" Type="String" />
                    <asp:Parameter Name="Bachelors_Course" Type="String" />
                    <asp:Parameter Name="Bachelors_Percentage" Type="Decimal" />
                    <asp:Parameter Name="Bachelors_University" Type="String" />
                    <asp:Parameter Name="Post_Graduation_Course" Type="String" />
                    <asp:Parameter Name="Post_Graduation_Percentage" Type="Decimal" />
                    <asp:Parameter Name="Post_Graduation_University" Type="String" />
                    <asp:Parameter Name="Other_Course" Type="String" />
                    <asp:Parameter Name="Other_Course_Percentage" Type="Decimal" />
                    <asp:Parameter Name="Other_Course_University" Type="String" />
                    <asp:Parameter Name="Additional_Info" Type="String" />
                    <asp:Parameter Name="E_Mail" Type="String" />
                    <asp:Parameter Name="Login_Id" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="Middle_Name" Type="String" />
                    <asp:Parameter Name="Last_Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Pin_Code" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Area_Code" Type="String" />
                    <asp:Parameter Name="Resident_No" Type="String" />
                    <asp:Parameter Name="Mobile_No" Type="String" />
                    <asp:Parameter Name="E_Mail" Type="String" />
                    <asp:Parameter Name="Birth_Date" Type="DateTime" />
                    <asp:Parameter Name="SSC_Percentage" Type="Decimal" />
                    <asp:Parameter Name="SSC_Board" Type="String" />
                    <asp:Parameter Name="HSC_Percentage" Type="Decimal" />
                    <asp:Parameter Name="HSC_Board" Type="String" />
                    <asp:Parameter Name="Bachelors_Course" Type="String" />
                    <asp:Parameter Name="Bachelors_Percentage" Type="Decimal" />
                    <asp:Parameter Name="Bachelors_University" Type="String" />
                    <asp:Parameter Name="Post_Graduation_Course" Type="String" />
                    <asp:Parameter Name="Post_Graduation_Percentage" Type="Decimal" />
                    <asp:Parameter Name="Post_Graduation_University" Type="String" />
                    <asp:Parameter Name="Other_Course" Type="String" />
                    <asp:Parameter Name="Other_Course_Percentage" Type="Decimal" />
                    <asp:Parameter Name="Other_Course_University" Type="String" />
                    <asp:Parameter Name="Additional_Info" Type="String" />
                    <asp:Parameter Name="Login_Id" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                DefaultMode="Edit">
                <EditItemTemplate>
                <fieldset> 
                <legend> <h2> Edit Your Details </h2></legend>
                    <table style="width: 100%">
                        <tr>
                            <td>
                                Login Id</td>
                            <td>
                                <asp:TextBox ID="Login_IdTextBox" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("Login_Id") %>' ToolTip="Can not Change..."></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                First Name</td>
                            <td>
                                <asp:TextBox ID="First_NameTextBox" runat="server" 
                                    Text='<%# Bind("First_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Middle Name</td>
                            <td>
                                <asp:TextBox ID="Middle_NameTextBox" runat="server" 
                                    Text='<%# Bind("Middle_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Last Name</td>
                            <td>
                                <asp:TextBox ID="Last_NameTextBox" runat="server" Height="21px" 
                                    Text='<%# Bind("Last_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Gender</td>
                            <td>
                                <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Birth Date</td>
                            <td>
                                <asp:TextBox ID="Birth_DateTextBox" runat="server" 
                                    Text='<%# Bind("Birth_Date") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                E Mail</td>
                            <td>
                                <asp:TextBox ID="E_MailTextBox" runat="server" Text='<%# Bind("E_Mail") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Mobile No</td>
                            <td>
                                <asp:TextBox ID="Mobile_NoTextBox" runat="server" 
                                    Text='<%# Bind("Mobile_No") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                City</td>
                            <td>
                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                State</td>
                            <td>
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Pin Code</td>
                            <td>
                                <asp:TextBox ID="Pin_CodeTextBox" runat="server" 
                                    Text='<%# Bind("Pin_Code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Area Code</td>
                            <td>
                                <asp:TextBox ID="Area_CodeTextBox" runat="server" 
                                    Text='<%# Bind("Area_Code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Resident No</td>
                            <td>
                                <asp:TextBox ID="Resident_NoTextBox" runat="server" 
                                    Text='<%# Bind("Resident_No") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                SSC Board</td>
                            <td>
                                <asp:TextBox ID="SSC_BoardTextBox" runat="server" 
                                    Text='<%# Bind("SSC_Board") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                SSC Percentage</td>
                            <td>
                                <asp:TextBox ID="SSC_PercentageTextBox" runat="server" 
                                    Text='<%# Bind("SSC_Percentage") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                HSC Board</td>
                            <td>
                                <asp:TextBox ID="HSC_BoardTextBox" runat="server" 
                                    Text='<%# Bind("HSC_Board") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                HSC Percentage</td>
                            <td>
                                <asp:TextBox ID="HSC_PercentageTextBox" runat="server" 
                                    Text='<%# Bind("HSC_Percentage") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bachelors Course</td>
                            <td>
                                <asp:TextBox ID="Bachelors_CourseTextBox" runat="server" 
                                    Text='<%# Bind("Bachelors_Course") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bachelors Percentage</td>
                            <td>
                                <asp:TextBox ID="Bachelors_PercentageTextBox" runat="server" Height="21px" 
                                    Text='<%# Bind("Bachelors_Percentage") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Bachelors University</td>
                            <td>
                                <asp:TextBox ID="Bachelors_UniversityTextBox" runat="server" 
                                    Text='<%# Bind("Bachelors_University") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Post Graduation Course</td>
                            <td>
                                <asp:TextBox ID="Post_Graduation_CourseTextBox" runat="server" 
                                    Text='<%# Bind("Post_Graduation_Course") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Post Graduation Percentage</td>
                            <td>
                                <asp:TextBox ID="Post_Graduation_PercentageTextBox" runat="server" 
                                    Text='<%# Bind("Post_Graduation_Percentage") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Post Graduation University</td>
                            <td>
                                <asp:TextBox ID="Post_Graduation_UniversityTextBox" runat="server" 
                                    Text='<%# Bind("Post_Graduation_University") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Other Course&nbsp;</td>
                            <td>
                                <asp:TextBox ID="Other_CourseTextBox" runat="server" 
                                    Text='<%# Bind("Other_Course") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Other Course Percentage</td>
                            <td>
                                <asp:TextBox ID="Other_Course_PercentageTextBox" runat="server" 
                                    Text='<%# Bind("Other_Course_Percentage") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;Other Course University</td>
                            <td>
                                <asp:TextBox ID="Other_Course_UniversityTextBox" runat="server" 
                                    Text='<%# Bind("Other_Course_University") %>'></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Additional Info</td>
                            <td>
                                <asp:TextBox ID="Additional_InfoTextBox" runat="server" 
                                    Text='<%# Bind("Additional_Info") %>' Height="73px" TextMode="MultiLine" 
                                    Width="192px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CssClass ="btn btn-primary"
                                   CommandName="Update" Text="Update" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CssClass ="btn btn-success"
                                    CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                    </fieldset>
                </EditItemTemplate>
                <InsertItemTemplate>
                    Pin_Code:
                    <asp:TextBox ID="Pin_CodeTextBox" runat="server" 
                        Text='<%# Bind("Pin_Code") %>' />
                    <br />
                    First_Name:
                    <asp:TextBox ID="First_NameTextBox" runat="server" 
                        Text='<%# Bind("First_Name") %>' />
                    <br />
                    Middle_Name:
                    <asp:TextBox ID="Middle_NameTextBox" runat="server" 
                        Text='<%# Bind("Middle_Name") %>' />
                    <br />
                    Last_Name:
                    <asp:TextBox ID="Last_NameTextBox" runat="server" 
                        Text='<%# Bind("Last_Name") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    Area_Code:
                    <asp:TextBox ID="Area_CodeTextBox" runat="server" 
                        Text='<%# Bind("Area_Code") %>' />
                    <br />
                    Resident_No:
                    <asp:TextBox ID="Resident_NoTextBox" runat="server" 
                        Text='<%# Bind("Resident_No") %>' />
                    <br />
                    Mobile_No:
                    <asp:TextBox ID="Mobile_NoTextBox" runat="server" 
                        Text='<%# Bind("Mobile_No") %>' />
                    <br />
                    E_Mail:
                    <asp:TextBox ID="E_MailTextBox" runat="server" Text='<%# Bind("E_Mail") %>' />
                    <br />
                    Birth_Date:
                    <asp:TextBox ID="Birth_DateTextBox" runat="server" 
                        Text='<%# Bind("Birth_Date") %>' />
                    <br />
                    Bachelors_Percentage:
                    <asp:TextBox ID="Bachelors_PercentageTextBox" runat="server" 
                        Text='<%# Bind("Bachelors_Percentage") %>' />
                    <br />
                    Bachelors_University:
                    <asp:TextBox ID="Bachelors_UniversityTextBox" runat="server" 
                        Text='<%# Bind("Bachelors_University") %>' />
                    <br />
                    Post_Graduation_Course:
                    <asp:TextBox ID="Post_Graduation_CourseTextBox" runat="server" 
                        Text='<%# Bind("Post_Graduation_Course") %>' />
                    <br />
                    Post_Graduation_Percentage:
                    <asp:TextBox ID="Post_Graduation_PercentageTextBox" runat="server" 
                        Text='<%# Bind("Post_Graduation_Percentage") %>' />
                    <br />
                    Post_Graduation_University:
                    <asp:TextBox ID="Post_Graduation_UniversityTextBox" runat="server" 
                        Text='<%# Bind("Post_Graduation_University") %>' />
                    <br />
                    Additional_Info:
                    <asp:TextBox ID="Additional_InfoTextBox" runat="server" 
                        Text='<%# Bind("Additional_Info") %>' />
                    <br />
                    Bachelors_Course:
                    <asp:TextBox ID="Bachelors_CourseTextBox" runat="server" 
                        Text='<%# Bind("Bachelors_Course") %>' />
                    <br />
                    SSC_Percentage:
                    <asp:TextBox ID="SSC_PercentageTextBox" runat="server" 
                        Text='<%# Bind("SSC_Percentage") %>' />
                    <br />
                    SSC_Board:
                    <asp:TextBox ID="SSC_BoardTextBox" runat="server" 
                        Text='<%# Bind("SSC_Board") %>' />
                    <br />
                    HSC_Percentage:
                    <asp:TextBox ID="HSC_PercentageTextBox" runat="server" 
                        Text='<%# Bind("HSC_Percentage") %>' />
                    <br />
                    HSC_Board:
                    <asp:TextBox ID="HSC_BoardTextBox" runat="server" 
                        Text='<%# Bind("HSC_Board") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Pin_Code:
                    <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Bind("Pin_Code") %>' />
                    <br />
                    First_Name:
                    <asp:Label ID="First_NameLabel" runat="server" 
                        Text='<%# Bind("First_Name") %>' />
                    <br />
                    Middle_Name:
                    <asp:Label ID="Middle_NameLabel" runat="server" 
                        Text='<%# Bind("Middle_Name") %>' />
                    <br />
                    Last_Name:
                    <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Bind("Last_Name") %>' />
                    <br />
                    Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    Area_Code:
                    <asp:Label ID="Area_CodeLabel" runat="server" Text='<%# Bind("Area_Code") %>' />
                    <br />
                    Resident_No:
                    <asp:Label ID="Resident_NoLabel" runat="server" 
                        Text='<%# Bind("Resident_No") %>' />
                    <br />
                    Mobile_No:
                    <asp:Label ID="Mobile_NoLabel" runat="server" Text='<%# Bind("Mobile_No") %>' />
                    <br />
                    E_Mail:
                    <asp:Label ID="E_MailLabel" runat="server" Text='<%# Bind("E_Mail") %>' />
                    <br />
                    Birth_Date:
                    <asp:Label ID="Birth_DateLabel" runat="server" 
                        Text='<%# Bind("Birth_Date") %>' />
                    <br />
                    Bachelors_Percentage:
                    <asp:Label ID="Bachelors_PercentageLabel" runat="server" 
                        Text='<%# Bind("Bachelors_Percentage") %>' />
                    <br />
                    Bachelors_University:
                    <asp:Label ID="Bachelors_UniversityLabel" runat="server" 
                        Text='<%# Bind("Bachelors_University") %>' />
                    <br />
                    Post_Graduation_Course:
                    <asp:Label ID="Post_Graduation_CourseLabel" runat="server" 
                        Text='<%# Bind("Post_Graduation_Course") %>' />
                    <br />
                    Post_Graduation_Percentage:
                    <asp:Label ID="Post_Graduation_PercentageLabel" runat="server" 
                        Text='<%# Bind("Post_Graduation_Percentage") %>' />
                    <br />
                    Post_Graduation_University:
                    <asp:Label ID="Post_Graduation_UniversityLabel" runat="server" 
                        Text='<%# Bind("Post_Graduation_University") %>' />
                    <br />
                    Additional_Info:
                    <asp:Label ID="Additional_InfoLabel" runat="server" 
                        Text='<%# Bind("Additional_Info") %>' />
                    <br />
                    Bachelors_Course:
                    <asp:Label ID="Bachelors_CourseLabel" runat="server" 
                        Text='<%# Bind("Bachelors_Course") %>' />
                    <br />
                    SSC_Percentage:
                    <asp:Label ID="SSC_PercentageLabel" runat="server" 
                        Text='<%# Bind("SSC_Percentage") %>' />
                    <br />
                    SSC_Board:
                    <asp:Label ID="SSC_BoardLabel" runat="server" Text='<%# Bind("SSC_Board") %>' />
                    <br />
                    HSC_Percentage:
                    <asp:Label ID="HSC_PercentageLabel" runat="server" 
                        Text='<%# Bind("HSC_Percentage") %>' />
                    <br />
                    HSC_Board:
                    <asp:Label ID="HSC_BoardLabel" runat="server" Text='<%# Bind("HSC_Board") %>' />
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>

