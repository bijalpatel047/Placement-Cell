<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="Company_Arrival_Details.aspx.vb" Inherits="Views_Company_Company_Arrival_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">

    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Company_Arrival] WHERE [Arrival_Id] = @Arrival_Id" 
                InsertCommand="INSERT INTO [Company_Arrival] ([Arrival_Id], [Company_Name], [Course_Code], [Batch_Year], [Visit_Year], [Campus_Type], [Prefered_Skill]) VALUES (@Arrival_Id, @Company_Name, @Course_Code, @Batch_Year, @Visit_Year, @Campus_Type, @Prefered_Skill)" 
                SelectCommand="SELECT * FROM [Company_Arrival]" 
                UpdateCommand="UPDATE [Company_Arrival] SET [Company_Name] = @Company_Name, [Course_Code] = @Course_Code, [Batch_Year] = @Batch_Year, [Visit_Year] = @Visit_Year, [Campus_Type] = @Campus_Type, [Prefered_Skill] = @Prefered_Skill WHERE [Arrival_Id] = @Arrival_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Arrival_Id" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Company_Name" Type="String" />
                    <asp:Parameter Name="Course_Code" Type="String" />
                    <asp:Parameter Name="Batch_Year" Type="Int16" />
                    <asp:Parameter Name="Visit_Year" Type="Int16" />
                    <asp:Parameter Name="Campus_Type" Type="String" />
                    <asp:Parameter Name="Prefered_Skill" Type="String" />
                    <asp:Parameter Name="Arrival_Id" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="Arrival_Id" Type="String" />
                    <asp:Parameter Name="Company_Name" Type="String" />
                    <asp:Parameter Name="Course_Code" Type="String" />
                    <asp:Parameter Name="Batch_Year" Type="Int16" />
                    <asp:Parameter Name="Visit_Year" Type="Int16" />
                    <asp:Parameter Name="Campus_Type" Type="String" />
                    <asp:Parameter Name="Prefered_Skill" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <fieldset> 
            <legend > <h2> Registration of Company Arrival</h2></legend>
            <table cellpadding="4" cellspacing="4" style="width: 100%;">
                <tr>
                    <td style="width: 20%">
                        <br />
                        <asp:Label ID="lblArrivalId" runat="server" Text=" Arrival Id" 
                            style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 180px">
                        <asp:TextBox ID="textArrivalId" runat="server" Width="100px" ReadOnly="True" 
                            ToolTip="Automatic Generate" />
                        <br />
                    </td>
                    <td style="width: 61%">
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-primary" 
                            PostBackUrl="~/Views/Company/Company_Registration.aspx">New Company 
                        Registration</asp:LinkButton>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%">
                        <asp:Label ID="lblCompanyName" runat="server" Text="Company Name" 
                            style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 180px">
                        <asp:DropDownList ID="ddl_com_name" runat="server" AutoPostBack="True" 
                            DataSourceID="Company_Details" DataTextField="Company_Name" 
                            DataValueField="Company_Name" Height="30px" 
                             Width="100px">
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td style="width: 61%">
                        <br />
                        <asp:SqlDataSource ID="Company_Details" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Company_Name] FROM [Company_Details]">
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%">
                        <asp:Label ID="lblCourseCode" runat="server" Text="Course Code" 
                            style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 180px">
                        <asp:DropDownList ID="ddl_course_code" runat="server" AutoPostBack="True" 
                            DataSourceID="Course" DataTextField="Course_Code" DataValueField="Course_Code" 
                            Height="30px" Width="100px">
                            
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td style="width: 61%">
                        <br />
                        <asp:SqlDataSource ID="Course" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [Course_Code] FROM [Courses]"></asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%">
                        <asp:Label ID="lblBatchYear" runat="server" Text=" Batch Year" 
                            style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 180px">
                        <asp:DropDownList ID="ddl_batch_year" runat="server" AutoPostBack="True" 
                            DataSourceID="batchQuery" DataTextField="Batch_Year" 
                            DataValueField="Batch_Year" Height="30px" 
                            Width="100px">
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td style="width: 61%">
                        <br />
                        <asp:SqlDataSource ID="batchQuery" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Batch_Year] FROM [Batch_Master] WHERE ([Course_Code] = @Course_Code)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_course_code" DefaultValue="" 
                                    Name="Course_Code" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 35%; height: 61px">
                        <asp:Label ID="lblVisitYear" runat="server" Text="Visit Year" 
                            style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 180px; height: 61px">
                        <asp:TextBox ID="txtVisit_Year" runat="server" Width="100px" ></asp:TextBox>
                        <br />
                    </td>
                    <td style="height: 61px; width: 61%;">
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%; height: 60px">
                        <asp:Label ID="lblCampusType" runat="server" Text="Campus Type" 
                            style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 180px; height: 60px">
                        &nbsp;<asp:DropDownList ID="ddl_campus_type" runat="server" AutoPostBack="True" 
                            Height="30px" Width="50px">
                            <asp:ListItem>On</asp:ListItem>
                            <asp:ListItem>Off</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                    </td>
                    <td style="height: 60px; width: 61%;">
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width: 20%">
                        <asp:Label ID="lblPreferedSkill" runat="server" Text="Prefered Skill" 
                            style="font-size: medium"></asp:Label>
                        <br />
                    </td>
                    <td style="width: 180px">
                        <asp:TextBox ID="txtPreferedSkill" runat="server" Height="90px" 
                             TextMode="MultiLine" Width="180px" />
                        <br />
                    </td>
                    <td style="width: 61%">
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" 
                            CommandName="Cancel" CssClass="btn btn-success" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lbl_reply" runat="server" Text="Status" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
            </fieldset>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Arrival_Id" 
                DataSourceID="SqlDataSource1" 
                CaptionAlign="Top" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass ="table">
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB"/>
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="Arrival_Id" HeaderText="Arrival_Id" ReadOnly="True" 
                        SortExpression="Arrival_Id" />
                    <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                        SortExpression="Company_Name" />
                    <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" 
                        SortExpression="Course_Code" />
                    <asp:BoundField DataField="Batch_Year" HeaderText="Batch_Year" 
                        SortExpression="Batch_Year" />
                    <asp:BoundField DataField="Visit_Year" HeaderText="Visit_Year" 
                        SortExpression="Visit_Year" />
                    <asp:BoundField DataField="Campus_Type" HeaderText="Campus_Type" 
                        SortExpression="Campus_Type" />
                    <asp:BoundField DataField="Prefered_Skill" HeaderText="Prefered_Skill" 
                        SortExpression="Prefered_Skill" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </ContentTemplate>
    
    </asp:UpdatePanel>
    </form>
</asp:Content>

