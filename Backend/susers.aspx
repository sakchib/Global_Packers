<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Site.master" AutoEventWireup="true" CodeFile="susers.aspx.cs" Inherits="Backend_susers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Subscribed Users
        
      </h1>
     
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

    
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">  Subscribed Users</h3>

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
                onrowcommand="GridView1_RowCommand"  Width="100%" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>

                     

                <asp:TemplateField HeaderText=" Name " ItemStyle-VerticalAlign="Top">
    <ItemTemplate>
    <asp:Label ID="cat" runat="server" Text='<%#Eval("name") %>' />
    </ItemTemplate>

<HeaderStyle></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText=" Email " ItemStyle-VerticalAlign="Top">
    <ItemTemplate>
    <asp:Label ID="cat2" runat="server" Text='<%#Eval("email") %>' />
    </ItemTemplate>

<HeaderStyle></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
    <asp:TemplateField HeaderText=" Phone No. " ItemStyle-VerticalAlign="Top">
    <ItemTemplate>
    <asp:Label ID="cat1" runat="server" Text='<%#Eval("phoneno") %>' />
    </ItemTemplate>

<HeaderStyle></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>



        
                   
    
    
    </Columns>
           <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <EditRowStyle BackColor="#7C6F57" />
        <EmptyDataTemplate>
                       There IS NO DATA.
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

