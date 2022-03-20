<!DOCTYPE html>
<%@page import="com.b2bcs.beans.UserSessionBean"%>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>B2B Consulting  ||  Bytes 2 Bots - IT Consulting</title>

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


        <link rel="manifest" href="site.webmanifest">
		<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="assets2/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets2/css/price_rangs.css">
	<!-- <link rel="stylesheet" href="assets2/css/flaticon.css"> -->
	<link rel="stylesheet" href="assets2/css/slicknav.css">
	<link rel="stylesheet" href="assets2/css/animate.min.css">
	<link rel="stylesheet" href="assets2/css/magnific-popup.css">
	<link rel="stylesheet" href="assets2/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="assets2/css/themify-icons.css">
	<link rel="stylesheet" href="assets2/css/slick.css">
	<link rel="stylesheet" href="assets2/css/nice-select.css">
	<link rel="stylesheet" href="assets2/css/style1.css">

<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
</head>

<%
String username = "";
UserSessionBean uSessionBean = (UserSessionBean)request.getSession().getAttribute("LoginBean");
boolean isUsernameValid = false;
if (null != uSessionBean)
{
	username = uSessionBean.getUsername();
	if (null != username && !"".equals(username))
	{
		isUsernameValid = true;
	}
}


%>



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
                            <!--<li><i class="fas fa-map-marker-alt"></i> B1, Prashanthi Kuteera, Kadugodi, Bangalore</li>
                            -->
                            <%
						if (isUsernameValid)
						{
							out.println("<li><i class=\"fas fa-user\"></i>");
							out.println("Welcome to " + username);
							out.println("</li>");
						}
						%>
                        </ul>

                        <div class="top-right ml-auto" style="margin-right: 0px; color: #ffffff;">
                            <div class="social-style-one" style="margin-right: 0px; color: #ffffff;">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-skype"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                            </div>
                                <%
                                if (isUsernameValid)
                                {
                                	out.println("<a href=\"profile.jsp\" style=\"color: white; font-weight: 500;\">Profile</a>");
                                	out.println("<a href=\"logout.jsp\" style=\"color: white; font-weight: 500;\">Logout</a>");
                                }
                                else
                                {
                                	out.println("<a href=\"login.jsp\" style=\"color: white; font-weight: 500;\">Login</a>");
                                }
                                %>
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
                                        <li><a href="job-opportunity.jsp">Hot Jobs</a></li>
                                        <li class="current-menu-item"><a href="careers.jsp">Careers</a></li>
                                        <!-- <li class="dropdown current-menu-item"><a href="#">Pages</a>
                                            <ul>
                                                <li><a href="case-details.jsp">Case Details</a></li>
                                                <li><a href="404.jsp">404</a></li>
                                            </ul>
                                        </li>
                                         -->
                                        <li><a href="contact.jsp">Contact</a></li>
                                        <li><a href="register.jsp">Register</a></li>
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
                    <h2 style = "color : #ffffff;"class="wow fadeInUp" data-wow-duration="1.5s">Careers</h2>
                    <nav aria-label="breadcrumb" class="wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Careers @ B2B</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Page Banner Section
        =====================================================================-->


    <main>

        <!-- Hero Area End -->
        <!-- Job List Area Start -->
        <div class="job-listing-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <!-- Left content -->
                    <div class="col-xl-3 col-lg-3 col-md-4">
                        <div class="row">
                            <div class="col-12">
                                    <div class="small-section-tittle2 mb-45">
                                    <div class="ion"> <svg 
                                        xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink"
                                        width="20px" height="12px">
                                    <path fill-rule="evenodd"  fill="rgb(27, 207, 107)"
                                        d="M7.778,12.000 L12.222,12.000 L12.222,10.000 L7.778,10.000 L7.778,12.000 ZM-0.000,-0.000 L-0.000,2.000 L20.000,2.000 L20.000,-0.000 L-0.000,-0.000 ZM3.333,7.000 L16.667,7.000 L16.667,5.000 L3.333,5.000 L3.333,7.000 Z"/>
                                    </svg>
                                    </div>
                                    <h4>Filter Jobs</h4>
                                </div>
                            </div>
                        </div>
                        <!-- Job Category Listing start -->
                        <div class="job-category-listing mb-50">
                            <!-- single one -->
                            <div class="single-listing">
                               <div class="small-section-tittle2">
                                     <h4>Job Category</h4>
                               </div>
                                <!-- Select job items start -->
                                <div class="select-job-items2">
                                    <select name="select">
                                        <option value="">All Category</option>
                                        <option value="">Category 1</option>
                                        <option value="">Category 2</option>
                                        <option value="">Category 3</option>
                                        <option value="">Category 4</option>
                                    </select>
                                </div>
                                <!--  Select job items End-->
                                <!-- select-Categories start -->
                                <div class="select-Categories pt-80 pb-50">
                                    <div class="small-section-tittle2">
                                        <h4>Job Type</h4>
                                    </div>
                                    <label class="container">All
                                        <input type="checkbox" >
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Full Time
                                        <input type="checkbox" >
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Part Time
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Remote
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Freelance
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <!-- select-Categories End -->
                            </div>
                            <!-- single two -->
                            <div class="single-listing">
                               <div class="small-section-tittle2">
                                     <h4>Job Location</h4>
                               </div>
                                <!-- Select job items start -->
                                <div class="select-job-items2">
                                    <select name="select">
                                        <option value="">Anywhere</option>
                                        <option value="">Category 1</option>
                                        <option value="">Category 2</option>
                                        <option value="">Category 3</option>
                                        <option value="">Category 4</option>
                                    </select>
                                </div>
                                <!--  Select job items End-->
                                <!-- select-Categories start -->
                                <div class="select-Categories pt-80 pb-50">
                                    <div class="small-section-tittle2">
                                        <h4>Experience</h4>
                                    </div>
                                    <label class="container">1-2 Years
                                        <input type="checkbox" >
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">2-3 Years
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">3-6 Years
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">6-more..
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <!-- select-Categories End -->
                            </div>
                            <!-- single three -->
                            <div class="single-listing">
                                <!-- select-Categories start -->
                                <div class="select-Categories pb-50">
                                    <div class="small-section-tittle2">
                                        <h4>Posted Within</h4>
                                    </div>
                                    <label class="container">Any
                                        <input type="checkbox" >
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Today
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Last 2 days
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Last 3 days
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Last 5 days
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Last 10 days
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <!-- select-Categories End -->
                            </div>
                        </div>
                        <!-- Job Category Listing End -->
                    </div>
                    <!-- Right content -->
                    <div class="col-xl-9 col-lg-9 col-md-8">
                        <!-- Featured_job_start -->
                        <section class="featured-job-area">
                            <div class="container">
                                <!-- Count of Job list Start -->
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="count-job mb-35">
                                            <span>39, 782 Jobs found</span>
                                            <!-- Select job items start -->
                                            <div class="select-job-items">
                                                <span>Sort by</span>
                                                <select name="select">
                                                    <option value="">None</option>
                                                    <option value="">job list</option>
                                                    <option value="">job list</option>
                                                    <option value="">job list</option>
                                                </select>
                                            </div>
                                            <!--  Select job items End-->
                                        </div>
                                    </div>
                                </div>
                                <!-- Count of Job list End -->
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets2/img/icon/job-list1.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4>Digital Marketer</h4>
                                            </a>
                                            <ul>
                                                <li>Creative Agency</li>
                                                <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                                <li>$3500 - $4000</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <a href="job_details.jsp">Full Time</a>
                                        <span>7 hours ago</span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets2/img/icon/job-list2.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4>Digital Marketer</h4>
                                            </a>
                                            <ul>
                                                <li>Wipro</li>
                                                <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                                <li>$3500 - $4000</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <a href="job_details.jsp">Full Time</a>
                                        <span>7 hours ago</span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets2/img/icon/job-list3.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4>Digital Marketer</h4>
                                            </a>
                                            <ul>
                                                <li>Creative Agency</li>
                                                <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                                <li>$3500 - $4000</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <a href="job_details.jsp">Full Time</a>
                                        <span>7 hours ago</span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets2/img/icon/job-list4.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4>Digital Marketer</h4>
                                            </a>
                                            <ul>
                                                <li>Creative Agency</li>
                                                <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                                <li>$3500 - $4000</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <a href="job_details.jsp">Full Time</a>
                                        <span>7 hours ago</span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets2/img/icon/job-list1.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4>Digital Marketer</h4>
                                            </a>
                                            <ul>
                                                <li>Creative Agency</li>
                                                <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                                <li>$3500 - $4000</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <a href="job_details.jsp">Full Time</a>
                                        <span>7 hours ago</span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets2/img/icon/job-list3.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4>Digital Marketer</h4>
                                            </a>
                                            <ul>
                                                <li>Creative Agency</li>
                                                <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                                <li>$3500 - $4000</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <a href="job_details.jsp">Full Time</a>
                                        <span>7 hours ago</span>
                                    </div>
                                </div>
                                <!-- single-job-content -->
                                <div class="single-job-items mb-30">
                                    <div class="job-items">
                                        <div class="company-img">
                                            <a href="#"><img src="assets2/img/icon/job-list4.png" alt=""></a>
                                        </div>
                                        <div class="job-tittle job-tittle2">
                                            <a href="#">
                                                <h4>Digital Marketer</h4>
                                            </a>
                                            <ul>
                                                <li>Creative Agency</li>
                                                <li><i class="fas fa-map-marker-alt"></i>Athens, Greece</li>
                                                <li>$3500 - $4000</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="items-link items-link2 f-right">
                                        <a href="job_details.jsp">Full Time</a>
                                        <span>7 hours ago</span>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Featured_job_end -->
                    </div>
                </div>
            </div>
        </div>
        <!-- Job List Area End -->
        <!--Pagination Start  -->
        <div class="pagination-area pb-115 text-center">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="single-wrap d-flex justify-content-center">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-start">
                                    <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                    <li class="page-item"><a class="page-link" href="#">02</a></li>
                                    <li class="page-item"><a class="page-link" href="#">03</a></li>
                                <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Pagination End  -->
        
    </main>




   
       
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
                                    <p>B1, Prashanthi Kuteera, Kadugodi, Bangalore 560067</p>
                                </li>
                                <li>
                                    <h5>Email:</h5>
                                    <p>hr@bytes2bots.com</p>
                                    
                                </li>
                                <li>
                                    <h5>Call Now:</h5>
                                    <!-- <p><a href="callto:+91 9739676789">+91 9739676789</a></p>
                                    -->
                                    <p><a href="callto:+91 8884966873">+91 8884966873</a></p>
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
                                        <h5><a href="#">Openings on Python</a></h5>
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
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-6">
                        <div class="widget subscribe-widget">
                            <h3 class="widget-title">Subscribe</h3>
                            <form action="#" method="post" name="subscribe-form" class="subscribe-form">
                               <p>Subscribe to receive email notifications about hot job openings and support from us!!!</p>
                                <div class="form-group">
                                    <input type="email" name="email-address" value="" class="form-control" placeholder="Email" required="">
                                    <button type="submit" class="subscribe-submit"><i class="fa fa-envelope"></i></button>
                                </div>
                            </form>
                            <div class="social-style-two mt-20">
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-skype"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                
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


<!--  Portal -->


		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets2/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->

        <script src="./assets2/js/popper.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets2/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Range -->
        <script src="./assets2/js/owl.carousel.min.js"></script>
        <script src="./assets2/js/slick.min.js"></script>
        <script src="./assets2/js/price_rangs.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets2/js/wow.min.js"></script>
		<script src="./assets2/js/animated.headline.js"></script>
        <script src="./assets2/js/jquery.magnific-popup.js"></script>

		<!-- Scrollup, nice-select, sticky -->
        <script src="./assets2/js/jquery.scrollUp.min.js"></script>
        <script src="./assets2/js/jquery.nice-select.min.js"></script>
		<script src="./assets2/js/jquery.sticky.js"></script>
        
        <!-- contact js -->
        <script src="./assets2/js/contact.js"></script>
        <script src="./assets2/js/jquery.form.js"></script>
        <script src="./assets2/js/jquery.validate.min.js"></script>
        <script src="./assets2/js/mail-script.js"></script>
        <script src="./assets2/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets2/js/plugins.js"></script>
        <script src="./assets2/js/main.js"></script>
        


</body>
</html>