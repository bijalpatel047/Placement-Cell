<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="Registration_All.aspx.vb" Inherits="Views_Register_Registration_All" title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Select User " 
                style="font-size: medium"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddl_type_of_users" runat="server" AutoPostBack="True" 
                Width="77px">
                <asp:ListItem>SA</asp:ListItem>
                <asp:ListItem>F</asp:ListItem>
                <asp:ListItem>S</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Panel ID="pnl_student" runat="server" Height="350px" 
                style="text-align: left" Visible="False">
                <br />
                <fieldset>
                <legend > <h2 >Student Registration</h2></legend>
                <table style="width: 67%" cellpadding="4" cellspacing="4">
                    
                                <tr>
                        <td style="width: 142px">
                            <asp:SqlDataSource ID="Course" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Course_Code] FROM [Courses]">
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 61%">
                            <asp:SqlDataSource ID="Batch_Master" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Batch_Master] WHERE ([Course_Code] = @Course_Code)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="ddl_course" Name="Course_Code" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td style="width: 11%">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [Login] WHERE [Login_Id] = @original_Login_Id" 
                                InsertCommand="INSERT INTO [Login] ([Login_Id], [User_Name], [Password], [Type_of_Users], [Is_Active], [Is_Registered]) VALUES (@Login_Id, @User_Name, @Password, @Type_of_Users, @Is_Active, @Is_Registered)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT * FROM [Login] WHERE ([Type_of_Users] = @Type_of_Users)" 
                                
                                
                                
                                UpdateCommand="UPDATE [Login] SET [User_Name] = @User_Name, [Password] = @Password, [Type_of_Users] = @Type_of_Users, [Is_Active] = @Is_Active, [Is_Registered] = @Is_Registered WHERE [Login_Id] = @original_Login_Id">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="S" Name="Type_of_Users" Type="String" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Login_Id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="User_Name" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Type_of_Users" Type="String" />
                                    <asp:Parameter Name="Is_Active" Type="Boolean" />
                                    <asp:Parameter Name="Is_Registered" Type="Boolean" />
                                    <asp:Parameter Name="original_Login_Id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Login_Id" Type="String" />
                                    <asp:Parameter Name="User_Name" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Type_of_Users" Type="String" />
                                    <asp:Parameter Name="Is_Active" Type="Boolean" />
                                    <asp:Parameter Name="Is_Registered" Type="Boolean" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            <asp:Label ID="lbl_select_course" runat="server" Text="Select Course" 
                                style="font-size: medium"></asp:Label>
                            </td>
                        <td style="width: 61%">
                            &nbsp;
                            <asp:DropDownList ID="ddl_course" runat="server" AutoPostBack="True" 
                                DataSourceID="Course" DataTextField="Course_Code" DataValueField="Course_Code" 
                                Height="33px" ToolTip="Select Course" Width="90px">
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lbl_Enrollment_Year" runat="server" style="font-size: medium" 
                                Text="Enrollment Year"></asp:Label>
                        </td>
                        <td>
                            &nbsp;
                            <asp:DropDownList ID="ddl_year" runat="server" AutoPostBack="True" 
                                DataSourceID="Batch_Master" DataTextField="Batch_Year" 
                                DataValueField="Batch_Year" Height="33px" ToolTip="Select Year" Width="94px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            <asp:Button ID="btn_submit" runat="server" class="btn btn-primary" 
                                Text="Submit" Width="100px" />
                        </td>
                        <td style="width: 61%">
                            &nbsp;</td>
                        <td style="width: 11%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            &nbsp;</td>
                        <td style="width: 61%">
                            &nbsp;</td>
                        <td style="width: 11%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            <asp:Label ID="lbl_student_id" runat="server" Text="Student Id" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 61%">
                            <asp:TextBox ID="txt_student_id_1" runat="server" 
                                ToolTip="Enter student Course &amp;  Year" Width="135px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txt_student_id_2" runat="server" 
                                ToolTip="Enter Student Roll No" Width="70px"></asp:TextBox>
                        </td>
                        <td style="width: 11%">
                            <asp:Button ID="btn_create" runat="server" class="btn btn-primary" 
                                Text="Create" Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <p class="style1">
                                <span style="font-size: medium">&nbsp;Student Id is</span>
                                <asp:Label ID="lbl_display_student_id" runat="server" Text="Blank" 
                                    style="font-size: medium"></asp:Label>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            <asp:Label ID="lbl_s_name" runat="server" Text="User Name" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 61%">
                            <asp:TextBox ID="txt_s_name" runat="server" Width="220px"></asp:TextBox>
                        </td>
                        <td style="width: 11%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            <asp:Label ID="lbl_password" runat="server" Text="Password" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 61%">
                            <asp:TextBox ID="txt_password" runat="server" ToolTip="  " 
                                Width="220px"></asp:TextBox>
                        </td>
                        <td style="width: 11%">
                            <asp:Button ID="btn_generate_password" runat="server" class="btn btn-primary" 
                                Text="Generate Password" Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            <asp:Label ID="lbl_email" runat="server" Text="Email Id" 
                                style="font-size: medium"></asp:Label>
                        </td>
                        <td style="width: 61%">
                            <asp:TextBox ID="txt_email" runat="server" ToolTip="Enter Student Email Id" 
                                Width="220px"></asp:TextBox>
                        </td>
                        <td style="width: 11%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            &nbsp;</td>
                        <td style="width: 61%">
                            &nbsp;</td>
                        <td style="width: 11%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btn_register" runat="server" class="btn btn-primary" 
                                Text="Register" Width="100px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_cancel1" runat="server" class="btn btn-success" 
                                Text="Cancel" Width="100px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                                ID="btn_s_view_details" runat="server" 
                                class="btn btn-danger" Text="View Details" Width="100px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 142px">
                            &nbsp;</td>
                        <td style="width: 61%">
                            &nbsp;</td>
                        <td style="width: 11%">
                            &nbsp;</td>
                    </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="lbl_s_reply" runat="server" Font-Bold="True" ForeColor="#66CCFF" 
                                            Text="Status" Visible="False"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        &nbsp;<asp:Label ID="lbl_s_reply_2" runat="server" Font-Bold="True" 
                                            ForeColor="#66CCFF" Text="Status for Mail" Visible="False"></asp:Label>
                                        &nbsp;</td>
                                </tr>
                </table>
                </fieldset>
                <br />
                <br />
                    </asp:Panel>
                    <br />
                    <asp:Panel ID="pnl_faculty" runat="server" Height="201px" 
                Visible="False">
                        <fieldset>
                        <legend > <h2> Registration of Faculty</h2></legend>
                            <table cellpadding="6" cellspacing="8" style="width: 100%">
                                
                                <tr>
                                    <td style="width: 112px; height: 23px; font-size: medium;">
                                        &nbsp;&nbsp;User&nbsp;Name</td>
                                    <td style="width: 206px; height: 23px;">
                                        <asp:TextBox ID="txt_f_name" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 493px; height: 23px;">
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 112px; height: 9px; font-size: medium;">
                                        &nbsp; Password</td>
                                    <td style="width: 206px; height: 9px;">
                                        <asp:TextBox ID="txt_f_pwd" runat="server"></asp:TextBox>
                                    </td>
                                    <td style="width: 493px; height: 9px;">
                                        <asp:Button ID="btn_f_pwd" runat="server" CssClass="btn btn-primary" 
                                            Text="Generate Password" Width="170px" />
                                        </td>
                                </tr>
                                <tr>
                                    <td style="width: 112px; font-size: medium;">
                                        &nbsp; E Mail Id</td>
                                    <td style="width: 206px; ">
                                        <asp:TextBox ID="txt_f_mail" runat="server" Width="154px"></asp:TextBox>
                                    </td>
                                    <td style="width: 493px; ">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 112px">
                                        &nbsp;</td>
                                    <td style="width: 206px">
                                        &nbsp;</td>
                                    <td style="width: 493px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="btn_f_reg" runat="server" class="btn btn-primary" 
                                            Text="Register" Width="100px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="btn_f_cancel" runat="server" class="btn btn-success" 
                                            Text="Cancel" Width="100px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btn_f_view" 
                                            runat="server" CssClass="btn btn-danger" Text="View Details" Width="100px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [Login] WHERE [Login_Id] = @Login_Id" 
                                            InsertCommand="INSERT INTO [Login] ([Login_Id], [User_Name], [Password], [Type_of_Users], [Is_Active], [Is_Registered]) VALUES (@Login_Id, @User_Name, @Password, @Type_of_Users, @Is_Active, @Is_Registered)" 
                                            SelectCommand="SELECT * FROM [Login] WHERE ([Type_of_Users] = @Type_of_Users)" 
                                            UpdateCommand="UPDATE [Login] SET [User_Name] = @User_Name, [Password] = @Password, [Type_of_Users] = @Type_of_Users, [Is_Active] = @Is_Active, [Is_Registered] = @Is_Registered WHERE [Login_Id] = @Login_Id">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="F" Name="Type_of_Users" Type="String" />
                                            </SelectParameters>
                                            <DeleteParameters>
                                                <asp:Parameter Name="Login_Id" Type="String" />
                                            </DeleteParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="User_Name" Type="String" />
                                                <asp:Parameter Name="Password" Type="String" />
                                                <asp:Parameter Name="Type_of_Users" Type="String" />
                                                <asp:Parameter Name="Is_Active" Type="Boolean" />
                                                <asp:Parameter Name="Is_Registered" Type="Boolean" />
                                                <asp:Parameter Name="Login_Id" Type="String" />
                                            </UpdateParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="Login_Id" Type="String" />
                                                <asp:Parameter Name="User_Name" Type="String" />
                                                <asp:Parameter Name="Password" Type="String" />
                                                <asp:Parameter Name="Type_of_Users" Type="String" />
                                                <asp:Parameter Name="Is_Active" Type="Boolean" />
                                                <asp:Parameter Name="Is_Registered" Type="Boolean" />
                                            </InsertParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;&nbsp;
                                        <asp:Label ID="lbl_f_reply" runat="server" Text="Status" Visible="False"></asp:Label>
                                    </td>
                                    <td style="width: 493px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;<asp:Label ID="lbl_f_reply_2" runat="server" Text="Status For Mail" 
                                            Visible="False"></asp:Label>
                                        &nbsp;</td>
                                    <td style="width: 493px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;</td>
                                    <td style="width: 493px">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </fieldset>
                        <br />
                      
            </asp:Panel>
                    <br />
            <asp:Panel ID="pnl_SubAdmin" runat="server">
                <fieldset> 
                <legend > <h2> Registration of SubAdmin</h2></legend>
                <table style="width: 100%">
                    <tr>
                        <td style="font-size: medium">
                            &nbsp; User Name</td>
                        <td>
                            <asp:TextBox ID="txt_sa_uname" runat="server" ToolTip="Enter User Name"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp; <span style="font-size: medium">Password</span></td>
                        <td>
                            <asp:TextBox ID="txt_sa_pwd" runat="server" 
                                ToolTip="Click On &quot;Generate Password &quot; Button"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btn_sa_pwd" runat="server" CssClass="btn btn-primary" 
                                Text="Generate Password" />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: medium">
                            &nbsp; Email Id</td>
                        <td>
                            <asp:TextBox ID="txt_sa_email" runat="server" ToolTip="Enter SubAdmin Email Id"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btn_sa_register" runat="server" CssClass="btn btn-primary" 
                                Text="Register" Width="100px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_sa_cancel" runat="server" CssClass="btn btn-success" 
                                Text="Cancel" Width="100px" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btn_sa_view" runat="server" CssClass="btn btn-danger" 
                                Text="View Details" Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [Login] WHERE [Login_Id] = @Login_Id" 
                                InsertCommand="INSERT INTO [Login] ([Login_Id], [User_Name], [Password], [Type_of_Users], [Is_Active], [Is_Registered]) VALUES (@Login_Id, @User_Name, @Password, @Type_of_Users, @Is_Active, @Is_Registered)" 
                                SelectCommand="SELECT * FROM [Login] WHERE ([Type_of_Users] = @Type_of_Users)" 
                                UpdateCommand="UPDATE [Login] SET [User_Name] = @User_Name, [Password] = @Password, [Type_of_Users] = @Type_of_Users, [Is_Active] = @Is_Active, [Is_Registered] = @Is_Registered WHERE [Login_Id] = @Login_Id">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="SA" Name="Type_of_Users" Type="String" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="Login_Id" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="User_Name" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Type_of_Users" Type="String" />
                                    <asp:Parameter Name="Is_Active" Type="Boolean" />
                                    <asp:Parameter Name="Is_Registered" Type="Boolean" />
                                    <asp:Parameter Name="Login_Id" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Login_Id" Type="String" />
                                    <asp:Parameter Name="User_Name" Type="String" />
                                    <asp:Parameter Name="Password" Type="String" />
                                    <asp:Parameter Name="Type_of_Users" Type="String" />
                                    <asp:Parameter Name="Is_Active" Type="Boolean" />
                                    <asp:Parameter Name="Is_Registered" Type="Boolean" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            &nbsp;<asp:Label ID="lbl_sa_reply" runat="server" Text="Status For Registartion" 
                                Visible="False"></asp:Label>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="lbl_sa_reply_2" runat="server" Text="Status For Mail" 
                                Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                </fieldset></asp:Panel>
                    <br />
           <br /><br />
                  
               <div ID="scroll" style="width: 700px;
               height: 350px;
                overflow-x: scroll;
                overflow-y: scroll;
                max-width:750px;
                max-height:250px;">
                
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="Login_Id" ForeColor="#333333" 
                        GridLines="None" Height="200px"  
                        style="text-align: left; margin-right: 162px;" Width="700px" 
                        Visible="False" CssClass="table">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="Login_Id" HeaderText="Login Id" ReadOnly="True" 
                                SortExpression="Login_Id" />
                            <asp:BoundField DataField="User_Name" HeaderText="User Name" 
                                SortExpression="User_Name" />
                             <asp:BoundField DataField="Password" HeaderText="Password" 
                                SortExpression="Password" />
                            <asp:BoundField DataField="Type_of_Users" HeaderText="Type of Users" 
                                SortExpression="Type_of_Users" />
                            <asp:CheckBoxField DataField="Is_Active" HeaderText="Is Active" 
                                SortExpression="Is_Active" />
                            <asp:CheckBoxField DataField="Is_Registered" HeaderText="Is Registered" 
                                SortExpression="Is_Registered" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle 
                            VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
          </ContentTemplate>
    </asp:UpdatePanel>
  
    </form>
   
</asp:Content>
