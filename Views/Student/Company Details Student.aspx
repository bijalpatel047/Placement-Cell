<%@ Page Language="VB" MasterPageFile="~/Views/Master/Student.master" AutoEventWireup="false" CodeFile="Company Details Student.aspx.vb" Inherits="Views_Student_Company_Details" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
    <form id="form1" runat="server">
    
    <br />
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <table style="width: 70%">
                <tr>
                    <td style="width: 115px">
                        Select Company</td>
                    <td>&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="Company_Name" 
                            DataValueField="Company_Name">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT DISTINCT [Company_Name] FROM [Company_Details]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td style="width: 115px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT [Company_Name], [Company_Description], [State], [City], [Pin_Code], [Phone_No], [E_Mail], [Website], [Contact_Person_Name], [Contact_Person_Designation], [Contact_Person_EMail], [Contact_Person_Mobile], [Additional_Info] FROM [Company_Details] WHERE ([Company_Name] = @Company_Name)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Company_Name" 
                                    PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <br />
            
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataSourceID="SqlDataSource1" 
                Height="500px" Width="85%">
                <EditItemTemplate>
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
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Company_Name:
                    <asp:TextBox ID="Company_NameTextBox0" runat="server" 
                        Text='<%# Bind("Company_Name") %>' />
                    <br />
                    Company_Description:
                    <asp:TextBox ID="Company_DescriptionTextBox0" runat="server" 
                        Text='<%# Bind("Company_Description") %>' />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox0" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox0" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    Pin_Code:
                    <asp:TextBox ID="Pin_CodeTextBox0" runat="server" 
                        Text='<%# Bind("Pin_Code") %>' />
                    <br />
                    Phone_No:
                    <asp:TextBox ID="Phone_NoTextBox0" runat="server" 
                        Text='<%# Bind("Phone_No") %>' />
                    <br />
                    E_Mail:
                    <asp:TextBox ID="E_MailTextBox0" runat="server" Text='<%# Bind("E_Mail") %>' />
                    <br />
                    Website:
                    <asp:TextBox ID="WebsiteTextBox0" runat="server" 
                        Text='<%# Bind("Website") %>' />
                    <br />
                    Contact_Person_Name:
                    <asp:TextBox ID="Contact_Person_NameTextBox0" runat="server" 
                        Text='<%# Bind("Contact_Person_Name") %>' />
                    <br />
                    Contact_Person_Designation:
                    <asp:TextBox ID="Contact_Person_DesignationTextBox0" runat="server" 
                        Text='<%# Bind("Contact_Person_Designation") %>' />
                    <br />
                    Contact_Person_EMail:
                    <asp:TextBox ID="Contact_Person_EMailTextBox0" runat="server" 
                        Text='<%# Bind("Contact_Person_EMail") %>' />
                    <br />
                    Contact_Person_Mobile:
                    <asp:TextBox ID="Contact_Person_MobileTextBox0" runat="server" 
                        Text='<%# Bind("Contact_Person_Mobile") %>' />
                    <br />
                    Additional_Info:
                    <asp:TextBox ID="Additional_InfoTextBox0" runat="server" 
                        Text='<%# Bind("Additional_Info") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                <fieldset>
                <legend> <h2> Company Information </h2></legend>
                    <table style="width: 150%; height: 410px">
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Company Name
                            </td>
                            <td>
                                <asp:Label ID="Company_NameLabel" runat="server" 
                                    Text='<%# Bind("Company_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Company Description</td>
                            <td>
                                <asp:Label ID="Company_DescriptionLabel" runat="server" 
                                    Text='<%# Bind("Company_Description") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; State</td>
                            <td>
                                <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; City</td>
                            <td>
                                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Pin Code</td>
                            <td>
                                <asp:Label ID="Pin_CodeLabel" runat="server" Text='<%# Bind("Pin_Code") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Phone No</td>
                            <td>
                                <asp:Label ID="Phone_NoLabel" runat="server" Text='<%# Bind("Phone_No") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; E Mail</td>
                            <td>
                                <asp:Label ID="E_MailLabel" runat="server" Text='<%# Bind("E_Mail") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Website</td>
                            <td>
                                <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Bind("Website") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Contact Person Name</td>
                            <td>
                                <asp:Label ID="Contact_Person_NameLabel" runat="server" 
                                    Text='<%# Bind("Contact_Person_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Contact Person Designation</td>
                            <td>
                                <asp:Label ID="Contact_Person_DesignationLabel" runat="server" 
                                    Text='<%# Bind("Contact_Person_Designation") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Contact Person EMail</td>
                            <td>
                                <asp:Label ID="Contact_Person_EMailLabel" runat="server" 
                                    Text='<%# Bind("Contact_Person_EMail") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Contact Person Mobile</td>
                            <td>
                                <asp:Label ID="Contact_Person_MobileLabel" runat="server" 
                                    Text='<%# Bind("Contact_Person_Mobile") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 214px">
                                &nbsp; Additional Info</td>
                            <td>
                                <asp:Label ID="Additional_InfoLabel" runat="server" 
                                    Text='<%# Bind("Additional_Info") %>' />
                            </td>
                        </tr>
                        </table>
                    </fieldset>
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
        <br />
    </p>
    <p>
        &nbsp;</p>
    </form>
</asp:Content>

