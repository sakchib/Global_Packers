<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Site.master" AutoEventWireup="true" CodeFile="updatepass.aspx.cs" Inherits="Backend_updatepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Update Password
        
      </h1>
     
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

    
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Manage Login Password</h3>

         
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">

               <div class="col-md-12">
               
             <div class="form-group">
                  <label for="exampleInputEmail1">Old Password</label>
                 <asp:TextBox ID="TextBox1" TextMode="Password" runat="server" 
                      class="form-control"  Width="50%" 
                       ></asp:TextBox> 
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox1" ValidationGroup="s"></asp:RequiredFieldValidator>
                </div>
            </div>


               <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1">New Password</label>
                 <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                      TextMode="Password" Width="50%"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox2" ValidationGroup="s"></asp:RequiredFieldValidator>
                
                </div>
            </div>
             <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1">Confirm Password</label>
                 <asp:TextBox ID="TextBox3" runat="server" class="form-control" 
                      TextMode="Password" Width="50%"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="TextBox3" ValidationGroup="s"></asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Does Not Match" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ValidationGroup="s" ForeColor="Red"></asp:CompareValidator>
                </div>
            </div>
            



          </div>
          <!-- /.row -->
        </div>
        <!-- /.box-body -->
          <div class="box-footer">
                
               <asp:Button ID="btnsave" runat="server" Text="Change Password" class="btn btn-primary"
                 ValidationGroup="s" 
                   onclick="btnsave_Click"/>
            
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btncancel" runat="server" class="btn btn-primary" Text="Cancel" 
                Visible="False" onclick="btncancel_Click" />


              </div>
      </div>




          




    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</asp:Content>

