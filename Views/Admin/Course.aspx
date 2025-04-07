<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="true" CodeFile="Course.aspx.vb" Inherits="GridTest.examples.editing_data.edit_add_delete._default" title="Untitled Page" %>
<%@ Register Assembly="Trirand.Web" TagPrefix="trirand" Namespace="Trirand.Web.UI.WebControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" Runat="Server">
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
    <div>
 
   
           
            <Form ID="CourseForm" runat="server">
             <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
   
             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
               
            <fieldset >
            <legend > <h2 > Add Course</h2></legend>
            <table>
            
            <tr>
            <td align=justify style="width: 132px" >
                <asp:Label ID="lblCourseCode" runat="server" Text="Course Code" 
                    style="font-size: medium"></asp:Label>
                           </td>
            <td align=justify >
                <asp:TextBox ID="txtCourseCode" runat="server"></asp:TextBox>
                 </td>
            </tr>
            
            <tr>
            <td style="height: 24px; width: 132px;">
                <asp:Label ID="lblCourseName" runat="server" Text="Course Name" 
                    style="font-size: medium"></asp:Label>
                
            </td>
            <td style="height: 24px">
                <asp:TextBox ID="txtCourseName" runat="server"></asp:TextBox>
                
            </td>
            </tr>
            
            <tr>
            <td style="width: 132px">
                <asp:Label ID="lblSemesters" runat="server" Text="Semesters" 
                    style="font-size: medium"></asp:Label>
                 </td>
            <td>
                <asp:TextBox ID="txtSemesters" runat="server"></asp:TextBox>
                
            </td>
            </tr>
            
            <tr>
            <td style="width: 132px">
                <asp:Label ID="lblNoOfStudent" runat="server" Text="No of Student" 
                    style="font-size: medium"></asp:Label> 
                &nbsp;<br>
                
            </td>
            <td>
                <asp:TextBox ID="txtNoOfStudent" runat="server"></asp:TextBox>
                
            </td>
            </tr>
            
             <tr>
             <td style="width: 132px">
                <asp:Label ID="lblIsActive" runat="server" Text=" Is Active" 
                     style="font-size: medium"></asp:Label>
                
            </td>
            <td>
                <asp:CheckBox ID="chkIsActive" runat="server" />
                 </td>
            </tr>
           <tr> <td style="width: 132px"> &nbsp;</td> <td> &nbsp;</td></tr>
                <tr>
                    <td style="width: 132px">
                    </td>
                    <td>
                    </td>
                </tr>
            <tr>
            <td style="width: 132px">
                 <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-primary" 
                    Text="Insert" />
                 </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-success" 
                    Text="Cancel" />
                
            </td>
            </tr>
            
            </table>
            </fieldset>
                     
            <br/>
            <div>
                <trirand:JQGrid ID="JQGrid1" runat="server" 
                    AppearanceSettings-Caption="Course List" AppearanceSettings-ShrinkToFit="true" 
                    OnRowAdding="JQGrid1_RowAdding" OnRowDeleting="JQGrid1_RowDeleting" 
                    OnRowEditing="JQGrid1_RowEditing" Width="700px">
                    <Columns>
                        <trirand:JQGridColumn DataField="Course_Code" Editable="true" 
                            HeaderText="Course Code" PrimaryKey="true" TextAlign="Center" />
                        <trirand:JQGridColumn DataField="Course_Name" Editable="true" 
                            HeaderText="Course Name" TextAlign="Center" />
                        <trirand:JQGridColumn DataField="Semesters" Editable="true" 
                            HeaderText="Semesters" TextAlign="Center" />
                        <trirand:JQGridColumn DataField="No_of_Student" Editable="true" 
                            HeaderText="No of Student" TextAlign="Center" />
                        <trirand:JQGridColumn DataField="Is_Active" Editable="true" 
                            HeaderText="Is Active" TextAlign="Center" />
                    </Columns>
                    <ExportSettings ExportDataRange="Filtered" />
                    <ToolBarSettings ShowAddButton="true" ShowDeleteButton="true" 
                        ShowEditButton="true" ShowRefreshButton="True" ShowSearchButton="True" />
                    <EditDialogSettings CloseAfterEditing="true" Modal="true" />
                    <AppearanceSettings Caption="Course List" />
                    <AddDialogSettings CloseAfterAdding="true" />
                </trirand:JQGrid>
            </div>
           
      </ContentTemplate>
    </asp:UpdatePanel>
            </Form>
           
            
            
      
    <p>
    </p>
    </div>
         
       
</asp:Content>

