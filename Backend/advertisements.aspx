<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Site.master" AutoEventWireup="true" CodeFile="advertisements.aspx.cs" Inherits="Backend_advertisements" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add Advertisements 
        
      </h1>
      
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

    
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Manage Ads</h3>

         
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">

               <div class="col-md-12">
               
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Title</label>
                 <asp:TextBox ID="TextBox1" runat="server" class="form-control" 
                    ></asp:TextBox> 
                </div>
            </div>
            

               <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Add Ad Image:</label>
                  <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />
                </div>
            </div>
            
          



          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
          <div class="box-footer">
                
               <asp:Button ID="btnsave" runat="server" Text="Save" class="btn btn-primary"
                onclick="btnsave_Click" OnClientClick="return validate()"  ValidationGroup="s"/>
            <asp:Button ID="btnupdate" runat="server" Text="Update" Visible="False" 
                class="btn btn-primary" onclick="btnupdate_Click" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server" class="btn btn-primary" onclick="btncancel_Click" Text="Cancel" 
                Visible="False" />


              </div>
      </div>




        <div class="box box-default">
              <div class="box-header with-border">
                  <div class="box-body">
                      <div class="row">
                          <div class="col-md-12">

<asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4"  AutoGenerateColumns="False" 
                style="margin-top: 0px" HorizontalAlign="Center" PageSize="10" 
                onpageindexchanging="GridView1_PageIndexChanging"
                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                onrowediting="GridView1_RowEditing" Width="100%" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>

                     
                     
                <asp:TemplateField HeaderText=" Title " ItemStyle-VerticalAlign="Top">
    <ItemTemplate>
    <asp:Label ID="cat" runat="server" Text='<%#Eval("title") %>' />
    </ItemTemplate>

<HeaderStyle></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
       
    <asp:TemplateField HeaderText="Update" ItemStyle-VerticalAlign="Top">
    <ItemTemplate>
    <asp:LinkButton ID="edit" runat="server" ForeColor="Black" Text="edit" CommandName="edit" CommandArgument='<%#Eval("id") %>' />
    </ItemTemplate>

<HeaderStyle ></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
    <ItemTemplate>
    <asp:LinkButton ID="disable" runat="server" ForeColor="Red" Text="delete" CommandName="delete" CommandArgument='<%#Eval("id") %>' OnClientClick="return confirm('Are you sure you want to delete this entry ?')"/>
    </ItemTemplate>

<HeaderStyle></HeaderStyle>
                        <ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
    
    
    </Columns>
           <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <EditRowStyle BackColor="#7C6F57" />
        <EmptyDataTemplate>
                       There IS NO DATA ADDED.
        </EmptyDataTemplate>

                <RowStyle BackColor="#E3EAEB" />

           <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" 
                    HorizontalAlign="Center" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />

        </asp:GridView>

                          </div>
                      </div>
                  </div>
              </div>
          </div>
          




    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
</asp:Content>

