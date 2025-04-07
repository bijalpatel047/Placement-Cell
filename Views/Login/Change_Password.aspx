<%@ Page Language="VB" MasterPageFile="~/Views/Master/HomePage.master" AutoEventWireup="false" CodeFile="Change_Password.aspx.vb" Inherits="Views_Admin_Change_Password" title="Untitled Page" %>
<%@ Register Assembly="Trirand.Web" TagPrefix="trirand" Namespace="Trirand.Web.UI.WebControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <script type="text/javascript">
	jQuery(document).ready(function() {
		// binds form submission and fields to the validation engine
		jQuery("#form1").validationEngine();
	});
</script>
  <link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/ui.jqgrid.css" />
    <!-- jQuery runtime minified -->
    <link href="../../Content/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <!-- The localization file we need, English in this case -->
    <script src="../../Scripts/js/trirand/i18n/grid.locale-en.js"type="text/javascript"></script>
    <!-- The jqGrid client-side javascript -->
    <script src="../../Scripts/js/trirand/jquery.jqGrid.min.js" type="text/javascript"></script>

    <form id="form1" runat="server">
    <p>
    <br />
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
            <fieldset>
            <legend> <h2>  Change Password  </h2> </legend>
            <table cellpadding="6" cellspacing="10" style="width: 70%; height: auto;">
                     <tr>
                         <td style="width: 174px; height: 28px">
                             &nbsp;</td>
                         <td style="height: 28px; width: 172px;">
                             &nbsp;</td>
                         <td style="height: 28px">
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td style="width: 174px; height: 30px">
                             &nbsp; Current Password</td>
                         <td style="height: 30px; width: 172px;">
                             <asp:TextBox ID="txt_current_pwd" runat="server" Height="30px" 
                                 TextMode="Password" Width="200px"></asp:TextBox>
                         </td>
                         <td style="height: 30px">
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="txt_current_pwd" Display="Dynamic" 
                                 ErrorMessage="Enter Current Password" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 174px; height: 30px">
                             &nbsp; New Password</td>
                         <td style="height: 30px; width: 172px;">
                             <asp:TextBox ID="txt_new_pwd" runat="server" Height="30px" TextMode="Password" 
                                 Width="200px"></asp:TextBox>
                         </td>
                         <td style="height: 30px">
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td style="width: 174px">
                             &nbsp; Confirm New Password</td>
                         <td style="width: 172px">
                             <asp:TextBox ID="txt_confirm_new_pwd" runat="server" Height="30px" 
                                 TextMode="Password" Width="200px"></asp:TextBox>
                         </td>
                         <td>
                             <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                 ControlToCompare="txt_new_pwd" ControlToValidate="txt_confirm_new_pwd" 
                                 ErrorMessage="Doesn't Match ,Enter Password Again.." SetFocusOnError="True">*</asp:CompareValidator>
                         </td>
                     </tr>
                     <tr>
                         <td style="width: 174px">
                             &nbsp;</td>
                         <td style="width: 172px">
                             &nbsp;</td>
                         <td>
                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td colspan="3">
                             &nbsp;
                             <asp:Button ID="btn_change" runat="server" Text="Change" CssClass="btn btn-primary"/>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CssClass="btn btn-success"/>
                         </td>
                     </tr>
                 </legend> 
                
                 <tr>
                     <td style="width: 174px">
                         &nbsp;</td>
                     <td style="width: 172px">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                
            </table>
            <br />
                <br />
                <asp:Label ID="lbl_reply" runat="server" Text="Reply" Visible="False"></asp:Label>
                <br />
            </fieldset>
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>
        <br />
    </p>
    
             </form>
</asp:Content>

