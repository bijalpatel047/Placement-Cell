<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Company_Arrival_Details.aspx.vb" Inherits="Views_Faculty_Company_Arrival_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> 
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
            <table style="width: 50%">
                <tr align="center">
                    <td style="width: 129px">
                        <span style="font-family: Arial, Helvetica, sans-serif; font-size: medium"><b>
                        &nbsp;Select VIsit Year</b></span> &nbsp;</td>
                    <td style="width: 114px">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="Visit_Year" 
                            DataValueField="Visit_Year" Height="30px" Width="100px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Visit_Year] FROM [Company_Arrival] ORDER BY [Visit_Year] DESC">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 129px">
                        &nbsp;</td>
                    <td style="width: 114px">
                        &nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [Company_Name], [Course_Code], [Batch_Year], [Visit_Year], [Campus_Type], [Prefered_Skill] FROM [Company_Arrival] WHERE ([Visit_Year] = @Visit_Year)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Visit_Year" 
                                    PropertyName="SelectedValue" Type="Int16" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" 
                Width ="230px" AllowPaging="True" CellPadding="4" ForeColor="#333333" 
                CellSpacing="8">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <EditItemTemplate>
                    Company_Name:
                    <asp:TextBox ID="Company_NameTextBox" runat="server" 
                        Text='<%# Bind("Company_Name") %>' />
                    <br />
                    Course_Code:
                    <asp:TextBox ID="Course_CodeTextBox" runat="server" 
                        Text='<%# Bind("Course_Code") %>' />
                    <br />
                    Batch_Year:
                    <asp:TextBox ID="Batch_YearTextBox" runat="server" 
                        Text='<%# Bind("Batch_Year") %>' />
                    <br />
                    Visit_Year:
                    <asp:TextBox ID="Visit_YearTextBox" runat="server" 
                        Text='<%# Bind("Visit_Year") %>' />
                    <br />
                    Campus_Type:
                    <asp:TextBox ID="Campus_TypeTextBox" runat="server" 
                        Text='<%# Bind("Campus_Type") %>' />
                    <br />
                    Prefered_Skill:
                    <asp:TextBox ID="Prefered_SkillTextBox" runat="server" 
                        Text='<%# Bind("Prefered_Skill") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Company_Name:
                    <asp:TextBox ID="Company_NameTextBox" runat="server" 
                        Text='<%# Bind("Company_Name") %>' />
                    <br />
                    Course_Code:
                    <asp:TextBox ID="Course_CodeTextBox" runat="server" 
                        Text='<%# Bind("Course_Code") %>' />
                    <br />
                    Batch_Year:
                    <asp:TextBox ID="Batch_YearTextBox" runat="server" 
                        Text='<%# Bind("Batch_Year") %>' />
                    <br />
                    Visit_Year:
                    <asp:TextBox ID="Visit_YearTextBox" runat="server" 
                        Text='<%# Bind("Visit_Year") %>' />
                    <br />
                    Campus_Type:
                    <asp:TextBox ID="Campus_TypeTextBox" runat="server" 
                        Text='<%# Bind("Campus_Type") %>' />
                    <br />
                    Prefered_Skill:
                    <asp:TextBox ID="Prefered_SkillTextBox" runat="server" 
                        Text='<%# Bind("Prefered_Skill") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                                    <table cellpadding="6" cellspacing="8" 
                                        
                                        style="width: 127%; font-size: small; height: 200%; font-family: Arial, Helvetica, sans-serif;" 
                                        align="center">
                        <tr>
                            <td style="font-size: large;" colspan="2">
                                Company Arrival Details</td>
                        </tr>
                                        <tr>
                                            <td style="width: 135px">
                                                &nbsp;</td>
                                            <td style="width: 57%">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 135px">
                                                Company Name</td>
                                            <td style="width: 57%">
                                                <asp:Label ID="Company_NameLabel" runat="server" 
                                                    Text='<%# Bind("Company_Name") %>' />
                                            </td>
                                        </tr>
                        <tr>
                            <td style="width: 135px">
                                Course Code</td>
                            <td style="width: 57%">
                                <asp:Label ID="Course_CodeLabel" runat="server" 
                                    Text='<%# Bind("Course_Code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 135px">
                                Batch Year</td>
                            <td style="width: 57%">
                                <asp:Label ID="Batch_YearLabel" runat="server" 
                                    Text='<%# Bind("Batch_Year") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 135px">
                                Visit Year</td>
                            <td style="width: 57%">
                                <asp:Label ID="Visit_YearLabel" runat="server" 
                                    Text='<%# Bind("Visit_Year") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 135px">
                                Campus Type</td>
                            <td style="width: 57%">
                                <asp:Label ID="Campus_TypeLabel" runat="server" 
                                    Text='<%# Bind("Campus_Type") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 135px">
                                Prefered Skill</td>
                            <td style="width: 57%">
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
    </center>
</asp:Content>

