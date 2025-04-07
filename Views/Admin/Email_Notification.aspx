<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="True" CodeFile="Email_Notification.aspx.vb" Inherits="Views_Admin_Email_Notification" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
 
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            
            <fieldset>
             <legend>  <h2>
                             Notification
                         </h2>  
             </legend>
                   
 <table>
                     <tr>
                         <td style="width: 113px">
                           <br />
                             <asp:Label ID="lblSelectCourse" runat="server" Text="Select Course" 
                                 style="font-size: medium"></asp:Label>
                              <br />
                         </td>
                        
                         <td>
                           <br />
                             <asp:DropDownList ID="ddl_course" runat="server" AutoPostBack="True" DataSourceID ="SqlDataSource1"
                                  DataTextField="Course_Code" 
                                 DataValueField="Course_Code" Height="36px" Width="100px">
                             </asp:DropDownList>
                              <br />
                         </td>
                         <td>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                 
                                 SelectCommand="SELECT DISTINCT [Course_Code] FROM [Student_Personal_Details]"></asp:SqlDataSource>
                         </td>
                     </tr>
                     
                     <tr>
                         <td style="width: 113px">
                           <br />
                             <asp:Label ID="lblSelectYear" runat="server" Text="Select Year" 
                                 style="font-size: medium"></asp:Label>
                              <br />
                         </td>
                         
                         <td>
                         <br/>
                             <asp:DropDownList ID="ddl_year" runat="server" AutoPostBack="True" DataSourceID = "SqlDataSource2" 
                                  DataTextField="Batch_Year" 
                                 DataValueField="Batch_Year" Width="100px" Height="36px">
                             </asp:DropDownList>
                              <br />
                         </td>
                         <td>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                 
                                 
                                 SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Student_Personal_Details] WHERE ([Course_Code] = @Course_Code)">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="ddl_course" 
                                         Name="Course_Code" PropertyName="SelectedValue" Type="String" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                         </td>
                        
                     </tr>
                     
                     <tr>
                         <td style="width: 113px">
                           <br />
                             <asp:Label ID="lblMessage" runat="server" Text="Message" 
                                 style="font-size: medium"></asp:Label>
                          <br />
                         </td>
                         <td>
                           <br />
                             <asp:TextBox ID="txtMessage" runat="server" Height="113px" TextMode="MultiLine" 
                                 Width="205px"></asp:TextBox>
                          <br />
                         </td>
                     </tr>
                     <tr>
                         <td colspan="2">
                             <asp:LinkButton ID="btnSubmit" runat="server" class="btn btn-primary" 
                                 Width="80px">Submit</asp:LinkButton>
                             &nbsp;&nbsp;&nbsp;
                             <asp:Button ID="btn_cancel" runat="server" class="btn btn-success" 
                                 Text="Cancel" Width="80px" />
                         </td>
                     </tr>
  </table>
            </fieldset>
            <br />&nbsp;&nbsp;&nbsp;
            
            

    
           
    <br />
  <asp:LinkButton ID="btnSendNotification" class="btn btn-primary" runat="server">Send 
            Notification</asp:LinkButton>
            <br />
            <br />
            <asp:Label ID="lbl_reply" runat="server" Text="Status" Visible="False"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Student_Personal_Details] WHERE [Login_Id] = @Login_Id AND [E_Mail] = @E_Mail" 
                InsertCommand="INSERT INTO [Student_Personal_Details] ([Login_Id], [First_Name], [Last_Name], [Gender], [E_Mail]) VALUES (@Login_Id, @First_Name, @Last_Name, @Gender, @E_Mail)" 
                SelectCommand="SELECT [Login_Id], [First_Name], [Last_Name], [Gender], [E_Mail] FROM [Student_Personal_Details] WHERE (([Course_Code] = @Course_Code) AND ([Batch_Year] = @Batch_Year))" 
                UpdateCommand="UPDATE [Student_Personal_Details] SET [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Gender] = @Gender WHERE [Login_Id] = @Login_Id AND [E_Mail] = @E_Mail">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddl_course" Name="Course_Code" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="ddl_year" Name="Batch_Year" 
                        PropertyName="SelectedValue" Type="Int16" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="Login_Id" Type="String" />
                    <asp:Parameter Name="E_Mail" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="Last_Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Login_Id" Type="String" />
                    <asp:Parameter Name="E_Mail" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="Login_Id" Type="String" />
                    <asp:Parameter Name="First_Name" Type="String" />
                    <asp:Parameter Name="Last_Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="E_Mail" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                CaptionAlign="Top" 
                DataKeyNames="Login_Id,E_Mail" DataSourceID="SqlDataSource3" 
                Visible="False" CssClass="table">
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <Columns>
                    <asp:BoundField DataField="Login_Id" HeaderText="Login Id" ReadOnly="True" 
                        SortExpression="Login_Id" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" 
                        SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last Name" 
                        SortExpression="Last_Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="E_Mail" HeaderText="E Mail" ReadOnly="True" 
                        SortExpression="E_Mail" />
                    <asp:CommandField 
                        ShowSelectButton="True" />
                </Columns>
                <PagerStyle VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:GridView>
            <br />
          
        </ContentTemplate>
    </asp:UpdatePanel>
    
    </form>
</asp:Content>

