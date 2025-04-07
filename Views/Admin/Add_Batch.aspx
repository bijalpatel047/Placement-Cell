<%@ Page Language="VB" MasterPageFile="~/Views/Master/Admin.master" AutoEventWireup="True"
    CodeFile="Add_Batch.aspx.vb" Inherits="GridTest.examples.editing_data.edit_add_delete._default"
    Title="Untitled Page" %>

<%@ Register Assembly="Trirand.Web" TagPrefix="trirand" Namespace="Trirand.Web.UI.WebControls" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="Server">

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

    <script src="../../Scripts/js/trirand/i18n/grid.locale-en.js" type="text/javascript"></script>

    <!-- The jqGrid client-side javascript -->

    <script src="../../Scripts/js/trirand/jquery.jqGrid.min.js" type="text/javascript"></script>

    <form id="AddBatchForm" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <fieldset > 
            <legend> <h2>Add Batch</h2></legend>
            <table style="width: 70%">
                            
            <tr>
            <td align=justify style="width: 118px" >
            <br />
                &nbsp;<asp:Label ID="lblBatchId" runat="server" Text="Batch Id" 
                    style="font-size: medium"></asp:Label>
                <br />
                
            </td>
            <td align=justify >
            <br />
                <asp:TextBox ID="txtBatchId" runat="server" ReadOnly="True" 
                    ToolTip="Automatic Generated" Width="120px"></asp:TextBox>
                <br/>
            </td>
            <td></td>
            </tr>
            
            <tr>
            <td align=justify style="width: 118px">
            <br />
                &nbsp;<asp:Label ID="lblCourseCode" runat="server" Text="Course Code" 
                    style="font-size: medium"></asp:Label>&nbsp;
                <br/>
            </td>
            <td align=justify>
                <asp:DropDownList ID="ddlCourseCode" DataSourceID="SqlDataSource1" 
                    runat="server" Height="30px" Width="120px" 
                    CssClass="input-small"
                     DataTextField="Course_Code" DataValueField="Course_Code">
                </asp:DropDownList> 
                <br/>
            </td>
            <td>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Course_Code], [course_Name] FROM [Courses]"></asp:SqlDataSource>
            <br />
            </td>
            </tr>
            
            <tr>
            <td align=justify style="width: 118px">
            <br />
                &nbsp;<asp:Label ID="lblBatchYear" runat="server" Text="Batch Year" 
                    style="font-size: medium"></asp:Label>
                <br/>
            </td>
            <td>
            <br />
                <asp:TextBox ID="txtBatchYear" runat="server" Width="120px"></asp:TextBox>
                <br/>
            </td>
            
            <td><br /><br /></td>
            </tr>
            
            
            <tr>
            <td align=justify style="width: 118px">
                <br/>
                <asp:Button ID="btnInsert" runat="server" CssClass="btn btn-primary" 
                    Text="Insert" />
                <br/>
            </td>
            <td>
                <br/>
                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-success" 
                    Text="Cancel" />
                <br/>
                
            </td>
            <td><br /><br /></td>
            </tr>
            
            </table>
            </fieldset>
    
            <br />
            <br />
            <br />
            <div>
                <asp:DropDownList ID="DropDownList1" DataSourceID="SqlDataSource1" runat="server"
                    Height="30px" Width="191px" CssClass="input-small" DataTextField="Course_Code"
                    DataValueField="Course_Code">
                </asp:DropDownList>
                
                <trirand:JQGrid ID="JQGrid1" runat="server" AddDialogSettings-Resizable="false" AddDialogSettings-Width="360"
                    AppearanceSettings-Caption="Batch List" AppearanceSettings-ShrinkToFit="true"
                     OnRowDeleting="JQGrid1_RowDeleting" OnRowAdding="JQGrid1_RowAdding"
                    OnRowEditing="JQGrid1_RowEditing" Height="200px"  Width ="700px" 
                    style="height: 21px">
                    
                    <EditDialogSettings CloseAfterEditing="True" />
                    <AppearanceSettings Caption="Batch List" />
                    <AddDialogSettings Resizable="False" Width="360" />
                   
                    <Columns>
                        <trirand:JQGridColumn DataField="Batch_Id" TextAlign="center" Editable="true"  HeaderText ="Batch Id" PrimaryKey="True"/>
                        <trirand:JQGridColumn DataField="Course_Code" TextAlign="center" Editable="true" HeaderText ="Course Code"  EditorControlID="DropDownList1"
                            EditType="DropDown" />
                        <trirand:JQGridColumn DataField="Batch_Year" TextAlign="center" HeaderText ="Batch Year" Editable="true"/>
                    </Columns>
                    <ToolBarSettings ShowAddButton="false" ShowDeleteButton="true" ShowEditButton="true"
                        ShowRefreshButton="True" ShowSearchButton="True" />
                </trirand:JQGrid>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
    <p>
    </p>
</asp:Content>
