<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    .text
    {
        color:White;
    }
    .logo
    {
        border-radius: 20px;
    box-shadow: 3px 4px 12px 1px #c3bfbf;
    }
    .text
    {
        color:White;
    }
    .text:hover
    {
       color: #fb383cfc;
    text-shadow: 2px 4px 9px #2c2b2b
    }
    .message
    {
        height:128px;
    }
    .message:focus
    {
         height:170px;
       transition: height 0.2s ease-in-out;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- Carousel Start -->
    <div class="container-fluid p-0 pb-4">
        <div class="owl-carousel header-carousel position-relative mb-5">
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/carousel%20truck-1.jpg" alt="" style="height:590px;">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Transport & Logistics</h5>
                                <h3 class="display-1 text-white animated slideInDown mb-4"><span class=""><img src="img/GBP-logo.jpeg"  alt="" class="logo" style="width:80%; position:relative;" /></span></h3>
                                <h1 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa fa-headphones fa-beat text-primary me-3"></i>+91 7006199540</span></h1>
                                <h2 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa-solid fa-envelope fa-beat text-primary me-3"></i><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl = "mailto:globalbestpm@gmail.com"  class="text" >globalbestpm@gmail.com</asp:HyperLink></span></h2>
                               
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Global Best Packers & Movers Place For Your <span class="text-primary">Logistics</span>Packages Items Deliverd Safely Door to Door..</p>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/carousel%20truck-2.jpg" alt="" style="height:590px;">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Transport & Logistics </h5>
                                 <h1 class="display-3 text-white animated slideInDown mb-4"><span class=""><img src="img/GBP-logo.jpeg" alt="" class="logo" style="width:80%;" /></span> </h1>
                                <h1 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa fa-headphones fa-beat text-primary me-3"></i>+91 7006199540></span></h1>
                                             <h2 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa-solid fa-envelope fa-beat text-primary me-3"></i><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl = "mailto:globalbestpm@gmail.com"  class="text" >globalbestpm@gmail.com</asp:HyperLink></span></h2>
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Global Best Packers & Movers Place For Your <span class="text-primary">Logistics</span>Packages Items Deliverd Safely Door to Door..</p>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="img/parcel%20image.jpg" alt="" style="height:590px;">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Transport & Logistics </h5>
                                 <h1 class="display-3 text-white animated slideInDown mb-4"><span class=""><img src="img/GBP-logo.jpeg" alt="" class="logo" style="width:80%;" /></span> </h1>
                                <h1 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa fa-headphones fa-beat text-primary me-3"></i>+91 7006199540</span></h1>
                                             <h2 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa-solid fa-envelope fa-beat text-primary me-3"></i><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl = "mailto:globalbestpm@gmail.com"  class="text" >globalbestpm@gmail.com</asp:HyperLink></span></h2>
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Global Best Packers & Movers Place For Your <span class="text-primary">Logistics</span>Packages Items Deliverd Safely Door to Door..</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
               
                <img class="img-fluid" src="img/parcel%20image2.jpg" alt="" style="height:590px;">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Transport & Logistics </h5>
                                 <h1 class="display-3 text-white animated slideInDown mb-4"><span class=""><img src="img/GBP-logo.jpeg" alt="" class="logo" style="width:80%;" /></span></h1>
                                 <h1 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa fa-headphones fa-beat text-primary me-3"></i>+91 7006199540</span></h1>
                                             <h2 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa-solid fa-envelope fa-beat text-primary me-3"></i><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl = "mailto:globalbestpm@gmail.com"  class="text" >globalbestpm@gmail.com</asp:HyperLink></span></h2>
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Global Best Packers & Movers Place For Your <span class="text-primary">Logistics</span>Packages Items Deliverd Safely Door to Door..</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="owl-carousel-item position-relative">
                
                <img class="img-fluid" src="img/office_1.jpeg" alt="" style="height:590px;">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(6, 3, 21, .5);">
                    <div class="container">
                        
                        <div class="row justify-content-start">
                            <div class="col-10 col-lg-8">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Transport & Logistics</h5>
                                 <h1 class="display-3 text-white animated slideInDown mb-4"><span class=""><img src="img/GBP-logo.jpeg" class="logo" style="width:80%;" /></span></h1>
                                <h1 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa fa-headphones fa-beat text-primary me-3"></i>+91 7006199540</span></h1>
                                             <h2 class=" text-white animated slideInDown mb-4"><span class=""><i class="fa-solid fa-envelope fa-beat text-primary me-3"></i><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl = "mailto:globalbestpm@gmail.com"  class="text" >globalbestpm@gmail.com</asp:HyperLink></span></h2>
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Global Best Packers & Movers Place For Your <span class="text-primary">Logistics</span>Packages Items Deliverd Safely Door to Door..</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
        </div>
    </div>
    <!-- Carousel End -->


   <!-- About Start -->
    <div class="container-fluid overflow-hidden py-5 px-lg-0">
        <div class="container about py-5 px-lg-0">
            <div class="row g-5 mx-lg-0">
                <div class="col-lg-6 ps-lg-0 wow fadeInLeft" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute img-fluid w-100 h-100" src="img/about_deliver%201.jpg" style="object-fit: cover;" alt="">
                    </div>
                    

                    
                </div>
                <div class="col-lg-6 about-text wow fadeInUp" data-wow-delay="0.3s">
                    <h6 class="text-secondary text-uppercase mb-3">About Us</h6>
                    <h1 class="mb-5">Global Best Packers & Movers</h1>
                    <p class="mb-5">Global Best Packers & Movers is a well-known packers and movers in Jammu, promising to fulfill your relocation requirements at the most affordable price. Having several years of experience in the packing and moving industry, they have helped countless customers all over India. They provide end-to-end packing and moving services within and outside Jammu. Their trained team individuals are capable enough to handle your complete moving service. </p>
                    <div class="row g-4 mb-5">
                        <div class="col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                            <i class="fa fa-globe fa-3x text-primary mb-3"></i>
                            <h5>Nation Coverage</h5>
                            <p class="m-0">Global Best Packers and Movers is counted among the most renowned and largest logistics companies in India, Jammu & Kashmir.Global Best Packers and Movers is  an ISO Certified 9001:2008 Company. </p>
                        </div>
                        <div class="col-sm-6 wow fadeIn" data-wow-delay="0.7s">
                            <i class="fa fa-shipping-fast fa-3x text-primary mb-3"></i>
                            <h5>On Time Delivery</h5>
                            <p class="m-0"> The company focuses on delivering prompt services with safe packaging, the safety of all the consignments, and timely delivery of the consignment by adopting stringent management systems.</p>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->

  <!-- Fact Start -->
    <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="text-secondary text-uppercase mb-3">Some Facts</h6>
                    <h1 class="mb-5">Global Best Packers & Movers Company Place To Manage All Of Your Packages and Deliveries</h1>
                    <p class="mb-5">Several years of experienced staff will take care of your  packages and safely delivery to your home.</p>
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
                              <h2 class="text-white mb-2" data-toggle="counter-up">500</h2>
                                <p class="text-white mb-0">Happy Clients</p>
                            </div>
                            <div class="bg-secondary p-4 wow fadeIn" data-wow-delay="0.5s">
                                <i class="fa fa-ship fa-2x text-white mb-3"></i>
                                <h2 class="text-white mb-2" data-toggle="counter-up">200</h2>
                                <p class="text-white mb-0">Complete Shipments</p>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="bg-success p-4 wow fadeIn" data-wow-delay="0.7s">
                                <i class="fa fa-star fa-2x text-white mb-3"></i>
                                <h2 class="text-white mb-2" data-toggle="counter-up">300</h2>
                                <p class="text-white mb-0">Customer Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Fact End -->


    <!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="text-secondary text-uppercase">Our Services</h6>
                <h1 class="mb-5" style="color:#ff3e41">Explore Our Services</h1>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <a href="Home_shift.aspx"><img class="img-fluid" src="img/hs_cover.jpg" alt="" /></a>
                        </div>
                       
                        
                        <h4 class="mb-3">Home Shifting</h4>
                        <p>Our Household Shifting services will help to relocation of your business to the new place with complete peace of mind without too much interruption in your business. </p>
                        <a class="btn-slide mt-2" href="Home_shift.aspx"><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <a href="Office_shift.aspx"><img class="img-fluid" src="img/office-shiftin-logo.jpg" alt="" style="height: 175px; object-fit: cover; width: 100%;" /></a>
                        </div>
                        
                        <h4 class="mb-3">Office Shifting</h4>
                        <p>We guarantee our customers products will be stacked appropriately so they can show up at their separate objective with no harm.<br /><br /></p>
                        <a class="btn-slide mt-2" href="Office_shift.aspx"><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                             <a href="Packing_shift.aspx"><img class="img-fluid" src="img/Packing.jpg" alt="" style="width: 100%;height: 175px;object-fit: cover;" /></a>
                        </div>
                        <h4 class="mb-3">Packing Shifting</h4>
                        <p>We Global Best Packers and Movers details while packaging processes and to household goods moving services.The safe packaging is  importance for us.</p>
                        <a class="btn-slide mt-2" href="Packing_shift.aspx"><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                             <a href="loading_and_unloading.aspx"><img class="img-fluid" src="img/Loading-Unloading-Services.jpg" alt="" /></a>
                        </div>
                        <h4 class="mb-3">Loading And Unloading</h4>
                        <p>Are you worried about your loading and unloading process then just think about Global best Packers and Movers. We will do everything with extreme care and affordable rates.</p>
                        <a class="btn-slide mt-2" href="loading_and_unloading.aspx"><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                             <a href="Car_transportation.aspx"><img class="img-fluid" src="img/car-transportation-service.jpg" alt="" style="width: 100%;height: 177px;object-fit: cover;" /></a>
                        </div>
                        <h4 class="mb-3">Car Transportation</h4>
                        <p>Global Best Packers and Movers provide comprehensive transportation services. We move forward with better moving solutions.<br /><br /></p>
                        <a class="btn-slide mt-2" href="Car_transportation.aspx"><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="service-item p-4">
                        <div class="overflow-hidden mb-4">
                            <a href="wharehouse_service.aspx"> <img class="img-fluid" src="img/service-6.jpg" alt=""/></a>
                        </div>
                        <h4 class="mb-3">Warehouse Service</h4>
                        <p>Our warehouses are self owned and managed by highly experienced managers who keep track of all kind of inventory.<br /><br /></p>
                        <a class="btn-slide mt-2" href="wharehouse_service.aspx"><i class="fa fa-arrow-right"></i><span>Read More</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


    <!-- Feature Start -->
    <div class="container-fluid overflow-hidden py-5 px-lg-0">
        <div class="container feature py-5 px-lg-0">
            <div class="row g-5 mx-lg-0">
                <div class="col-lg-6 feature-text wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="text-secondary text-uppercase mb-3">Our Features</h6>
                    <h1 class="mb-5">We Are Trusted  Global Best Packers & Movers Company </h1>
                    <div class="d-flex mb-5 wow fadeInUp" data-wow-delay="0.3s">
                        <i class="fa fa-globe text-primary fa-3x flex-shrink-0"></i>
                        <div class="ms-4">
                            <h5>Nation wide Service</h5>
                            <p class="mb-0">Global Best Packers and Movers is counted among the most renowned and largest logistics companies in India, Jammu & Kashmir.Having several years of experience in the packing and moving industry, they have helped countless customers all over India.</p>
                        </div>
                    </div>
                    <div class="d-flex mb-5 wow fadeIn" data-wow-delay="0.5s">
                        <i class="fa fa-shipping-fast text-primary fa-3x flex-shrink-0"></i>
                        <div class="ms-4">
                            <h5>On Time Delivery</h5>
                            <p class="mb-0">The company focuses on delivering prompt services with safe packaging, the safety of all the consignments, and timely delivery of the consignment by adopting stringent management systems.They provide a fleet of new-era vehicles to transport your belongings within the scheduled time.</p>
                        </div>
                    </div>
                    <div class="d-flex mb-0 wow fadeInUp" data-wow-delay="0.7s">
                        <i class="fa fa-headphones text-primary fa-3x flex-shrink-0"></i>
                        <div class="ms-4">
                            <h5>24/7 Telephone Support</h5>
                            <p class="mb-0">The availability of live tracking systems, 24/7 customer support, efficient vehicles, licensed drivers, a team of dedicated professionals, and the facility of the SMS/Email alerts and free quotes makes Global Best Packers and Movers a trustworthy name in the field of packers and movers in Jammu, J&K.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 pe-lg-0 wow fadeInRight" data-wow-delay="0.1s" style="min-height: 400px;">
                    <div class="position-relative h-100">
                        <img class="position-absolute img-fluid w-100 h-100" src="img/loading.jpg" style="object-fit: cover;" alt="" />
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    <!-- Feature End -->

      <!-- Quote Start -->
    <div class="container-xxl py-5">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-lg-5 wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="text-secondary text-uppercase mb-3">Get A Quote</h6>
                    <h1 class="mb-5">Request A Free Quote!</h1>
                    <p class="mb-5">For Free Quote Kindly fill this form or Contact us this Number thank you.</p>
                    <div class="d-flex align-items-center">
                        <i class="fa fa-headphones fa-2x flex-shrink-0 bg-primary p-3 text-white"></i>
                        <div class="ps-4">
                            <h6>Call for any query <i class="fa-solid fa-exclamation fa-fade" style="color: red;"></i></h6>
                            <h3 class="text-primary m-0">+91 7006199540</h3>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="bg-light text-center p-5 wow fadeIn" data-wow-delay="0.5s">
                        <form>
                            <div class="row g-3">
                                <div class="col-12 col-sm-6">

                                    <asp:TextBox ID="Textname" runat="server" class="form-control border-0" style="height: 55px;" placeholder="Your Name" required="required" data-validation-required-message="Please Enter Your Name"></asp:TextBox>
                                    <%--<input type="text" class="form-control border-0" placeholder="Your Name" style="height: 55px;">--%>
                                </div>
                                <div class="col-12 col-sm-6">
                                <asp:TextBox ID="Textemail" runat="server" class="form-control border-0" style="height: 55px;" placeholder="Your Email" required="required" data-validation-required-message="Please Enter Your Email"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Textemail" ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic" ErrorMessage = "Invalid email address"/>
                                   
                                    <%--<input type="email" class="form-control border-0" placeholder="Your Email" style="height: 55px;">--%>
                                </div>
                                <div class="col-12 col-sm-6">
                                <asp:TextBox ID="Textmobile" runat="server" MaxLength="10" class="form-control border-0" style="height: 55px;" placeholder="Your Mobile" required="required" data-validation-required-message="Please Enter Your Mobile"></asp:TextBox>
                      <%--              <input type="text" class="form-control border-0" placeholder="Your Mobile" style="height: 55px;">--%>
                                </div>
                                <div class="col-12 col-sm-6">
                                    <asp:DropDownList ID="ServicesList" runat="server"  class="form-select border-0" style="height: 55px;" required="required" data-validation-required-message="Please Select Your Service">
                                        <asp:ListItem>--select--</asp:ListItem>
                                        <asp:ListItem>Home Shifting</asp:ListItem>
                                        <asp:ListItem>Office Shifting</asp:ListItem>
                                        <asp:ListItem>Packing Shifting</asp:ListItem>
                                        <asp:ListItem>Loading And Unloading</asp:ListItem>
                                        <asp:ListItem>Car Transportation</asp:ListItem>
                                        <asp:ListItem>Warehouse Service</asp:ListItem>
                                    </asp:DropDownList>
                                  <%--  <select class="form-select border-0" style="height: 55px;">
                                        <option selected>Select A Freight</option>
                                        <option value="1">Freight 1</option>
                                        <option value="2">Freight 2</option>
                                        <option value="3">Freight 3</option>
                                    </select>--%>
                                </div>
                                <div class="col-12">
                                    <asp:TextBox ID="Message" runat="server" TextMode="MultiLine" class="form-control border-0 message" placeholder="Details" required="required" data-validation-required-message="Please Enter Your Details"></asp:TextBox>
                                   
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" 
                                        class="btn btn-primary w-100 py-3" type="submit" onclick="Button1_Click" />
                                 
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Quote End -->
    
   <!-- Testimonial Start -->
    <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
            <div class="text-center">
                <h6 class="text-secondary text-uppercase">Testimonial</h6>
                <h1 class="mb-0" style="color:#ff3e41;">Our Clients Say <i class="fa-solid fa-exclamation fa-beat" style="color: #1fd643;"></i></h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/clients%20images.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                           
                            <h5 class="mb-1">Manju Goswami</h5>
                            <p class="m-0"></p>
                        </div>
                    </div>
                    <p class="mb-0">Packers and movers in Jammu transportation service very very good professional Packers and movers packing quality number 1 providing time to time delivery.</p>
                </div>
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/clients%20images.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                            <h5 class="mb-1">Sunil Kumar</h5>
                            <p class="m-0"></p>
                        </div>
                    </div>
                    <p class="mb-0"><strong>Positive:</strong> Professionalism, Punctuality, Quality, Value. <br />
                    Best packers and movers in Jammu very good service time to time Delivery House Hold shifting <br />
                    <strong>Service:</strong> Online services.</p>
                </div>
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/clients%20images.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                            <h5 class="mb-1">Debasis Barman</h5>
                            <p class="m-0"></p>
                        </div>
                    </div>
                    <p class="mb-0">Timely pickup & delivery, no damages to consignment, timely communication, cost effective, will recommend for service<br />
                     <b>Service:</b> Online service</p>
                </div>
                <div class="testimonial-item p-4 my-5">
                    <i class="fa fa-quote-right fa-3x text-light position-absolute top-0 end-0 mt-n3 me-4"></i>
                    <div class="d-flex align-items-end mb-4">
                        <img class="img-fluid flex-shrink-0" src="img/clients%20images.jpg" style="width: 80px; height: 80px;">
                        <div class="ms-4">
                            <h5 class="mb-1">Sandeep Dinoda - Banti</h5>
                            <p class="m-0"></p>
                        </div>
                    </div>
                    <p class="mb-0">Good Service for Transportation, A-One Packing, Time to Time Delivery, Thankyou Global Best Packers Movers for my safe shifting....</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

    
    

    </a></asp:Content>

