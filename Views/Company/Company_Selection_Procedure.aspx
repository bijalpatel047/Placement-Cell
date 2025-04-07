<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="True" CodeFile="Company_Selection_Procedure.aspx.vb" Inherits="Views_Company_Company_Selection_Procedure" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
 
    <form id="form1" runat="server">
    <p>
        <br />
    </p>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           <fieldset>
           <legend>
           <h2>
               Company Selection Procedure
           </h2>
           </legend> 
           
           <table>
           <tr>
                   <td>
                       <asp:Label ID="lblArrivalId" runat="server" Text="Arrival Id " 
                           style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                        
                   <td>
                       <asp:DropDownList ID="ddlArrivalId" runat="server" 
                           DataSourceID ="SqlDataSource1"  runat="server" Height="30px" Width="130px" 
                    CssClass="input-small"
                     DataTextField="Arrival_Id" DataValueField="Arrival_Id" AutoPostBack="True">
                       </asp:DropDownList> 
                   <br />
                   </td>
                   <td>
                   <br />
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Arrival_Id] FROM [Company_Arrival] ORDER BY [Arrival_Id] DESC" 
                         ></asp:SqlDataSource>
                   <br />
                   </td>
            </tr>
            
            <tr>
            
                     <td height="40">
                            <asp:Label ID="lblCompanyName" runat="server" Text="Company Name" 
                             style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       <asp:DropDownList ID="ddlCompanyName" DataSourceID ="SqlDataSource2" 
                           runat="server" Height="30px" Width="130px" 
                    CssClass="input-small"
                     DataTextField="Company_Name" DataValueField="Company_Name" AutoPostBack="True">
                       </asp:DropDownList> 
                   <br />
                   </td>
                   
                   <td>
                   <br />
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                           
                           SelectCommand="SELECT DISTINCT [Company_Name] FROM [Company_Arrival] WHERE ([Arrival_Id] = @Arrival_Id)">
                           <SelectParameters>
                               <asp:ControlParameter ControlID="ddlArrivalId" 
                                   Name="Arrival_Id" PropertyName="SelectedValue" Type="String" />
                           </SelectParameters>
                       </asp:SqlDataSource>     
                   <br />
                   </td>
            
            </tr>
            
            <tr>
            
                     <td width="220" height="50">
                            <asp:Label ID="lblSSCPercentageCriteria" runat="server" 
                             Text="SSC Percentage Criteria" style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       <asp:TextBox ID="txtSSCPercentageCriteria" runat="server" Width="130px"></asp:TextBox>
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            <tr>
            
                     <td>
                            <asp:Label ID="lblHSCPercentageCriteria" runat="server" 
                             Text="HSC Percentage Criteria" style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       <asp:TextBox ID="txtHSCPercentageCriteria" runat="server" Width="130px"></asp:TextBox>
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            
            <tr>
            
                     <td>
                            <asp:Label ID="lblAptitudeTest" runat="server" Text="Aptitude Test" 
                             style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       &nbsp;<asp:CheckBox ID="chkAptitudeTest" runat="server" />
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            <tr>
            
                     <td>
                            <asp:Label ID="lblAptitudeTestDescription" runat="server" 
                             Text="Aptitude Test Description" style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       <asp:TextBox ID="txtAptitudeTestDescription" runat="server" Height="100px" 
                           TextMode="MultiLine"></asp:TextBox>
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            <tr>
            
                     <td>
                            <asp:Label ID="lblTechnicalTest" runat="server" Text="Technical Test" 
                             style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       &nbsp;<asp:CheckBox ID="chkTechnicalTest" runat="server" />
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            <tr>
            
                     <td>
                            <asp:Label ID="lblTech_Test_Des" runat="server" 
                             Text="Technical Test Description" style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       <asp:TextBox ID="txtTech_Test_Des" runat="server" Height="100px" 
                           TextMode="MultiLine"></asp:TextBox>
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            <tr>
            
                     <td>
                            <asp:Label ID="lblHRInterview" runat="server" Text="HR Interview" 
                             style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       &nbsp;<asp:CheckBox ID="chkHRInterview" runat="server" />
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            <tr>
            
                     <td>
                            <asp:Label ID="lblHR_Int_Dec" runat="server" Text="HR Interview Decsription" 
                             style="font-size: medium"></asp:Label>
                   <br />
                   </td>
                   <td>
                       <asp:TextBox ID="txtHR_Int_Dec" runat="server" Height="100px" 
                           TextMode="MultiLine"></asp:TextBox>
                   <br />
                   </td>
                   
                   <td>
                   <br />
                   
                   <br />
                   </td>
            
            </tr>
            
            <tr>
             <td colspan = "3" align ="left" ><asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary" /> 
                 &nbsp; <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-success" /> </td>
             </tr>
            
               <tr>
                   <td align="center" colspan="3">
                       &nbsp;</td>
               </tr>
               <tr>
                   <td align="left" colspan="3">
                       <asp:Label ID="lbl_reply" runat="server" Text="Status" Visible="False"></asp:Label>
                       &nbsp;</td>
                      
               </tr>
            
          </table>
            
                 
                </fieldset>
         
                     <br />
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Selection_Procedure] WHERE [Arrival_Id] = @Arrival_Id AND [Company_Name] = @Company_Name" 
                InsertCommand="INSERT INTO [Selection_Procedure] ([Arrival_Id], [Company_Name], [SSC_Percentage_Criteria], [HSC_Percentage_Criteria], [Aptitude_Test], [Aptitude_Test_Description], [Technical_Test], [Technical_Test_Description], [HR_Interview], [HR_Interview_Decsription]) VALUES (@Arrival_Id, @Company_Name, @SSC_Percentage_Criteria, @HSC_Percentage_Criteria, @Aptitude_Test, @Aptitude_Test_Description, @Technical_Test, @Technical_Test_Description, @HR_Interview, @HR_Interview_Decsription)" 
                SelectCommand="SELECT * FROM [Selection_Procedure]" 
                UpdateCommand="UPDATE [Selection_Procedure] SET [SSC_Percentage_Criteria] = @SSC_Percentage_Criteria, [HSC_Percentage_Criteria] = @HSC_Percentage_Criteria, [Aptitude_Test] = @Aptitude_Test, [Aptitude_Test_Description] = @Aptitude_Test_Description, [Technical_Test] = @Technical_Test, [Technical_Test_Description] = @Technical_Test_Description, [HR_Interview] = @HR_Interview, [HR_Interview_Decsription] = @HR_Interview_Decsription WHERE [Arrival_Id] = @Arrival_Id AND [Company_Name] = @Company_Name">
                 <DeleteParameters>
                     <asp:Parameter Name="Arrival_Id" Type="String" />
                     <asp:Parameter Name="Company_Name" Type="String" />
                 </DeleteParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="SSC_Percentage_Criteria" Type="Decimal" />
                     <asp:Parameter Name="HSC_Percentage_Criteria" Type="Decimal" />
                     <asp:Parameter Name="Aptitude_Test" Type="Boolean" />
                     <asp:Parameter Name="Aptitude_Test_Description" Type="String" />
                     <asp:Parameter Name="Technical_Test" Type="Boolean" />
                     <asp:Parameter Name="Technical_Test_Description" Type="String" />
                     <asp:Parameter Name="HR_Interview" Type="Boolean" />
                     <asp:Parameter Name="HR_Interview_Decsription" Type="String" />
                     <asp:Parameter Name="Arrival_Id" Type="String" />
                     <asp:Parameter Name="Company_Name" Type="String" />
                 </UpdateParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Arrival_Id" Type="String" />
                     <asp:Parameter Name="Company_Name" Type="String" />
                     <asp:Parameter Name="SSC_Percentage_Criteria" Type="Decimal" />
                     <asp:Parameter Name="HSC_Percentage_Criteria" Type="Decimal" />
                     <asp:Parameter Name="Aptitude_Test" Type="Boolean" />
                     <asp:Parameter Name="Aptitude_Test_Description" Type="String" />
                     <asp:Parameter Name="Technical_Test" Type="Boolean" />
                     <asp:Parameter Name="Technical_Test_Description" Type="String" />
                     <asp:Parameter Name="HR_Interview" Type="Boolean" />
                     <asp:Parameter Name="HR_Interview_Decsription" Type="String" />
                 </InsertParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" 
                DataKeyNames="Arrival_Id,Company_Name" DataSourceID="SqlDataSource3" 
                CellPadding="4" ForeColor="#333333" GridLines="None" CssClass ="table">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="Arrival_Id" HeaderText="Arrival_Id" ReadOnly="True" 
                        SortExpression="Arrival_Id" />
                    <asp:BoundField DataField="Company_Name" HeaderText="Company_Name" 
                        ReadOnly="True" SortExpression="Company_Name" />
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
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>
        
   </form>
</asp:Content>

