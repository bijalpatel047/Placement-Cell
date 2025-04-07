<%@ Page Language="VB" MasterPageFile="~/Views/Master/Student.master" AutoEventWireup="false" CodeFile="View_Profile.aspx.vb" Inherits="Views_Student_View_Profile" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
       <center > 
       <form id="form1" runat="server">
   
    
   
    
       <asp:ScriptManager ID="ScriptManager1" runat="server">
       </asp:ScriptManager>
       
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
           <ContentTemplate>
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                   ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   
                   SelectCommand="SELECT [Login_Id], [First_Name], [Middle_Name], [Last_Name], [Gender], [Pin_Code], [City], [State], [Area_Code], [Resident_No], [Mobile_No], [E_Mail], [Birth_Date], [SSC_Percentage], [SSC_Board], [HSC_Percentage], [HSC_Board], [Bachelors_Course], [Bachelors_Percentage], [Bachelors_University], [Post_Graduation_Course], [Post_Graduation_Percentage], [Post_Graduation_University], [Other_Course], [Other_Course_Percentage], [Other_Course_University], [Additional_Info] FROM [Student_Personal_Details] WHERE ([Login_Id] = @Login_Id)">
                   <SelectParameters>
                       <asp:SessionParameter DefaultValue="" Name="Login_Id" SessionField="ID" 
                           Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>
       
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:LinkButton ID="lbtn_edit_profile" runat="server" Height="10px">Edit Profile</asp:LinkButton>
             
               <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                   Width="466px">
                   <EditItemTemplate>
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
                       <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                           CommandName="Update" Text="Update" />
                       &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                           CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                   <fieldset >
                   <legend> <h2>Your Personal Details </h2></legend>
                       <table cellpadding="4" cellspacing="6" style="width: 370px">
                           <tr>
                               <td style="width: 240px">
                                   Login Id&nbsp;</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Login_IdLabel" runat="server" Text='<%# Eval("Login_Id") %>'></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   First Name</td>
                               <td style="width: 231px">
                                   <asp:Label ID="First_NameLabel" runat="server" 
                                       Text='<%# Bind("First_Name") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Middle Name</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Middle_NameLabel" runat="server" 
                                       Text='<%# Bind("Middle_Name") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="height: 24px; width: 240px;">
                                   Last Name</td>
                               <td style="height: 24px; width: 231px;">
                                   <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Bind("Last_Name") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Gender</td>
                               <td style="width: 231px">
                                   <asp:Label ID="GenderLabel" runat="server" Text='<%# Bind("Gender") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Birth Date</td>
                               <td style="width: 100px">
                                   <asp:Label ID="Birth_DateLabel" runat="server" 
                                       Text='<%# Bind("Birth_Date") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   E Mail</td>
                               <td style="width: 231px">
                                   <asp:Label ID="E_MailLabel" runat="server" Text='<%# Bind("E_Mail") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Mobile No</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Mobile_NoLabel" runat="server" Text='<%# Bind("Mobile_No") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   City</td>
                               <td style="width: 231px">
                                   <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   State</td>
                               <td style="width: 231px">
                                   <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Pin Code</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Bind("Pin_Code") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Area Code</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Area_CodeLabel" runat="server" Text='<%# Bind("Area_Code") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Resident No</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Resident_NoLabel" runat="server" 
                                       Text='<%# Bind("Resident_No") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   SSC Percentage</td>
                               <td style="width: 231px">
                                   <asp:Label ID="SSC_PercentageLabel" runat="server" 
                                       Text='<%# Bind("SSC_Percentage") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   SSC Board</td>
                               <td style="width: 231px">
                                   <asp:Label ID="SSC_BoardLabel" runat="server" Text='<%# Bind("SSC_Board") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   HSC Percentage</td>
                               <td style="width: 231px">
                                   <asp:Label ID="HSC_PercentageLabel" runat="server" 
                                       Text='<%# Bind("HSC_Percentage") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   HSC Board</td>
                               <td style="width: 231px">
                                   <asp:Label ID="HSC_BoardLabel" runat="server" Text='<%# Bind("HSC_Board") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Bachelors Course</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Bachelors_CourseLabel" runat="server" 
                                       Text='<%# Bind("Bachelors_Course") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Bachelors Percentage</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Bachelors_PercentageLabel" runat="server" 
                                       Text='<%# Bind("Bachelors_Percentage") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Bachelors University</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Bachelors_UniversityLabel" runat="server" 
                                       Text='<%# Bind("Bachelors_University") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 255px">
                                   Post Graduation Course</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Post_Graduation_CourseLabel" runat="server" 
                                       Text='<%# Bind("Post_Graduation_Course") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Post Graduation Percentage</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Post_Graduation_PercentageLabel" runat="server" 
                                       Text='<%# Bind("Post_Graduation_Percentage") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Post Graduation University</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Post_Graduation_UniversityLabel" runat="server" 
                                       Text='<%# Bind("Post_Graduation_University") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Other Course&nbsp;</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Other_CourseLabel" runat="server" 
                                       Text='<%# Eval("Other_Course") %>'></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Other Course Percentage</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Other_Course_PercentageLabel" runat="server" 
                                       Text='<%# Eval("Other_Course_Percentage") %>'></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Other Course University</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Other_Course_UniversityLabel" runat="server" 
                                       Text='<%# Eval("Other_Course_University") %>'></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   Additional Info</td>
                               <td style="width: 231px">
                                   <asp:Label ID="Additional_InfoLabel" runat="server" 
                                       Text='<%# Bind("Additional_Info") %>' />
                               </td>
                           </tr>
                           <tr>
                               <td style="width: 240px">
                                   &nbsp;</td>
                               <td style="width: 231px">
                                   &nbsp;</td>
                           </tr>
                       </table>
                       </fieldset>
                   </ItemTemplate>
               </asp:FormView>
           </ContentTemplate>
       </asp:UpdatePanel>
   
    
   
    
    </form>
    </center>
</asp:Content>

