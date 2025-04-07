<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="Company_Details.aspx.vb" Inherits="Views_Company_Company_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <br />
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   
           <table style="width: 100%">
                <tr>
                    <td style="width: 137px">
                        <b>&nbsp;Select Company</b> &nbsp;</td>
                    <td>
                        <asp:DropDownList ID="ddl_com_name" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="Company_Name" 
                            DataValueField="Company_Name">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Company_Name] FROM [Company_Details]">
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 137px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            DeleteCommand="DELETE FROM [Company_Details] WHERE [Company_Id] = @Company_Id" 
                            InsertCommand="INSERT INTO [Company_Details] ([Company_Id], [Company_Name], [Company_Description], [State], [City], [Pin_Code], [Phone_No], [E_Mail], [Website], [Contact_Person_Name], [Contact_Person_Designation], [Contact_Person_EMail], [Contact_Person_Mobile], [Additional_Info]) VALUES (@Company_Id, @Company_Name, @Company_Description, @State, @City, @Pin_Code, @Phone_No, @E_Mail, @Website, @Contact_Person_Name, @Contact_Person_Designation, @Contact_Person_EMail, @Contact_Person_Mobile, @Additional_Info)" 
                            SelectCommand="SELECT * FROM [Company_Details] WHERE ([Company_Name] = @Company_Name)" 
                            UpdateCommand="UPDATE [Company_Details] SET [Company_Name] = @Company_Name, [Company_Description] = @Company_Description, [State] = @State, [City] = @City, [Pin_Code] = @Pin_Code, [Phone_No] = @Phone_No, [E_Mail] = @E_Mail, [Website] = @Website, [Contact_Person_Name] = @Contact_Person_Name, [Contact_Person_Designation] = @Contact_Person_Designation, [Contact_Person_EMail] = @Contact_Person_EMail, [Contact_Person_Mobile] = @Contact_Person_Mobile, [Additional_Info] = @Additional_Info WHERE [Company_Id] = @Company_Id">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddl_com_name" Name="Company_Name" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="Company_Id" Type="String" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Company_Name" Type="String" />
                                <asp:Parameter Name="Company_Description" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Pin_Code" Type="String" />
                                <asp:Parameter Name="Phone_No" Type="String" />
                                <asp:Parameter Name="E_Mail" Type="String" />
                                <asp:Parameter Name="Website" Type="String" />
                                <asp:Parameter Name="Contact_Person_Name" Type="String" />
                                <asp:Parameter Name="Contact_Person_Designation" Type="String" />
                                <asp:Parameter Name="Contact_Person_EMail" Type="String" />
                                <asp:Parameter Name="Contact_Person_Mobile" Type="String" />
                                <asp:Parameter Name="Additional_Info" Type="String" />
                                <asp:Parameter Name="Company_Id" Type="String" />
                            </UpdateParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Company_Id" Type="String" />
                                <asp:Parameter Name="Company_Name" Type="String" />
                                <asp:Parameter Name="Company_Description" Type="String" />
                                <asp:Parameter Name="State" Type="String" />
                                <asp:Parameter Name="City" Type="String" />
                                <asp:Parameter Name="Pin_Code" Type="String" />
                                <asp:Parameter Name="Phone_No" Type="String" />
                                <asp:Parameter Name="E_Mail" Type="String" />
                                <asp:Parameter Name="Website" Type="String" />
                                <asp:Parameter Name="Contact_Person_Name" Type="String" />
                                <asp:Parameter Name="Contact_Person_Designation" Type="String" />
                                <asp:Parameter Name="Contact_Person_EMail" Type="String" />
                                <asp:Parameter Name="Contact_Person_Mobile" Type="String" />
                                <asp:Parameter Name="Additional_Info" Type="String" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            
            <br />
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                DataKeyNames="Company_Id" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                <EditItemTemplate>
                <fieldset > 
                        <legend> <h2> Company Information</h2></legend>
               
                    <table style="width: 435px">
                        <tr>
                            <td style="width: 204px; height: 42px;">
                                &nbsp; &nbsp;Company Id&nbsp;</td>
                            <td style="width: 218px; height: 42px;">
                                &nbsp;<asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" 
                                    Text='<%# Bind("Company_Id") %>' ToolTip="Can Not Change.."></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; &nbsp;Company Name&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Company_NameTextBox" runat="server" 
                                    Text='<%# Bind("Company_Name") %>'/>
                                   
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; &nbsp;Company Description&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Company_DescriptionTextBox" runat="server" 
                                    Text='<%# Bind("Company_Description") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; State&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; City</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; &nbsp;Pin Code&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Pin_CodeTextBox" runat="server" 
                                     Text='<%# Bind("Pin_Code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; &nbsp;Phone No</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Phone_NoTextBox" runat="server" 
                                    Text='<%# Bind("Phone_No") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; &nbsp;E Mail&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="E_MailTextBox" runat="server" Text='<%# Bind("E_Mail") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; &nbsp;Website&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp;Contact Person Name&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Contact_Person_NameTextBox" runat="server" 
                                    Text='<%# Bind("Contact_Person_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp;Contact Person Designation</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Contact_Person_DesignationTextBox" runat="server" 
                                        Text='<%# Bind("Contact_Person_Designation") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp;Contact Person E-Mail&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Contact_Person_EMailTextBox" runat="server" 
                                    Text='<%# Bind("Contact_Person_EMail") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp;Contact Person Mobile&nbsp;</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Contact_Person_MobileTextBox" runat="server" 
                                    Text='<%# Bind("Contact_Person_Mobile") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 204px">
                                &nbsp; Additional Info</td>
                            <td style="width: 218px">
                                <asp:TextBox ID="Additional_InfoTextBox" runat="server" 
                                    Text='<%# Bind("Additional_Info") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CssClass ="btn btn-primary"
                                    CommandName="Update" Text="Update" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" 
                                    CommandName="Cancel" Text="Cancel" CssClass ="btn btn-success"/>
                            </td>
                        </tr>
                    </table>
                     </fieldset>
                </EditItemTemplate>
                <InsertItemTemplate>
                    Company_Id:
                    <asp:TextBox ID="Company_IdTextBox" runat="server" 
                        Text='<%# Bind("Company_Id") %>' />
                    <br />
                    Company_Name:
                    <asp:TextBox ID="Company_NameTextBox" runat="server" 
                        Text='<%# Bind("Company_Name") %>' />
                    <br />
                    Company_Description:
                    <asp:TextBox ID="Company_DescriptionTextBox" runat="server" 
                        Text='<%# Bind("Company_Description") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Pin_Code:
                    <asp:TextBox ID="Pin_CodeTextBox" runat="server" 
                        Text='<%# Bind("Pin_Code") %>' />
                    <br />
                    Phone_No:
                    <asp:TextBox ID="Phone_NoTextBox" runat="server" 
                        Text='<%# Bind("Phone_No") %>' />
                    <br />
                    E_Mail:
                    <asp:TextBox ID="E_MailTextBox" runat="server" Text='<%# Bind("E_Mail") %>' />
                    <br />
                    Website:
                    <asp:TextBox ID="WebsiteTextBox" runat="server" Text='<%# Bind("Website") %>' />
                    <br />
                    Contact_Person_Name:
                    <asp:TextBox ID="Contact_Person_NameTextBox" runat="server" 
                        Text='<%# Bind("Contact_Person_Name") %>' />
                    <br />
                    Contact_Person_Designation:
                    <asp:TextBox ID="Contact_Person_DesignationTextBox" runat="server" 
                        Text='<%# Bind("Contact_Person_Designation") %>' />
                    <br />
                    Contact_Person_EMail:
                    <asp:TextBox ID="Contact_Person_EMailTextBox" runat="server" 
                        Text='<%# Bind("Contact_Person_EMail") %>' />
                    <br />
                    Contact_Person_Mobile:
                    <asp:TextBox ID="Contact_Person_MobileTextBox" runat="server" 
                        Text='<%# Bind("Contact_Person_Mobile") %>' />
                    <br />
                    Additional_Info:
                    <asp:TextBox ID="Additional_InfoTextBox" runat="server" 
                        Text='<%# Bind("Additional_Info") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Company_Id:
                    <asp:Label ID="Company_IdLabel" runat="server" 
                        Text='<%# Eval("Company_Id") %>' />
                    <br />
                    Company_Name:
                    <asp:Label ID="Company_NameLabel" runat="server" 
                        Text='<%# Bind("Company_Name") %>' />
                    <br />
                    Company_Description:
                    <asp:Label ID="Company_DescriptionLabel" runat="server" 
                        Text='<%# Bind("Company_Description") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Pin_Code:
                    <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Bind("Pin_Code") %>' />
                    <br />
                    Phone_No:
                    <asp:Label ID="Phone_NoLabel" runat="server" Text='<%# Bind("Phone_No") %>' />
                    <br />
                    E_Mail:
                    <asp:Label ID="E_MailLabel" runat="server" Text='<%# Bind("E_Mail") %>' />
                    <br />
                    Website:
                    <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Bind("Website") %>' />
                    <br />
                    Contact_Person_Name:
                    <asp:Label ID="Contact_Person_NameLabel" runat="server" 
                        Text='<%# Bind("Contact_Person_Name") %>' />
                    <br />
                    Contact_Person_Designation:
                    <asp:Label ID="Contact_Person_DesignationLabel" runat="server" 
                        Text='<%# Bind("Contact_Person_Designation") %>' />
                    <br />
                    Contact_Person_EMail:
                    <asp:Label ID="Contact_Person_EMailLabel" runat="server" 
                        Text='<%# Bind("Contact_Person_EMail") %>' />
                    <br />
                    Contact_Person_Mobile:
                    <asp:Label ID="Contact_Person_MobileLabel" runat="server" 
                        Text='<%# Bind("Contact_Person_Mobile") %>' />
                    <br />
                    Additional_Info:
                    <asp:Label ID="Additional_InfoLabel" runat="server" 
                        Text='<%# Bind("Additional_Info") %>' />
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
            
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</asp:Content>

