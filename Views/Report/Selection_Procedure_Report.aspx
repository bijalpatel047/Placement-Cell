<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Selection_Procedure_Report.aspx.vb" Inherits="Views_Report_Selection_Procedure_Report" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table style="width: 70%">
                <tr>
                    <td>
                        &nbsp;Select Company&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="Company_Name" 
                            DataValueField="Company_Name">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Company_Name] FROM [Company_Arrival]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT Company_Arrival.Visit_Year, Company_Arrival.Campus_Type, Company_Arrival.Prefered_Skill, Company_Arrival.Company_Name, Company_Arrival.Course_Code, Company_Arrival.Batch_Year, Selection_Procedure.SSC_Percentage_Criteria, Selection_Procedure.HSC_Percentage_Criteria, Selection_Procedure.Aptitude_Test, Selection_Procedure.Aptitude_Test_Description, Selection_Procedure.Technical_Test, Selection_Procedure.Technical_Test_Description, Selection_Procedure.HR_Interview, Selection_Procedure.HR_Interview_Decsription FROM Company_Arrival INNER JOIN Selection_Procedure ON Company_Arrival.Arrival_Id = Selection_Procedure.Arrival_Id WHERE (Company_Arrival.Company_Name = @Company_Name)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Company_Name" 
                                    PropertyName="SelectedValue" />
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
            <div id="scroll" style="width: 550px;
                height: 400px;
                overflow-x: scroll;
                overflow-y: scroll;
                max-width:600px;
                max-height:400px;">

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
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
                    <asp:BoundField DataField="SSC_Percentage_Criteria" 
                        HeaderText="SSC_Percentage_Criteria" SortExpression="SSC_Percentage_Criteria" />
                    <asp:BoundField DataField="HSC_Percentage_Criteria" 
                        HeaderText="HSC_Percentage_Criteria" SortExpression="HSC_Percentage_Criteria" />
                    <asp:CheckBoxField DataField="Aptitude_Test" HeaderText="Aptitude_Test" 
                        SortExpression="Aptitude_Test" />
                    <asp:BoundField DataField="Aptitude_Test_Description" 
                        HeaderText="Aptitude_Test_Description" 
                        SortExpression="Aptitude_Test_Description" />
                    <asp:CheckBoxField DataField="Technical_Test" HeaderText="Technical_Test" 
                        SortExpression="Technical_Test" />
                    <asp:BoundField DataField="Technical_Test_Description" 
                        HeaderText="Technical_Test_Description" 
                        SortExpression="Technical_Test_Description" />
                    <asp:CheckBoxField DataField="HR_Interview" HeaderText="HR_Interview" 
                        SortExpression="HR_Interview" />
                    <asp:BoundField DataField="HR_Interview_Decsription" 
                        HeaderText="HR_Interview_Decsription" 
                        SortExpression="HR_Interview_Decsription" />
                    <asp:BoundField DataField="Prefered_Skill" HeaderText="Prefered_Skill" 
                        SortExpression="Prefered_Skill" />
                </Columns>
            </asp:GridView>
            </div> 
            <br />
            
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>

