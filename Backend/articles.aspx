<%@ Page Title="" Language="C#" MasterPageFile="~/Backend/Site.master" AutoEventWireup="true" CodeFile="articles.aspx.cs" Inherits="Adminpanel_articles" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit.HTMLEditor" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <script language="javascript" type="text/javascript">
        function checkTextAreaMaxLength(textBox, e, length) {
            var mLen = textBox["MaxLength"];
            if (null == mLen)
                mLen = length;
            var maxLength = parseInt(mLen);
            if (!checkSpecialKeys(e)) {
                if (textBox.value.length > maxLength - 1) {
                    if (window.event)//IE   
                        e.returnValue = false;
                    else//Firefox      
                        e.preventDefault();                    
                }
            }
        }

        function checkSpecialKeys(e) {
            if (e.keyCode != 8 && e.keyCode != 46 && e.keyCode != 37 && e.keyCode != 38 && e.keyCode != 39 && e.keyCode != 40)
                return false; else return true;
        }

        function validate() {
            if (document.getElementById("<%=TextBox2.ClientID%>").content == "") {
             alert("Heading Feild can not be blank");
             document.getElementById("<%=TextBox2.ClientID%>").focus();
             return false;
         }
         if (document.getElementById("<%=txtdesc.Content%>").content == "") {
             alert("Description Field can not be blank");
             document.getElementById("<%=txtdesc.Content%>").focus();
             return false;
         }

     }

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
      <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       Manage News
        
      </h1>
     <%-- <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>--%>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here |
        -------------------------->

         <!-- SELECT2 EXAMPLE -->
      <div class="box box-default">
        <div class="box-header with-border">
          <h3 class="box-title">Manage News</h3>

          <%--<div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-remove"></i></button>
          </div>--%>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1">News Category :</label>
             <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                <asp:ListItem>Select Category</asp:ListItem>
                <asp:ListItem>STATE</asp:ListItem>
                <asp:ListItem>NATIONAL</asp:ListItem>
                <asp:ListItem>WORLD</asp:ListItem>
                <asp:ListItem>SPORTS</asp:ListItem>
                <asp:ListItem>ENTERTAINMENT</asp:ListItem>
                <asp:ListItem>BUSINESS</asp:ListItem>
                <asp:ListItem>POLITICS</asp:ListItem>
            </asp:DropDownList>
                </div>
            </div>

               <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1">Location</label>
                 <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox> 
                </div>
            </div>


               <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1">News Title :</label>
                 <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                      ontextchanged="TextBox2_TextChanged"></asp:TextBox>
                 
                </div>
            </div>


<%--              <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1">SEO URL :</label>
                 <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="775px" 
                onkeyDown="checkTextAreaMaxLength(this,event,'80');" AutoPostBack="True" ontextchanged="TextBox3_TextChanged" 
                 ></asp:TextBox>
                </div>
            </div>--%>


               <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1">Video URL :</label>
                  <asp:TextBox ID="txtdesshort" runat="server" class="form-control" 
           onkeyDown="checkTextAreaMaxLength(this,event,'750');" 
                TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>


               <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Full Description</label>
                  <cc1:editor ID="txtdesc" class="form-control" runat="server" />
                </div>
            </div>





                <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Add Banner Image:</label>
                  <asp:FileUpload ID="FileUpload2" class="form-control" runat="server" />
                </div>
            </div>


                <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Author Name:</label>
                 <asp:TextBox ID="txtauthor" class="form-control" runat="server" Text="Associated News Bureau"></asp:TextBox>
                </div>
            </div>


                 <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Is Breaking News ?</label>
                  <asp:CheckBox ID="CheckBox1" type="checkbox" runat="server" />
                </div>
            </div>
             <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Is Popular News ?</label>
                  <asp:CheckBox ID="CheckBox2" type="checkbox" runat="server" />
                </div>
            </div>
             <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Is Top Banner News ?</label>
                  <asp:CheckBox ID="CheckBox3" type="checkbox" runat="server" />
                </div>
            </div>
             <div class="col-md-12">
             <div class="form-group">
                  <label for="exampleInputEmail1"><span style="color: #FF0000">*</span>Is First Top Banner News ?</label>
                  <asp:CheckBox ID="CheckBox4" type="checkbox" runat="server" />
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

                     
                <asp:TemplateField HeaderText=" Category "  HeaderStyle-CssClass="hidden-sm" ItemStyle-CssClass="hidden-sm" ItemStyle-VerticalAlign="Top">
    <ItemTemplate><div style="text-align:left;">
    <asp:Label ID="cat" runat="server" Text='<%#Eval("category") %>' /></div>
    </ItemTemplate>

<HeaderStyle></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>

    <asp:TemplateField HeaderText=" Title " ItemStyle-VerticalAlign="Top">
    <ItemTemplate><div style="text-align:left;">
    <asp:Label ID="title" runat="server" Text='<%#Eval("title") %>' /></div>
    </ItemTemplate>

<HeaderStyle></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Date" ItemStyle-VerticalAlign="Top">
    <ItemTemplate><div style="text-align:left;">
    <asp:Label ID="date" runat="server" Text = '<%#Eval("lastupdatedate","{0:dd/MM/yyyy}")%>' /></div>
    </ItemTemplate>

<HeaderStyle></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>


    <asp:TemplateField HeaderText="News Link" ItemStyle-VerticalAlign="Top">
    <ItemTemplate><div style="text-align:left;">
   <asp:Label ID="status" runat="server" Text = '<%#"www.anbnews.in"+"/"+""+Eval("Cleantitle")%>' /></div>
    </ItemTemplate>

<HeaderStyle Width="120px"></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
         
       
    <asp:TemplateField HeaderText="Update"  ItemStyle-VerticalAlign="Top">
    <ItemTemplate><div style="text-align:center;">
    <asp:LinkButton ID="edit" runat="server" ForeColor="Black" Text="edit" CommandName="edit" CommandArgument='<%#Eval("id") %>' /></div>
    </ItemTemplate>

<HeaderStyle ></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
    
    <asp:TemplateField HeaderText="Delete" ItemStyle-VerticalAlign="Top">
    <ItemTemplate>
    <asp:LinkButton ID="delete" runat="server" ForeColor="Black"  Text="delete" CommandName ="delete" OnClientClick="return confirm('Are You Sure Want To Delete?');" CommandArgument='<%#Eval("id") %>' />
    </ItemTemplate>

<HeaderStyle ></HeaderStyle>

<ItemStyle VerticalAlign="Top"></ItemStyle>
    </asp:TemplateField>
    
    </Columns>
           <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <EditRowStyle BackColor="#7C6F57" />
        <EmptyDataTemplate>
                       There IS NO NEWS ADDED.
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

