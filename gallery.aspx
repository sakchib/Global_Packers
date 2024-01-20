<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .header
    {
        background: linear-gradient(rgb(6 3 21 / 6%), rgb(6 3 21 / 18%)), url(img/gallery.jpg) center no-repeat;
       background-size: cover;
        
    }
    .padding
    {
        padding-top:8rem;
        padding-bottom:8rem;
    }
    .text
    {
        text-align:center;
        font-size:100px;
        font-weight:600;
     text-shadow: 8px 6px 10px #3e3c3c8f;
        color:#ef2424db;
    }
    .bc
    {
        text-shadow: 2px 5px 5px #2a2828;
    text-align: cemter;
    font-size: 26px;
<%--    margin-left: 21rem;--%>
    /* text-align: right; */
    margin-top: -37px;
    }
   
   .button
   {
       text-align: center;
    margin-bottom: 4.375em;
    position: relative;
   }
   .container
   {
       padding-top: 4.0625em;
    padding-bottom: 3.75em;
    max-width: 1170px;
    margin-right: auto;
    margin-left: auto;
   }
   .na-group
   {
       text-align: center;
    margin-bottom: 4.375em;
    position: relative;
    }
    
   .button
   {
   }
   
   .tt
   {
       list-style-type: none;
    display: flex;
     border-bottom:1px solid lightgray;
    
   }
   
   .d-md-grid
   {
       display: inline-grid !important;
   }
   
   .tl 
   {
  margin:0;
   }
   
   
   
   .tl
   {
       font-size:16px;
       color:Black;
   }
   .tl:hover
   {
       color:Red;
       border-bottom:2px solid #92a8d1; 
       transform: scaleX(1);
   }
   
   .t
    {
        border:1px solid lightblue;
     }
     .t:hover
     {
        background:lightcyan;
       
     }
   
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div class=" header padding container-fluid hs-header ">
 <div class="container">
 <h1 class="display-3 mb-3 animated zoomIn text mb-5">Gallery</h1>
  <nav class="bc animated slideInDown" aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="c" href="Index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a class="c" href="Services.aspx">Services</a></li>
                    <li class="breadcrumb-item"><a class="c active" href="#">Car Transportation</a></li>
                </ol>
            </nav>
 </div>
 </div>
 <br />
 <br />
 <!------- Grid-View ------------->
 <div class="container">
 <div class="na-group ">

 <asp:Button ID="Button8" runat="server" Text="ALL" 
            class="col-lg-2 col-md-4 col-sm-12 btn tl t" onclick="Button8_Click"></asp:Button>
            
            <br /><br />

    <nav style="margin: 0 auto; ">
    
    <div class="row tt tg">
    
     
    <asp:Button ID="Button1" runat="server" Text="Home Shifting" 
            class="col-lg-2 col-md-4 col-sm-12 btn tl" onclick="Button1_Click"></asp:Button>
    <asp:Button ID="Button2" runat="server" Text="Office Shifting" 
            class="col-lg-2 col-md-4 col-sm-12 btn tl" onclick="Button2_Click"></asp:Button>
    <asp:Button ID="Button3" runat="server" Text="Packing Shifting" 
            class="col-lg-2 col-md-4 col-sm-12 btn tl" onclick="Button3_Click"></asp:Button>
    <asp:Button ID="Button4" runat="server" Text="Loading & Unloading" 
            class="col-lg-2 col-md-4 col-sm-12 btn tl" onclick="Button4_Click"></asp:Button>
    <asp:Button ID="Button5" runat="server" Text="Car Transportation" 
            class="col-lg-2 col-md-4 col-sm-12 btn tl" onclick="Button5_Click"></asp:Button>
    <asp:Button ID="Button6" runat="server" Text="WhareHouse" 
            class="col-lg-2 col-md-4 col-sm-12 btn tl" onclick="Button6_Click"></asp:Button>
    </div>
 <%--<ul class="row">
 <li class="col-lg-2 col-md-4 col-sm-12 btn"><a href="#" class="button">House Shifting</a></li>
 <li class="col-lg-2 col-md-4 col-sm-12 btn"><a href="#">Office Shifting</a></li>
 <li class="col-lg-2 col-md-4 col-sm-12 btn"><a href="#">Packing Shifting</a></li>
 <li class="col-lg-2 col-md-4 col-sm-12 btn"><a href="#">Loading & Unloading</a></li>
 <li class="col-lg-2 col-md-4 col-sm-12 btn"><a href="#">Car Transportation</a></li>
 <li class="col-lg-2 col-md-4 col-sm-12 btn"><a href="#">WhareHouse</a></li>
 </ul>--%>
 </nav>
 </div>
 </div>
                    <div class="row griddiv" style="padding-left: 27px;">
                        
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true"
            ShowHeader="False" PageSize="8" BorderStyle="None" GridLines="None"
        onpageindexchanging="GridView1_PageIndexChanging">
               
           <RowStyle CssClass="col-lg-4 col-md-6 col-sm-12 d-lg-inline-flex d-md-grid" />
        <PagerStyle HorizontalAlign = "Center" CssClass="cssPager mt-2 d-block text-primary GridPager"   Font-Bold="true" Font-Size="Large"/>
           <PagerSettings Mode="NumericFirstLast" />                       
         <Columns><asp:TemplateField >
    <ItemTemplate>

                        
                            <div class="position-relative mb-3">                                
                                <img class="img-fluid " style="object-fit: cover; width:90%; height:500px;" src='<%#this.ResolveUrl("~/Gallery-Pics/" + Eval("File_Name")) %>' alt="'<%#Eval("Title") %>'"/>
                               <br /><br />
                                <div class="overlay position-relative bg-light" style="text-align:center; width:90%;">
                                    <%--<div class="mb-2" style="font-size: 14px;">                                    
                                        <span class="text-primary"><asp:Label ID="Label12" runat="server" Text='<%#Eval("Edate","{0:dd MMM, yyyy}") %>' /></span>
                                    </div>--%>
                                    <span class="h5">
                                    <asp:Label ID="Label6"  
 runat="server" Text='<%# (Eval("Title").ToString().Length > 50) ? (Eval("Title").ToString().Substring(0, 50) + "...") : Eval("Title")%>' ></asp:Label>   
                                    </span>
                                    
                                </div>
                            </div>
                        

                                               </ItemTemplate>
    </asp:TemplateField>
    </Columns>

 </asp:GridView>
                                               
                    </div>
                    
                                        
                    <!--------Grid-View-End---------->
 </div>
 </div>

</asp:Content>

