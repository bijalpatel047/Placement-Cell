<%@ Page Language="VB" MasterPageFile="~/Views/Master/Faculty.master" AutoEventWireup="false" CodeFile="Selection_Procedure_F.aspx.vb" Inherits="Views_Faculty_Selection_Procedure_F" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT Selection_Procedure.SSC_Percentage_Criteria, Selection_Procedure.Company_Name, Selection_Procedure.HSC_Percentage_Criteria, Selection_Procedure.Aptitude_Test, Selection_Procedure.Aptitude_Test_Description, Selection_Procedure.Technical_Test, Selection_Procedure.Technical_Test_Description, Selection_Procedure.HR_Interview, Selection_Procedure.HR_Interview_Decsription, Company_Arrival.Course_Code, Company_Arrival.Batch_Year, Company_Arrival.Campus_Type, Company_Arrival.Prefered_Skill, Company_Arrival.Visit_Year FROM Selection_Procedure INNER JOIN Company_Arrival ON Selection_Procedure.Arrival_Id = Company_Arrival.Arrival_Id">
            </asp:SqlDataSource>
                <table style="width: 100%">
                    <tr>
                        <td style="width: 121px">
                            Select Company</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Company_Name] FROM [Selection_Procedure]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 121px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                DataSourceID="SqlDataSource1" Width="222px" CellPadding="4" 
                    ForeColor="#333333">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <EditItemTemplate>
                    SSC_Percentage_Criteria:
                    <asp:TextBox ID="SSC_Percentage_CriteriaTextBox" runat="server" 
                        Text='<%# Bind("SSC_Percentage_Criteria") %>' />
                    <br />
                    Company_Name:
                    <asp:TextBox ID="Company_NameTextBox" runat="server" 
                        Text='<%# Bind("Company_Name") %>' />
                    <br />
                    HSC_Percentage_Criteria:
                    <asp:TextBox ID="HSC_Percentage_CriteriaTextBox" runat="server" 
                        Text='<%# Bind("HSC_Percentage_Criteria") %>' />
                    <br />
                    Aptitude_Test:
                    <asp:CheckBox ID="Aptitude_TestCheckBox" runat="server" 
                        Checked='<%# Bind("Aptitude_Test") %>' />
                    <br />
                    Aptitude_Test_Description:
                    <asp:TextBox ID="Aptitude_Test_DescriptionTextBox" runat="server" 
                        Text='<%# Bind("Aptitude_Test_Description") %>' />
                    <br />
                    Technical_Test:
                    <asp:CheckBox ID="Technical_TestCheckBox" runat="server" 
                        Checked='<%# Bind("Technical_Test") %>' />
                    <br />
                    Technical_Test_Description:
                    <asp:TextBox ID="Technical_Test_DescriptionTextBox" runat="server" 
                        Text='<%# Bind("Technical_Test_Description") %>' />
                    <br />
                    HR_Interview:
                    <asp:CheckBox ID="HR_InterviewCheckBox" runat="server" 
                        Checked='<%# Bind("HR_Interview") %>' />
                    <br />
                    HR_Interview_Decsription:
                    <asp:TextBox ID="HR_Interview_DecsriptionTextBox" runat="server" 
                        Text='<%# Bind("HR_Interview_Decsription") %>' />
                    <br />
                    Course_Code:
                    <asp:TextBox ID="Course_CodeTextBox" runat="server" 
                        Text='<%# Bind("Course_Code") %>' />
                    <br />
                    Batch_Year:
                    <asp:TextBox ID="Batch_YearTextBox" runat="server" 
                        Text='<%# Bind("Batch_Year") %>' />
                    <br />
                    Campus_Type:
                    <asp:TextBox ID="Campus_TypeTextBox" runat="server" 
                        Text='<%# Bind("Campus_Type") %>' />
                    <br />
                    Prefered_Skill:
                    <asp:TextBox ID="Prefered_SkillTextBox" runat="server" 
                        Text='<%# Bind("Prefered_Skill") %>' />
                    <br />
                    Visit_Year:
                    <asp:TextBox ID="Visit_YearTextBox" runat="server" 
                        Text='<%# Bind("Visit_Year") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    SSC_Percentage_Criteria:
                    <asp:TextBox ID="SSC_Percentage_CriteriaTextBox" runat="server" 
                        Text='<%# Bind("SSC_Percentage_Criteria") %>' />
                    <br />
                    Company_Name:
                    <asp:TextBox ID="Company_NameTextBox" runat="server" 
                        Text='<%# Bind("Company_Name") %>' />
                    <br />
                    HSC_Percentage_Criteria:
                    <asp:TextBox ID="HSC_Percentage_CriteriaTextBox" runat="server" 
                        Text='<%# Bind("HSC_Percentage_Criteria") %>' />
                    <br />
                    Aptitude_Test:
                    <asp:CheckBox ID="Aptitude_TestCheckBox" runat="server" 
                        Checked='<%# Bind("Aptitude_Test") %>' />
                    <br />
                    Aptitude_Test_Description:
                    <asp:TextBox ID="Aptitude_Test_DescriptionTextBox" runat="server" 
                        Text='<%# Bind("Aptitude_Test_Description") %>' />
                    <br />
                    Technical_Test:
                    <asp:CheckBox ID="Technical_TestCheckBox" runat="server" 
                        Checked='<%# Bind("Technical_Test") %>' />
                    <br />
                    Technical_Test_Description:
                    <asp:TextBox ID="Technical_Test_DescriptionTextBox" runat="server" 
                        Text='<%# Bind("Technical_Test_Description") %>' />
                    <br />
                    HR_Interview:
                    <asp:CheckBox ID="HR_InterviewCheckBox" runat="server" 
                        Checked='<%# Bind("HR_Interview") %>' />
                    <br />
                    HR_Interview_Decsription:
                    <asp:TextBox ID="HR_Interview_DecsriptionTextBox" runat="server" 
                        Text='<%# Bind("HR_Interview_Decsription") %>' />
                    <br />
                    Course_Code:
                    <asp:TextBox ID="Course_CodeTextBox" runat="server" 
                        Text='<%# Bind("Course_Code") %>' />
                    <br />
                    Batch_Year:
                    <asp:TextBox ID="Batch_YearTextBox" runat="server" 
                        Text='<%# Bind("Batch_Year") %>' />
                    <br />
                    Campus_Type:
                    <asp:TextBox ID="Campus_TypeTextBox" runat="server" 
                        Text='<%# Bind("Campus_Type") %>' />
                    <br />
                    Prefered_Skill:
                    <asp:TextBox ID="Prefered_SkillTextBox" runat="server" 
                        Text='<%# Bind("Prefered_Skill") %>' />
                    <br />
                    Visit_Year:
                    <asp:TextBox ID="Visit_YearTextBox" runat="server" 
                        Text='<%# Bind("Visit_Year") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table cellpadding="6" cellspacing="8" width="250">
                        <tr>
                            <td colspan="2">
                                <b>Company Selection Procedure</b></td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                &nbsp;</td>
                            <td style="width: 123px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Company_Name</td>
                            <td style="width: 123px">
                                <asp:Label ID="Company_NameLabel" runat="server" 
                                    Text='<%# Bind("Company_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Course_Code</td>
                            <td style="width: 123px">
                                <asp:Label ID="Course_CodeLabel" runat="server" 
                                    Text='<%# Bind("Course_Code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Batch_Year</td>
                            <td style="width: 123px">
                                <asp:Label ID="Batch_YearLabel" runat="server" 
                                    Text='<%# Bind("Batch_Year") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Visit_Year</td>
                            <td style="width: 123px">
                                <asp:Label ID="Visit_YearLabel" runat="server" 
                                    Text='<%# Bind("Visit_Year") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px; height: 27px;">
                                SSC_Percentage_Criteria</td>
                            <td style="width: 123px; height: 27px;">
                                <asp:Label ID="SSC_Percentage_CriteriaLabel" runat="server" 
                                    Text='<%# Bind("SSC_Percentage_Criteria") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                HSC_Percentage_Criteria</td>
                            <td style="width: 123px">
                                <asp:Label ID="HSC_Percentage_CriteriaLabel" runat="server" 
                                    Text='<%# Bind("HSC_Percentage_Criteria") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Aptitude_Test</td>
                            <td style="width: 123px">
                                <asp:CheckBox ID="Aptitude_TestCheckBox" runat="server" 
                                    Checked='<%# Bind("Aptitude_Test") %>' Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Aptitude_Test_Description</td>
                            <td style="width: 123px">
                                <asp:Label ID="Aptitude_Test_DescriptionLabel" runat="server" 
                                    Text='<%# Bind("Aptitude_Test_Description") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Technical_Test</td>
                            <td style="width: 123px">
                                <asp:CheckBox ID="Technical_TestCheckBox" runat="server" 
                                    Checked='<%# Bind("Technical_Test") %>' Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Technical_Test_Description</td>
                            <td style="width: 123px">
                                <asp:Label ID="Technical_Test_DescriptionLabel" runat="server" 
                                    Text='<%# Bind("Technical_Test_Description") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                HR_Interview</td>
                            <td style="width: 123px">
                                <asp:CheckBox ID="HR_InterviewCheckBox" runat="server" 
                                    Checked='<%# Bind("HR_Interview") %>' Enabled="false" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                HR_Interview_Decsription</td>
                            <td style="width: 123px">
                                <asp:Label ID="HR_Interview_DecsriptionLabel" runat="server" 
                                    Text='<%# Bind("HR_Interview_Decsription") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Campus_Type</td>
                            <td style="width: 123px">
                                <asp:Label ID="Campus_TypeLabel" runat="server" 
                                    Text='<%# Bind("Campus_Type") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 185px">
                                Prefered_Skill</td>
                            <td style="width: 123px">
                                <asp:Label ID="Prefered_SkillLabel" runat="server" 
                                    Text='<%# Bind("Prefered_Skill") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
            </asp:FormView>
                  </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>

