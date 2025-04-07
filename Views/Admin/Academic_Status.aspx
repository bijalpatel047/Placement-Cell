<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="Academic_Status.aspx.vb" Inherits="Views_Admin_Academic_Status" title="Untitled Page" %>


<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Academic_Access] WHERE [Course_Code] = @Course_Code AND [Semester_No] = @Semester_No" 
                InsertCommand="INSERT INTO [Academic_Access] ([Course_Code], [Semester_No], [Is_Active]) VALUES (@Course_Code, @Semester_No, @Is_Active)" 
                SelectCommand="SELECT * FROM [Academic_Access]" 
                UpdateCommand="UPDATE [Academic_Access] SET [Is_Active] = @Is_Active WHERE [Course_Code] = @Course_Code AND [Semester_No] = @Semester_No">
                <DeleteParameters>
                    <asp:Parameter Name="Course_Code" Type="String" />
                    <asp:Parameter Name="Semester_No" Type="Byte" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Is_Active" Type="Boolean" />
                    <asp:Parameter Name="Course_Code" Type="String" />
                    <asp:Parameter Name="Semester_No" Type="Byte" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="Course_Code" Type="String" />
                    <asp:Parameter Name="Semester_No" Type="Byte" />
                    <asp:Parameter Name="Is_Active" Type="Boolean" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <asp:FormView ID="FormView1" runat="server" 
                DataKeyNames="Course_Code,Semester_No" DataSourceID="SqlDataSource1" 
                DefaultMode="Insert" Width="282px">
                <EditItemTemplate>
                    Course_Code:
                    <asp:Label ID="Course_CodeLabel1" runat="server" 
                        Text='<%# Eval("Course_Code") %>' />
                    <br />
                    Semester_No:
                    <asp:Label ID="Semester_NoLabel1" runat="server" 
                        Text='<%# Eval("Semester_No") %>' />
                    <br />
                    Is_Active:
                    <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                        Checked='<%# Bind("Is_Active") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                <fieldset> 
                <legend> <h2> Academic Details</h2></legend>
                    <table cellpadding="4" cellspacing="6" style="width: 130%; height: 150px;">
                        <tr>
                            <td style="width: 215px; font-size: medium;">
                                &nbsp; Course Code</td>
                            <td style="width: 233px">
                                <asp:DropDownList ID="ddl_course" runat="server" AutoPostBack="True" 
                                    DataSourceID="SqlDataSource2" DataTextField="Course_Code" 
                                    DataValueField="Course_Code" Height="30px" 
                                    SelectedValue='<%# Bind("Course_Code") %>' >
                                    
                                </asp:DropDownList>
                            </td>
                            <td style="width: 277px">
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    SelectCommand="SELECT DISTINCT [Course_Code] FROM [Courses]">
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 215px; font-size: medium;">
                                &nbsp; Semester No</td>
                            <td style="width: 233px">
                                <asp:DropDownList ID="ddl_sem_no" runat="server" AutoPostBack="True" 
                                    Height="30px" SelectedValue='<%# bind("Semester_No") %>' Width="100px">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td style="width: 277px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 215px; font-size: medium;">
                                &nbsp; Is Active</td>
                            <td style="width: 233px">
                                <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                                    Checked='<%# Bind("Is_Active") %>' />
                            </td>
                            <td style="width: 277px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 215px">
                                &nbsp;</td>
                            <td style="width: 233px">
                                &nbsp;</td>
                            <td style="width: 277px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insert" CssClass="btn btn-primary"/>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="Cancel" CssClass="btn btn-success" />
                            </td>
                        </tr>
                    </table>
                    
                    </fieldset>
                    <br />
                </InsertItemTemplate>
                <ItemTemplate>
                    Course_Code:
                    <asp:Label ID="Course_CodeLabel" runat="server" 
                        Text='<%# Eval("Course_Code") %>' />
                    <br />
                    Semester_No:
                    <asp:Label ID="Semester_NoLabel" runat="server" 
                        Text='<%# Eval("Semester_No") %>' />
                    <br />
                    Is_Active:
                    <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                        Checked='<%# Bind("Is_Active") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />  
             <div ID="scroll" style="width: 750px;
               height: 350px;
                overflow-x: scroll;
                overflow-y: scroll;
                max-width:800px;
                max-height:250px;">
                
                
            <asp:GridView ID="GridView1" runat="server" 
                AllowSorting="True" AutoGenerateColumns="False" CssClass="table" 
                DataKeyNames="Course_Code,Semester_No" DataSourceID="SqlDataSource1" 
                CellPadding="4" ForeColor="#333333" GridLines="None" >
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="Course_Code" HeaderText="Course Code" 
                        ReadOnly="True" SortExpression="Course_Code" />
                    <asp:BoundField DataField="Semester_No" HeaderText="Semester No" 
                        ReadOnly="True" SortExpression="Semester_No" />
                    <asp:CheckBoxField DataField="Is_Active" HeaderText="Is Active" 
                        SortExpression="Is_Active" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" HeaderText="Action" />
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
            
        </ContentTemplate>
    </asp:UpdatePanel>

    </form>
</asp:Content>

