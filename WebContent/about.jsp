<!DOCTYPE html>
<%@page import="com.b2bcs.beans.UserSessionBean"%>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>About Us || Conset - Business Consulting HTML5 Template</title>

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
                            <!--<li><i class="fas fa-map-marker-alt"></i> Squaw Valley, California(CA).</li>-->
                            <%
						if (isUsernameValid)
						{
							out.println("<li><i class=\"fas fa-user\"></i>");
							out.println("Welcome to " + username);
							out.println("</li>");
						}
						%>
                        </ul>
						<div> 

						</div>
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
                                        <!--<li class="current-menu-item"><a href="about.jsp">About</a></li>
                                        -->
                                        <li class="dropdown current-menu-item"><a href="about.jsp">About</a>
                                            <ul>
                                            	<li><a href="about.jsp">About Us</a></li>
                                                <li><a href="about.jsp#overview">Overview</a></li>
                                                <li><a href="about.jsp#vission">Our Vision</a></li>
                                                <li><a href="about.jsp#mission">Our Mission</a></li>
                                                <!-- <li><a href="about.jsp#team">Our Team Members</a></li> -->
                                            </ul>
                                        </li> 
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
                                        <li><a href="http://careers.bytes2bots.com/">Careers</a></li>
                                        <!--<li class="dropdown"><a href="#">Pages</a>
                                            <ul>
                                                <li><a href="case-details.jsp">Case Details</a></li>
                                                <li><a href="404.jsp">404</a></li>
                                            </ul>
                                        </li>-->
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
                    <h2 class="wow fadeInUp" data-wow-duration="1.5s">About Us</h2>
                    <!--<p style = "color:#ffffff;">We are a digital transformation consultancy that delivers cutting edge solutions for global organisations and technology startups. Since long we have been helping companies and established brands reimagine their business through digitalisation.
                    </p>-->
                    <nav aria-label="breadcrumb" class="wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">About</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Page Banner Section
        =====================================================================-->
<!--==================================================================== 
        

        <!--==================================================================== 
            Start Vission Mission Section
        =====================================================================-->
       <section id="overview" class="vission-mission py-50 rpy-50">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <ul class="vission-tabs">
                            <li class="wow fadeInUp" data-tab="tab_1" data-wow-duration="1.5s" id="vission"><h3>Overview</h3></li>
                            <li class="wow fadeInUp" data-tab="tab_2" data-wow-duration="1.5s" data-wow-delay="0.3s" id="mission"><h3>Our Vision</h3></li>
                            <li class="wow fadeInUp" data-tab="tab_3" data-wow-duration="1.5s" data-wow-delay="0.5s"><h3>Our Mission</h3></li>
                        </ul>
                    </div>
                    <div class="col-lg-6">
                        <div class="vission-content-wrap">
                            <div id="tab_1" class="vission-tab-content active">
                                <div class="section-title">
                                    <h2>The best consulting services you can <span> count on!</span></h2>
                                </div>
                                <p> Success mantra of any organization is the combination of technology and right skilled people. In any sort of sector, there will be a constant need of advancement in the technology.</p>
                                <p>With the advancement in the technology, there will be risk of rise in the huge gap of the skilled people in the industries to meet the present needs and demands. Outsourcing the right person with right capabilities to the client has become a today’s challenge. This is the everlasting ultimatum that every organization is facing. </p>
                                <p>We are a digital transformation consultancy and engineering company that delivers cutting edge solutions for global organisations and technology startups. Since we have been helping companies and established brands reimagine their business through digitalisation.</p>
                                <div class="success-item bg-snow">
                                    <div class="icon-image">
                                        <img src="assets/images/services/icon2.png" alt="Success Icon Image">
                                    </div>
                                    <div class="success-content">
                                        <span class="count-text" data-speed="2500" data-stop="10">0</span>
                                        <h5>Complete Projects.</h5>
                                    </div>
                                </div>
                            </div>
                            <div id="tab_2" class="vission-tab-content">
                                <div class="section-title">
                                 <h2>Acquire the invaluable insight of ours into the working<span> of Yours!! </span></h2>
                                </div>
                                <p>Our vision is to develop a candid customer oriented consulting organization, understanding and addressing the needs and requirements of the clients through in-depth industry and process knowledge, technical expertise and aid in accelerating the achievement of their business vision.</p>
                                <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>-->
                                <div class="success-item bg-snow">
                                    <div class="icon-image">
                                        <img src="assets/images/services/icon6.png" alt="Success Icon Image">
                                    </div>
                                    <div class="success-content">
                                        <span class="count-text" data-speed="2500" data-stop="20">0</span>
                                        <h5>Winning Awards.</h5>                                    </div>
                                </div>
                            </div>
                            <div id="tab_3" class="vission-tab-content">
                                <div class="section-title">
                                    <h2>Undertaking the needs of your business as <span>Our Mission</span> </h2>
                                </div>
                                <p>Our mission is to help enterprises accelerate adoption of new technologies, untangle complex issues that always emerge during digital evolution, and orchestrate ongoing innovation. Whether it is a consumer-oriented app or a transformative enterprise-class solution, the company leads the process from ideation and concept to delivery, and provides ongoing support.</p>
                                <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>-->
                                <div class="success-item bg-snow">
                                    <div class="icon-image">
                                        <img src="assets/images/about/icon.png" alt="Success Icon Image">
                                    </div>
                                    <div class="success-content">
                                        <span class="count-text" data-speed="2500" data-stop="50">0</span>
                                        <h5>Happy Customers.</h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Vission Mission Section
        =====================================================================-->
   
       
        <!--==================================================================== 
            Start Call Back Section
        =====================================================================-->
        <section class="call-back-section text-white py-50 rpt-45 rpb-50">
            <div class="call-back-shap"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="section-title wow fadeInUp"  data-wow-duration="2s">
                            <h2>Connect with our experts on your needs..

