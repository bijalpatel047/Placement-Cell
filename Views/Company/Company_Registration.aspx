<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="false" CodeFile="Company_Registration.aspx.vb" Inherits="Company_Registration" title="Untitled Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
 

    <form id="form1" runat="server">
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
                     
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>  
                   <br />
                 <div id="scroll" style="width: 700px;
                height: 550px;
                overflow-x: scroll;
                overflow-y: scroll;
                max-width:750px;
                max-height:450px;">
        
<asp:Wizard ID="Wizard_company_registration" runat="server" ActiveStepIndex="0" 
                       BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderWidth="1px" 
                       DisplayCancelButton="True" Font-Names="Verdana" Font-Size="0.8em" 
                       Height="375px" style="font-size: medium" Width="618px">
                       <SideBarTemplate>
                           <asp:DataList ID="SideBarList" runat="server">
                               <ItemTemplate>
                                   <asp:LinkButton ID="SideBarButton" runat="server" BackColor="#507CD1" 
                                       Font-Names="Verdana" ForeColor="White" Width="150px"></asp:LinkButton>
                               </ItemTemplate>
                               <SelectedItemStyle Font-Bold="True" />
                           </asp:DataList>
                       </SideBarTemplate>
                       <StepStyle Font-Size="0.8em" ForeColor="#333333" />
                       <StepNextButtonStyle Height="30px" Width="70px" />
                       <StartNavigationTemplate>
                           <asp:Button ID="StartNextButton" runat="server" BackColor="White" 
                               BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
                               CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" 
                               ForeColor="#284E98" Text="Next" />
                           <asp:Button ID="CancelButton" runat="server" BackColor="White" 
                               BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
                               CausesValidation="False" CommandName="Cancel" Font-Names="Verdana" 
                               Font-Size="0.8em" ForeColor="#284E98" Text="Cancel" />
                       </StartNavigationTemplate>
                       <NavigationStyle Height="30px" HorizontalAlign="Right" VerticalAlign="Middle" />
                       <WizardSteps>
                           <asp:WizardStep ID="l_c_profile" runat="server" title="Profile">
                           
                               <table align="center" cellpadding="5" cellspacing="10" 
                                   style="width: 100%; height: 320px;">
                                   <caption style="font-size: large; background-color: #284E98; color: #FFFFFF; font-family: Cambria; caption-side: top; height: 10%; vertical-align: middle;">
                                       <p style="text-align: center; height: 34px;">
                                           Company Profile</p>
                                   </caption>
                                   <tr>
                                       <td style="width: 193px; text-align: left; height: 98px;">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_name" runat="server" Text="Company Name"></asp:Label>
                                       </td>
                                       <td style="text-align: left; height: 98px;">
                                           <asp:TextBox ID="txt_com_name" runat="server" Height="30px" 
                                               ToolTip="Enter Company Name" Width="228px"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 193px; text-align: left; height: 64px;">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_desc" runat="server" Text="Company Description"></asp:Label>
                                       </td>
                                       <td style="text-align: left; height: 64px;">
                                           <asp:TextBox ID="txt_com_dec" runat="server" Height="96px" TextMode="MultiLine" 
                                               Width="228px"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 193px; text-align: left; height: 64px;">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_add_info" runat="server" Text="Additional Info"></asp:Label>
                                       </td>
                                       <td style="text-align: left; height: 64px;">
                                           <asp:TextBox ID="txt_com_add_info" runat="server" Height="96px" 
                                               TextMode="MultiLine" ToolTip="Enter Company Additional Infomation" 
                                               Width="228px"></asp:TextBox>
                                       </td>
                                   </tr>
                               </table>
                           </asp:WizardStep>
                           <asp:WizardStep ID="l_c_address" runat="server" title="Address">
                               <table cellpadding="5" cellspacing="6" 
                                   style="width: 100%; height: 91%; table-layout: auto; caption-side: top;">
                                   <caption style="font-family: Cambria; font-size: large; color: #FFFFFF; caption-side: top; height: 10%; background-color: #284E98;">
                                       Company Address</caption>
                                   <tr>
                                       <td style="width: 93px">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_state" runat="server" Text="State"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="txt_com_state" runat="server" Height="30px" 
                                               ToolTip="Enter State" Width="80%"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 93px">
                                           &nbsp;
                                           <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="txt_city" runat="server" Height="30px" Width="80%"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 93px">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_pincode" runat="server" Text="Pin Code"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="txt_com_pincode" runat="server" Height="30px" 
                                               ToolTip="Enter Company PinCode" Width="80%"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 93px">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_phoneno" runat="server" Text="Phone No"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="txt_com_phoneno" runat="server" Height="30px" 
                                               ToolTip="Enter Company Number" Width="80%"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 93px; height: 36px;">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_email" runat="server" Text="E-Mail"></asp:Label>
                                       </td>
                                       <td style="height: 36px">
                                           <asp:TextBox ID="txt_com_email" runat="server" Height="30px" 
                                               ToolTip="Enter Company Email" Width="80%"></asp:TextBox>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 93px">
                                           &nbsp;
                                           <asp:Label ID="lbl_com_website" runat="server" Text="Website"></asp:Label>
                                       </td>
                                       <td>
                                           <asp:TextBox ID="txt_com_website" runat="server" Height="30px" 
                                               ToolTip="Enter Comapny Website" Width="80%"></asp:TextBox>
                                       </td>
                                   </tr>
                               </table>
                           </asp:WizardStep>
                           <asp:WizardStep ID="l_c_contact_person" runat="server" Title="Contact Person">
                               <table cellpadding="4" cellspacing="6" frame="border" 
                                   style="width: 100%; margin-top: 0px; height: 336px;">
                                   <caption style="font-family: Cambria; font-size: large; background-color: #284E98; height: 10%; caption-side: top; text-align: center; vertical-align: middle; color: #FFFFFF;">
                                       Company&#39;s Contact Person</caption>
                                   <tr>
                                       <td style="width: 138px">
                                           <p>
                                               &nbsp;
                                               <asp:Label ID="lbl_contact_name" runat="server" Text="Contact Name"></asp:Label>
                                           </p>
                                       </td>
                                       <td>
                                           <p>
                                               <asp:TextBox ID="txt_contact_name" runat="server" Height="30px" 
                                                   ToolTip="Enter Contact Name" Width="200px"></asp:TextBox>
                                           </p>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 138px">
                                           <p>
                                               &nbsp;
                                               <asp:Label ID="lbl_designation" runat="server" Text="Designation"></asp:Label>
                                           </p>
                                       </td>
                                       <td>
                                           <p>
                                               <asp:TextBox ID="txt_contact_designation" runat="server" Height="30px" 
                                                   ToolTip="Enter Designation" Width="200px"></asp:TextBox>
                                           </p>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 138px">
                                           <p>
                                               &nbsp;
                                               <asp:Label ID="lbl_mobile" runat="server" Text="Mobile"></asp:Label>
                                           </p>
                                       </td>
                                       <td>
                                           <p>
                                               <asp:TextBox ID="txt_contact_mobile" runat="server" Height="30px" 
                                                   ToolTip="Enter Mobile Number" Width="200px"></asp:TextBox>
                                           </p>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td style="width: 138px; height: 58px;">
                                           <p>
                                               &nbsp;
                                               <asp:Label ID="lbl_email" runat="server" Text="E Mail"></asp:Label>
                                           </p>
                                       </td>
                                       <td style="height: 58px">
                                           <p>
                                               <asp:TextBox ID="txt_contact_email" runat="server" Height="30px" 
                                                   ToolTip="Enter Email" Width="200px"></asp:TextBox>
                                           </p>
                                       </td>
                                   </tr>
                               </table>
                           </asp:WizardStep>
                       </WizardSteps>
                       <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" 
                           Width="150px" />
                       <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" 
                           BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                           ForeColor="#284E98" Height="30px" Width="70px" />
                       <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" HorizontalAlign="Center" 
                           VerticalAlign="Middle" Width="100px" />
                       <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" 
                           BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                           Height="20px" HorizontalAlign="Center" />
                       <StepNavigationTemplate>
                           <asp:Button ID="StepPreviousButton" runat="server" BackColor="White" 
                               BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
                               CausesValidation="False" CommandName="MovePrevious" Font-Names="Verdana" 
                               Font-Size="0.8em" ForeColor="#284E98" Height="30px" Text="Previous" 
                               Width="70px" />
                           <asp:Button ID="StepNextButton" runat="server" BackColor="White" 
                               BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
                               CommandName="MoveNext" Font-Names="Verdana" Font-Size="0.8em" 
                               ForeColor="#284E98" Height="30px" Text="Next" Width="70px" />
                           <asp:Button ID="CancelButton" runat="server" BackColor="White" 
                               BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" 
                               CausesValidation="False" CommandName="Cancel" Font-Names="Verdana" 
                               Font-Size="0.8em" ForeColor="#284E98" Height="30px" Text="Cancel" 
                               Width="70px" />
                       </StepNavigationTemplate>
                   </asp:Wizard>
                                   
                     </div>
                      

               </ContentTemplate>
           </asp:UpdatePanel>
           <br />
     
        </form>
</asp:Content>

