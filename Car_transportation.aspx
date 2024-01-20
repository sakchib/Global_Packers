<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Car_transportation.aspx.cs" Inherits="Car_transportation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    
   .hs-header
   {
       background: linear-gradient(rgba(6, 3, 21, .5), rgba(6, 3, 21, .5)), url(img/car.jpg) center no-repeat;
       background-size: cover;
   }
   
  
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Page Header(breadcrumb) Start -->
    <div class="container-fluid hs-header py-5" style="margin-bottom: 6rem;">
        <div class="container py-5">
            <h1 class="display-3 text-white mb-3 animated zoomIn">Car Transportation</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a class="c" href="Index.aspx">Home</a></li>
                    <li class="breadcrumb-item"><a class="c" href="Services.aspx">Services</a></li>
                    <li class="breadcrumb-item"><a class="c active" href="#">Car Transportation</a></li>
                </ol>
            </nav>
        </div>
        
    </div>
    <!-- Page Header End -->
     <!-- car transportation content Start -->
    <div class="container-fluid overflow-hidden  px-lg-0">
        <div class="container feature py-5 px-lg-0">
            <div class="row g-5 mx-lg-0">
                <div class="col-lg-5 feature-text wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="text-secondary text-uppercase mb-3">SERVICES</h6>
                    <h1 class="mb-5" style="color:#ff3e41">OUR SERVICES</h1>
                
                    <ul class="ullinks" style="list-style-type:none">
                       
                    <li><a href="Home_shift.aspx"><i class="fa-solid fa-house fa-beat-fade"></i>Home Shifting</a></li>
                    <li><a href="Office_shift.aspx"><i class="fa-sharp fa-solid fa-building fa-beat-fade" style="margin-left:5px"></i> Office Shifting</a></li>
                    <li><a href="Packing_shift.aspx"><i class="fa-solid fa-boxes-packing fa-beat-fade"></i>Packing Shifting</a></li>
                    <li><a href="loading_and_unloading.aspx"><i class="fa-solid fa-plane-departure fa-beat-fade"></i>Loading And Unloading</a></li>
                    <li><a href="Car_transportation.aspx"><i class="fa-solid fa-truck-fast fa-beat-fade"></i>Car Transportation</a></li>
                    <li><a href="wharehouse_service.aspx"><i class="fa-solid fa-warehouse fa-beat-fade"></i>WhareHouse Services</a></li>
                    </ul>
                </div>
                <div class="col-lg-7 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="">
                        <img class=" img-fluid w-100 " src="img/car-transportation-service.jpg"  style="object-fit: cover; max-width:96%;box-shadow: 3px 3px 7px #9d9898;" alt="">
                        <br />
                        
                       
                        
                    </div><br />
                    <div class="pad">
                    <p class="text-dark" style="font-size: 30px; font-weight: 600;">Car Transportation – Service Overview</p>
                    <p class="text-dark " style="line-height:2;">Being an eminent entity of the industry, <strong>Global Best Packers and Movers</strong> – J&k is extremely involved in presenting Car Transportation Service to our valuable customers. Movers and Packers in Jammu and kashnmir render our patrons safe and steadfast Car Carrier Services.</p>
                    <p class="text-dark"style="line-height:2;"><strong>Global Best Packers and Movers</strong> provide comprehensive transportation services. We move forward with better moving solutions. We provide our clients with competitive rates for all types of moving services in the market. Our best and safe transport company pays utmost attention to meeting the needs of each of our clients.</p>
                     <p class="text-dark"style="line-height:2;">Customers love our always helpful approach and have been quite impressed with our moving services. Thus our transport company is moving towards good profitability in moving service business in India. We always go ahead with the best ethical transportation services and our professional moving team is eager to let the clients benefit from our services.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End -->

      <!-- Our details-->
    <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="padding-right:0px;">
                    <h6 class="text-secondary text-uppercase mb-3">Reviews</h6>
                    <h1 class="mb-5" style="color:#ff3e41;">Our Details</h1>

                    <div class="row g-0 mb-1">

                   <div class="col-lg-6 col-md-6">

                   <h4 class="mb-3"><i class="fa-solid fa-circle-check fa-beat" style="color: #2dd240;"></i> Insurance & Guarantee</h5>
                   <h4 class="mb-3"><i class="fa-solid fa-circle-check fa-beat" style="color: #2dd240;"></i> Professional Staff</h5>
                   </div>

                   <div class="col-lg-6 col-md-6" style="padding-left:11px;">

                   <h4 class="mb-3"><i class="fa-solid fa-circle-check fa-beat" style="color: #2dd240;"></i> 24/7 Support</h5>
                   <h4 class="mb-3"><i class="fa-solid fa-circle-check fa-beat" style="color: #2dd240;"></i> On -Time Delivery</h5>
                   </div>
                   </div>
                   <br />
                    <div class="d-flex align-items-center">
                        <i class="fa fa-headphones fa-2x flex-shrink-0 bg-primary p-3 text-white"></i>
                        <div class="ps-4">
                            <h6>Call for any query <i class="fa-solid fa-exclamation fa-fade" style="color: red;"></i></h6>
                            <h3 class="text-primary m-0">+91 70061699540</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row g-4 align-items-center">
                        <div class="col-sm-6">
                            <div class="bg-primary p-4 mb-4 wow fadeIn" data-wow-delay="0.3s">
                                <i class="fa fa-users fa-2x text-white mb-3"></i>
                                <h2 class="text-white mb-2" data-toggle="counter-up">200</h2>
                                <p class="text-white mb-0">Satisfied Clients</p>
                            </div>
                            <div class="bg-secondary p-4 wow fadeIn" data-wow-delay="0.5s">
                             <i class="fa-solid fa-truck-fast fa-2x text-white mb-3" style="color: #ffffff;"></i>
                                <h2 class="text-white mb-2" data-toggle="counter-up">320</h2>
                                <p class="text-white mb-0">Home Shifted</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="bg-success p-4 wow fadeIn" data-wow-delay="0.7s">
                                <i class="fa fa-star fa-2x text-white mb-3"></i>
                                <h2 class="text-white mb-2" data-toggle="counter-up">60</h2>
                                <p class="text-white mb-0">clients Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Fact End -->
        

</asp:Content>