</h2>
                            <!--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do labore et dolore magna aliqua enim ad minim veniam.</p>-->
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <form id="call-back-form" class="call-back-form" name="call-back-form" action="call-action.jsp" method="post">
                            <div class="row clearfix">
                                <div class="col-md-6">        
                                    <div class="form-group">
                                        <input type="text" name="full-name" class="form-control" value="" placeholder="Full Name" required="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="email" name="email-address" class="form-control" value="" placeholder="Email Here" required="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="phone-number" class="form-control" value="" placeholder="Phone No.">
                                    </div>
                                </div>
                                <div class="col-md-6">        
                                    <div class="form-group">
                                        <input type="text" name="subject" class="form-control" value="" placeholder="Subject" required>
                                    </div>
                                </div>
                                <div class="col-md-12 mb-10">        
                                    <div class="form-group">
                                        <input type="text" name="shorttext" class="form-control" value="" placeholder="Short Text">
                                    </div>
                                </div>                                               
                            </div>
                            <div class="form-group call-submit text-center">
                                <button class="theme-btn" type="submit">Submit Now <i class="fas fa-arrow-right"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Call Back Section
        =====================================================================-->

       
        <!--==================================================================== 
            Start Team Section
        =====================================================================-->
        <section class="team-section pt-135 rpt-90 pb-90 rpb-40">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-md-8">
                        <div class="section-title text-center mb-80 wow fadeInUp"  data-wow-duration="2s">
                            <h2>Meet the Team </h2>
                            <p>B2B leadership team brings decades of industry experience, a global perspective and a passion for achieving results.
