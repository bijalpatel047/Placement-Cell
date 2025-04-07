<%@ Page Language="VB" MasterPageFile="~/Views/Master/Faculty.master" AutoEventWireup="false" CodeFile="Placement_Details_F.aspx.vb" Inherits="Views_Faculty_Placement_Details_F" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
   
        <ContentTemplate>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Placements.Offer_Letter_Issued, Placements.Letter_Issued_Date, Placements.Salary_Offered, Placements.Salary, Placements.Designation, Placements.Date_of_Join, Placements.Project_Offered, Placements.Stippend_Offered, Placements.Stipend, Placements.Remark, Student_Personal_Details.First_Name, Student_Personal_Details.Course_Code, Student_Personal_Details.Batch_Year, Student_Personal_Details.Last_Name, Student_Personal_Details.Gender FROM Placements INNER JOIN Student_Personal_Details ON Placements.Login_Id = Student_Personal_Details.Login_Id">
            </asp:SqlDataSource>
            <br />
            <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource1" 
                Height="360px" Width="315px" AllowPaging="True">
                <EditItemTemplate>
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
                    First_Name:
                    <asp:TextBox ID="First_NameTextBox" runat="server" 
                        Text='<%# Bind("First_Name") %>' />
                    <br />
                    Course_Code:
                    <asp:TextBox ID="Course_CodeTextBox" runat="server" 
                        Text='<%# Bind("Course_Code") %>' />
                    <br />
                    Batch_Year:
                    <asp:TextBox ID="Batch_YearTextBox" runat="server" 
                        Text='<%# Bind("Batch_Year") %>' />
                    <br />
                    Last_Name:
                    <asp:TextBox ID="Last_NameTextBox" runat="server" 
                        Text='<%# Bind("Last_Name") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
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
                    First_Name:
                    <asp:TextBox ID="First_NameTextBox" runat="server" 
                        Text='<%# Bind("First_Name") %>' />
                    <br />
                    Course_Code:
                    <asp:TextBox ID="Course_CodeTextBox" runat="server" 
                        Text='<%# Bind("Course_Code") %>' />
                    <br />
                    Batch_Year:
                    <asp:TextBox ID="Batch_YearTextBox" runat="server" 
                        Text='<%# Bind("Batch_Year") %>' />
                    <br />
                    Last_Name:
                    <asp:TextBox ID="Last_NameTextBox" runat="server" 
                        Text='<%# Bind("Last_Name") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table cellpadding="4" cellspacing="6" style="width: 100%; height: 480px;">
                        <caption style="font-weight: 700; text-align: left; font-size: medium">
                            Placement Details</caption>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                First_Name</td>
                            <td>
                                <asp:Label ID="First_NameLabel" runat="server" 
                                    Text='<%# Bind("First_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Last_Name</td>
                            <td>
                                <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Bind("Last_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Gender</td>
                            <td>
                                <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Course_Code</td>
                            <td>
                                <asp:Label ID="Course_CodeLabel" runat="server" 
                                    Text='<%# Bind("Course_Code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Batch_Year</td>
                            <td>
                                <asp:Label ID="Batch_YearLabel" runat="server" 
                                    Text='<%# Bind("Batch_Year") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Offer_Letter_Issued</td>
                            <td>
                                <asp:CheckBox ID="Offer_Letter_IssuedCheckBox" runat="server" 
                                    Checked='<%# Bind("Offer_Letter_Issued") %>' Enabled="false"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Letter_Issued_Date</td>
                            <td>
                                <asp:Label ID="Letter_Issued_DateLabel" runat="server" 
                                    Text='<%# Bind("Letter_Issued_Date") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Salary_Offered</td>
                            <td>
                                <asp:CheckBox ID="Salary_OfferedCheckBox" runat="server" 
                                    Checked='<%# Bind("Salary_Offered") %>' Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Salary</td>
                            <td>
                                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Bind("Salary") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Designation</td>
                            <td>
                                <asp:Label ID="DesignationLabel" runat="server" 
                                    Text='<%# Bind("Designation") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Date_of_Join</td>
                            <td>
                                <asp:Label ID="Date_of_JoinLabel" runat="server" 
                                    Text='<%# Bind("Date_of_Join") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Project_Offered</td>
                            <td>
                                <asp:CheckBox ID="Project_OfferedCheckBox" runat="server" 
                                    Checked='<%# Bind("Project_Offered") %>' Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Stippend_Offered</td>
                            <td>
                                <asp:CheckBox ID="Stippend_OfferedCheckBox" runat="server" 
                                    Checked='<%# Bind("Stippend_Offered") %>' Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Stipend</td>
                            <td>
                                <asp:Label ID="StipendLabel" runat="server" Text='<%# Bind("Stipend") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Remark</td>
                            <td>
                                <asp:Label ID="RemarkLabel" runat="server" Text='<%# Bind("Remark") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
            </asp:FormView>
            <br />
        </ContentTemplate>
    
    </asp:UpdatePanel>
    </form>
</asp:Content>
