<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Academic_Status_Report.aspx.vb" Inherits="Views_Report_Academic_Status" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
     <form id="form1" runat="server">
    <table style="width: 70%">
        <tr>
            <td style="font-size: medium; width: 171px">
                <b>&nbsp; Select Course</b></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Course_Code" 
                    DataValueField="Course_Code" Height="30px" Width="100px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Course_Code] FROM [Academic_Access]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 171px">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Academic_Access] WHERE ([Course_Code] = @Course_Code)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Course_Code" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:ListView ID="ListView1" runat="server" 
        DataKeyNames="Course_Code,Semester_No" DataSourceID="SqlDataSource2">
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="Course_CodeLabel" runat="server" 
                        Text='<%# Eval("Course_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Semester_NoLabel" runat="server" 
                        Text='<%# Eval("Semester_No") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                        Checked='<%# Eval("Is_Active") %>' Enabled="false" />
                </td>
            </tr>
        </ItemTemplate>
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="Course_CodeLabel" runat="server" 
                        Text='<%# Eval("Course_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Semester_NoLabel" runat="server" 
                        Text='<%# Eval("Semester_No") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                        Checked='<%# Eval("Is_Active") %>' Enabled="false" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="Course_CodeTextBox" runat="server" 
                        Text='<%# Bind("Course_Code") %>' />
                </td>
                <td>
                    <asp:TextBox ID="Semester_NoTextBox" runat="server" 
                        Text='<%# Bind("Semester_No") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                        Checked='<%# Bind("Is_Active") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server">
                                    Course_Code</th>
                                <th runat="server">
                                    Semester_No</th>
                                <th runat="server">
                                    Is_Active</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="Course_CodeLabel1" runat="server" 
                        Text='<%# Eval("Course_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Semester_NoLabel1" runat="server" 
                        Text='<%# Eval("Semester_No") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                        Checked='<%# Bind("Is_Active") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Label ID="Course_CodeLabel" runat="server" 
                        Text='<%# Eval("Course_Code") %>' />
                </td>
                <td>
                    <asp:Label ID="Semester_NoLabel" runat="server" 
                        Text='<%# Eval("Semester_No") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="Is_ActiveCheckBox" runat="server" 
                        Checked='<%# Eval("Is_Active") %>' Enabled="false" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    <br />
    
    </form>
    </center>
</asp:Content>

