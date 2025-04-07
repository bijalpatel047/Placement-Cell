<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="View_Company_Placement_Details.aspx.vb" Inherits="Views_Company_View_Company_Placement_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Placements] WHERE [Login_Id] = @Login_Id AND [Arrival_Id] = @Arrival_Id" 
                InsertCommand="INSERT INTO [Placements] ([Placement_Id], [Login_Id], [Arrival_Id], [Offer_Letter_Issued], [Letter_Issued_Date], [Salary_Offered], [Salary], [Designation], [Date_of_Join], [Project_Offered], [Stippend_Offered], [Stipend], [Remark]) VALUES (@Placement_Id, @Login_Id, @Arrival_Id, @Offer_Letter_Issued, @Letter_Issued_Date, @Salary_Offered, @Salary, @Designation, @Date_of_Join, @Project_Offered, @Stippend_Offered, @Stipend, @Remark)" 
                SelectCommand="SELECT * FROM [Placements]" 
                UpdateCommand="UPDATE [Placements] SET [Placement_Id] = @Placement_Id, [Offer_Letter_Issued] = @Offer_Letter_Issued, [Letter_Issued_Date] = @Letter_Issued_Date, [Salary_Offered] = @Salary_Offered, [Salary] = @Salary, [Designation] = @Designation, [Date_of_Join] = @Date_of_Join, [Project_Offered] = @Project_Offered, [Stippend_Offered] = @Stippend_Offered, [Stipend] = @Stipend, [Remark] = @Remark WHERE [Login_Id] = @Login_Id AND [Arrival_Id] = @Arrival_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Login_Id" Type="String" />
                    <asp:Parameter Name="Arrival_Id" Type="String" />
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
                    <asp:Parameter Name="Login_Id" Type="String" />
                    <asp:Parameter Name="Arrival_Id" Type="String" />
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
            <br />
             <div ID="scroll" style="width: 750px;
               height: 450px;
                overflow-x: scroll;
                overflow-y: scroll;
                max-width:850px;
                max-height:350px;">

            
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                DataKeyNames="Login_Id,Arrival_Id" DataSourceID="SqlDataSource1" 
                    CaptionAlign="Top" 
                CellPadding="4" ForeColor="#333333" GridLines="None" CssClass ="table">
                <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="Placement_Id" HeaderText="Placement Id" 
                        SortExpression="Placement_Id" />
                    <asp:BoundField DataField="Login_Id" HeaderText="Login Id" ReadOnly="True" 
                        SortExpression="Login Id" />
                    <asp:BoundField DataField="Arrival_Id" HeaderText="Arrival Id" ReadOnly="True" 
                        SortExpression="Arrival Id" />
                    <asp:CheckBoxField DataField="Offer_Letter_Issued" 
                        HeaderText="Offer Letter Issued" SortExpression="Offer_Letter_Issued" />
                    <asp:BoundField DataField="Letter_Issued_Date" HeaderText="Letter Issued Date" 
                        SortExpression="Letter_Issued_Date" DataFormatString="{0:d}" />
                    <asp:CheckBoxField DataField="Salary_Offered" HeaderText="Salary Offered" 
                        SortExpression="Salary_Offered" />
                    <asp:BoundField DataField="Salary" HeaderText="Salary" 
                        SortExpression="Salary" />
                    <asp:BoundField DataField="Designation" HeaderText="Designation" 
                        SortExpression="Designation" />
                    <asp:BoundField DataField="Date_of_Join" HeaderText="Date  of Join" 
                        SortExpression="Date_of_Join" DataFormatString="{0:d}" />
                    <asp:CheckBoxField DataField="Project_Offered" HeaderText="Project Offered" 
                        SortExpression="Project_Offered" />
                    <asp:CheckBoxField DataField="Stippend_Offered" HeaderText="Stippend Offered" 
                        SortExpression="Stippend_Offered" />
                    <asp:BoundField DataField="Stipend" HeaderText="Stipend" 
                        SortExpression="Stipend" />
                    <asp:BoundField DataField="Remark" HeaderText="Remark" 
                        SortExpression="Remark" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                </Columns>
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            <EditRowStyle BackColor="#2461BF" />
                            <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            </div>
            
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>