</p>
                        </div>
                    </div>
                </div>
            </div>
                
            <div class="team-wrap">
                <div class="team-item wow fadeInUp" data-wow-duration="2s">
                    <div class="item-image">
                        <img src="assets/images/team/team1.jpg" alt="Team Image">
                        <div class="social-style-two">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <!--<a href="#"><i class="fab fa-pinterest-p"></i></a>-->
                        </div>
                    </div>
                    <div class="team-desc">
                        <h3>M Sreelekha</h3>
                        <p>COO</p>
                    </div>
                </div>
                <div class="team-item wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
                    <div class="item-image">
                        <img src="assets/images/team/team2.jpg" alt="Team Image">
                        <div class="social-style-two">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <!--<a href="#"><i class="fab fa-pinterest-p"></i></a>-->
                        </div>
                    </div>
                    <div class="team-desc">
                        <h3>M Srilakshmi</h3>
                        <p>CTO</p>
                    </div>
                </div>
                <div class="team-item wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.5s">
                    <!-- <div class="item-image">
                        <img src="assets/images/team/team3.jpg" alt="Team Image">
                        <div class="social-style-two">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-pinterest-p"></i></a>
                        </div>
                    </div>
                    <div class="team-desc">
                        <h3>Winfred Locklear</h3>
                        <p>Consulting Lawyer</p>
                    </div>
                     -->
                </div>
                <!-- 
                <div class="team-item wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.7s">
                    <div class="item-image">
                        <img src="assets/images/team/team4.jpg" alt="Team Image">
                        <div class="social-style-two">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-pinterest-p"></i></a>
                        </div>
                    </div>
                    <div class="team-desc">
                        <h3>Kayleen Colbert</h3>
                        <p>Investment Advisor</p>
                    </div>
                </div>
                <div class="team-item wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.9s">
                    <div class="item-image">
                        <img src="assets/images/team/team5.jpg" alt="Team Image">
                        <div class="social-style-two">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-skype"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-pinterest-p"></i></a>
                        </div>
                    </div>
                    <div class="team-desc">
                        <h3>Alexia Galvez</h3>
                        <p>Trainee Consultant</p>
                    </div>
                </div>
                -->
            </div>
        </section>
        <!--==================================================================== 
            End Team Section
        =====================================================================-->
          
      
        <!--==================================================================== 
            Start Call To Action Section
        =====================================================================-->
        <section class="cta-section bg-snow pt-130 rpt-80 pb-135 rpb-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <div class="cta-text wow fadeInUp rmb-25" data-wow-duration="2s">
                            <h3>Are you having trouble finding <span> your ideal job?</span></h3>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="cta-btn wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
                            <a href="contact.jsp" class="theme-btn">Send us your CV<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Call To Action Section
        =====================================================================-->
   
        
        <!--==================================================================== 
            Start Testimonial Section
        =====================================================================-->
        <!--  <section class="testimonial-section pt-135 rpt-85 pb-150 rpb-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-md-8 col-sm-9">
                        <div class="section-title text-center mb-80 wow fadeInUp" data-wow-duration="2s">
                            <h2>What Clients Say <span>About Us!</span></h2>
                            
                        </div>
                    </div>
                </div>
                <div class="testimonial-area">
                    <div class="review-buttons">
                        <figure>
                            <a href="#" data-review="1" class="review-btn">
                                <img src="assets/images/testimonials/testi-small1.jpg" alt="Reviewed by">
                            </a>
                        </figure>
                        <figure class="active-btn">
                            <a href="#" data-review="2" class="review-btn active">
                                <img src="assets/images/testimonials/testi-small2.jpg" alt="Reviewed by">
                            </a>
                        </figure>
                        <figure>
                            <a href="#" data-review="3" class="review-btn">
                                <img src="assets/images/testimonials/testi-small3.jpg" alt="Reviewed by">
                            </a>
                        </figure>
                    </div>
                    <div class="testimony-content">
                        <div class="review-single">
                            <div class="textimonial-image">
                                <img src="assets/images/testimonials/testi-big1.jpg" alt="Reviewed By">
                            </div>
                            <div class="textimonial-content">
                                <p>"The B2B team are ultimate rock stars! They are a highly professional, educated and experienced team that is dedicated to helping their clients achieve success. One of the best teams I have ever worked with – highly responsive, innovative and leverage best practices. Looking forward for many more!!"</p>
                                <div class="reviewer">
                                    <h3>Daniel Roberts</h3>
                                    <span>Mortgage Advisor</span>
                                </div>
                            </div>
                        </div>
                        <div class="review-single active">
                            <div class="textimonial-image">
                                <img src="assets/images/testimonials/testi-big2.jpg" alt="Reviewed By">
                            </div>
                            <div class="textimonial-content">
                                <p>Thanks to B2B team for their help. B2B team is professional, well prepared, punctual and a pleasure to work with!.</p>
                                <div class="reviewer">
                                    <h3>Kayleen Colbert</h3>
                                    <span>Investment Advisor</span>
                                </div>
                            </div>
                        </div>
                        <div class="review-single">
                            <div class="textimonial-image">
                                <img src="assets/images/testimonials/testi-big3.jpg" alt="Reviewed By">
                            </div>
                            <div class="textimonial-content">
                                <p>You guys are amazing! Thank you very much for your help! This is great.</p>
                                <div class="reviewer">
                                    <h3>Charles Fuston</h3>
                                    <span>Business Consulting</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
         -->
        <!--==================================================================== 
            End Testimonials Section
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
                            <li><a href="http://careers.bytes2bots.com/">Careers</a></li>
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
