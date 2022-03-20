<!DOCTYPE html>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="com.b2bcs.beans.UserBean"%>
<%@page import="com.b2bcs.database.daos.UserDAO"%>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>Bytes To Bots Consultancy Services</title>

    <!-- Fav Icons -->
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,400;1,500&display=swap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.9.0/css/all.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/menu.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/leaflet.css">
    <link rel="stylesheet" href="assets/css/spacing.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="assets/css/responsive.css">

<script type="text/javascript">
$(document).ready(function(){
	  $('[data-toggle="tooltip"]').tooltip();   
	});
	
</script>

    <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
</head>

<body>
    <div class="page-wrapper">

        <!-- Preloader -->
        <div class="preloader"></div>
        
        <!--==================================================================== 
                                Start Header area
        =====================================================================-->
        <header class="main-header">

            <div class="header-top bg-orange">
                <div class="container">
                    <div class="top-inner">
                        <ul class="top-left">
                            <li><i class="fa fa-envelope"></i> <a href="mailto:hr@bytes2bots.com">hr@bytes2bots.com</a></li>
                            <!--<li><i class="fas fa-map-marker-alt"></i> Squaw Valley, California(CA).</li>-->
                        </ul>

                        <div class="top-right ml-auto">
                            <div class="social-style-one">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-skype"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="login.jsp" style="color: white; font-weight: 500;">Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!--Header-Upper-->
            <div class="header-upper">
                <div class="container clearfix">

                    <div class="header-inner d-lg-flex align-items-center">

                        <div class="logo-outer d-flex align-items-center">
                            <div class="logo"><a href="index.jsp"><img src="assets/images/logo.png" alt="" title=""></a></div>
                        </div>

                        <div class="nav-outer clearfix ml-lg-auto mr-lg-auto">
                            <!-- Main Menu -->
                            <nav class="main-menu navbar-expand-lg">
                                <div class="navbar-header clearfix">
                                    <!-- Toggle Button -->
                                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <div class="navbar-collapse collapse clearfix">
                                    <ul class="navigation clearfix">
                                        <li><a href="index.jsp">Home</a></li>
                                         <li class="dropdown"><a href="about.jsp">About</a>
                                            <ul>
                                            	<li><a href="about.jsp">About Us</a></li>
                                                <li><a href="about.jsp#overview">Overview</a></li>
                                                <li><a href="about.jsp#vission">Our Vision</a></li>
                                                <li><a href="about.jsp#mission">Our Mission</a></li>
                                              <!--   <li><a href="about.jsp#team">Our Team Members</a></li> -->

                                            </ul>
                                        <li class="dropdown">
                                        	<a href="service-details.jsp">Services</a>
                                            	<ul>
                                            		<li><a href="service-details.jsp">Services</a></li>
                                                	<li><a href="service-details.jsp#glo">Global Solutions</a></li>
                                                	<li><a href="service-details.jsp#itcon">IT Consulting</a></li>
                                                	<li><a href="service-details.jsp#rec">Recruiting Services</a></li>
                                            	</ul>
                                        </li>
                                        <!-- <li><a href="job-opportunity.jsp">Hot Jobs</a></li> -->
                                        <li><a href="careers.jsp">Careers</a></li>
                                        <!-- 
                                        <li class="dropdown"><a href="#">Pages</a>
                                            <ul>
                                                <li><a href="case-details.jsp">Case Details</a></li>
                                                <li><a href="404.jsp">404</a></li>
                                            </ul> 
                                        </li> 
                                        -->
                                        <li><a href="contact.jsp">Contact</a></li>
                                        <li class="current-menu-item"><a href="register.jsp">Register</a></li>
                                    </ul>
                                </div>
                            </nav>
                            <!-- Main Menu End-->
                        </div>

                        <div class="menu-number">
                            <i class="flaticon-headphone"></i> <a href="callto:+91-8884966873">+91-8884966873</a>
                        </div>
                    </div>

                </div>
            </div>
            <!--End Header Upper-->

        </header>
        <!--==================================================================== 
                                End Header area
        =====================================================================-->


        <!--==================================================================== 
            Start Page Banner Section
        =====================================================================-->
        <section class="page-banner overlay">
            <div class="container">
                <div class="banner-inner">
                    <h2 class="wow fadeInUp" data-wow-duration="1.5s">Register</h2>
                    <nav aria-label="breadcrumb" class="wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Register</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Page Banner Section
        =====================================================================-->


        <!--==================================================================== 
            Start Get In Touch Section
        =====================================================================-->
        <section class="get-in-touch py-150 rpy-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="section-title">
                            <h2>Register <span>Now.</span></h2>
                        </div>
                        <p>Register with us for better opportunities.</p>
                        <%
                        
                        %>
                        
                        
                        
                    </div>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Get In Touch Section
        =====================================================================-->

      
        <!--==================================================================== 
            Start Map Section
        =====================================================================-->
        <!-- <div class="contact-map pb-150 rpb-100">
            <div class="container">
                <div class="map-inner">
                    <div class="map" id="map"></div>
                </div>
            </div>
        </div>
         -->
        <!--==================================================================== 
            End Map Section
        =====================================================================-->

      
        <!--==================================================================== 
            Start Call To Action Section
        =====================================================================-->
        <section class="cta-section bg-orange pt-130 rpt-80 pb-135 rpb-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <div class="cta-text wow fadeInUp rmb-25" data-wow-duration="2s">
                            <h3>Are you looking for a high-ranking position in your career?</h3>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cta-btn wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
                            <a href="contact.jsp" class="theme-btn">Contact Now <i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Call To Action Section
        =====================================================================-->
   
       
        <!--==================================================================== 
                                Start Footer Section
        =====================================================================-->
        <footer class="footer-section bg-black pt-150 rpt-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-6">
                        <div class="widget contact-info-widget">
                            <h3 class="widget-title">Get In Touch</h3>
                            <ul>
                                <li>
                                    <h5>Address:</h5>
                                    <p>B1, Prashanthi Kuteera, Kadugodi, Whitefield, Bangalore 560067</p>
                                </li>
                                <li>
                                    <h5>Email:</h5>
                                    <p>hr@bytes2bots.com</p>
                                    
                                </li>
                                <li>
                                    <h5>Call Now:</h5>
                                    <p><a href="callto:+91-8884966873">+91-8884966873</a></p>
                                    <!--<p><a href="callto:+8696732986346">+8 6967 329 863 46</a></p>-->
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="widget recent-post-widget">
                            <h3 class="widget-title">Recent Post</h3>
                            <ul>
                                <li>
                                    <div class="post-item">
                                        <h5><a href="#">Openings on Java</a></h5>
                                        <p>01 October, 2021</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="post-item">
                                        <h5><a href="#">Openings on Java</a></h5>
                                        <p>01 October, 2021</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="widget menu-widget">
                            <h3 class="widget-title">Our Services</h3>
                            <ul>
                                    <li><a href="service-details.jsp#glo">Global Solutions</a></li>
                                    <li><a href="service-details.jsp#itcon">IT Consulting</a></li>
                                    <li><a href="service-details.jsp#rec">Recruiting Services</a></li>
                                <!--<li><a href="service-details.jsp">Mortgage Advisor</a></li>-->
                                <!--<li><a href="service-details.jsp">Financial Consulting</a></li>-->
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="widget subscribe-widget">
                            <h3 class="widget-title">Subscribe</h3>
                            <form action="#" method="post" name="subscribe-form" class="subscribe-form">
                               <p>Subscribe to get email notification regarding the job openings</p>
                                <div class="form-group">
                                    <input type="email" name="email-address" value="" class="form-control" placeholder="Email" required="">
                                    <button type="submit" class="subscribe-submit"><i class="fa fa-envelope"></i></button>
                                </div>
                            </form>
                            <div class="social-style-two mt-20">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-skype"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <!--<a href="#"><i class="fab fa-pinterest-p"></i></a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Copyright Area-->
            <div class="copyright-area mt-95 rmt-45">
               <div class="container">
                    <div class="copyright-inner align-items-center">
                        <div class="copyright-wrap order-2 order-md-1">
                            <p>Copyright © <span>2021</span> | All Rights Reserved.</p>
                            <!-- Scroll Top Button -->
                            <button class="scroll-top scroll-to-target wow fadeInUp" data-wow-duration="2s" data-target="html"><i class="fas fa-angle-double-up"></i></button>
                            <!-- footer menu -->
                        </div>
                        <ul class="footer-menu order-1 order-md-2">
                            <li><a href="careers.jsp">Careers</a></li>
                            <li><a href="contact.jsp">Support</a></li>
                            <!--<li><a href="#">FAQ</a></li>-->
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!--==================================================================== 
                                End Footer Section
        =====================================================================-->
    </div>
    <!--End pagewrapper-->
    
    <!-- jequery plugins -->
    <script src="assets/js/jquery-3.5.1.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/leaflet.min.js"></script>
    <script src="assets/js/appear.js"></script>

    <!-- Custom script -->
    <script src="assets/js/script.js"></script>
</body>

</html>