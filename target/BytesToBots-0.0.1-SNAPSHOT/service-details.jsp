<!DOCTYPE html>
<%@page import="com.b2bcs.beans.UserSessionBean"%>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>Service Details || Conset - Business Consulting HTML5 Template</title>

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
                                               <!--    <li><a href="about.jsp#team">Our Team Members</a></li>-->

                                            </ul>
                                        </li> 
                                        <li class="dropdown current-menu-item" >
                                        	<a href="service-details.jsp">Services</a>
                                            	<ul>
                                            		<li><a href="service-details.jsp">Services</a></li>
                                                	<li><a href="service-details.jsp#glo">Global Solutions</a></li>
                                                	<li><a href="service-details.jsp#itcon">IT Consulting</a></li>
                                                	<li><a href="service-details.jsp#rec">Recruiting Services</a></li>
                                            	</ul>
                                        </li>
                                        <!-- <li><a href="job-opportunity.jsp">Hot Jobs</a></li> -->
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
                    <h2 class="wow fadeInUp" data-wow-duration="1.5s">Services</h2>
                    <nav aria-label="breadcrumb" class="wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="0.3s">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Services</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Page Banner Section
        =====================================================================-->


        <!--==================================================================== 
            Start Service Details Section
        =====================================================================-->
        <section id="glo" class="service-details pt-140 pb-150 rpt-90 rpb-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="service-details-content">
                            <div class="section-title">
                                <h3>Global <span>Solutions</span></h3>
                            </div>
                            <p>B2B understands the need of update of technology in today's business world and is dedicated to deliver the best solutions in terms of technological expertise and IT projects.</p>
                            <div class="details-image">
                                <img src="assets/images/services/global.jpg" alt="Service Details Image">
                            </div>
                            <div class="section-title">
                                <h3>IT <span>Consulting</span></h3>
                            </div>
                            <p>Being at business speed in today's fast-paced hybrid cloud world involves overcoming IT complexity to match the speed of actions to the speed of chances. Design your digital transformation with experienced IT consulting from Bytes to Bots consultancy Services to deploy the correct technology to adapt swiftly to market opportunities.</p>
                            <p>Use the expertise and deep tech background of the best minds at B2B to create a comprehensive IT strategy for a digital and technological transformation of your organization that goes in line with your business objectives. Our strategic IT consulting will help you automate and digitalise operations, optimise the software portfolio, and implement the latest technologies.</p>
                            <div class="details-image">
                                <img src="assets/images/services/It-consulting1.jpg" alt="Service Details Image">
                            </div>
                            <p id="rec">We consistently keep track of emerging technologies to deliver advanced software solutions. Our IT strategy consulting will help you choose the right technologies for your business and industry, map out the implementation strategy, as well as help you implement them.</p>
                            <div  class="section-title">
                                <h3>Recruiting <span>Services</span></h3>
                            </div>
                            <p>According to Indian market survey information, the Indian Manpower Recruitment Services industry has been growing at around 10% in the last couple of years. Currently, recruitment process outsourcing market is worth over 30,000 crores. Some of the most important reasons for the growth of recruitment services are an increase in a number of organisations and businesses need for quality human talent and companies willing to pay a little extra to recruitment companies to identify suitable human resources.</p>
                            <p>For the IT industry, we have a well-established testing process that includes tough online tests. These candidates are then interviewed by seasoned experts on communication, technical and productivity capabilities. We have again built up a large database of potential candidates that we can bring on board for you quickly. Our IT recruitment services speak for itself.</p>
                            <div class="details-image">
                                <img src="assets/images/services/recruiting-services.jpg" alt="Service Details Image">
                            </div>
                            <!--<h3>Helping Business Owners.</h3>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in som form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All th Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary. It uses a dictionary of over 200 Latin words, combined with a handful of model sentenc structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always fre from repetition, injected humour, or non-characteristic words etc.</p>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in som form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All th Lorem Ipsum generators on the Internet tend to repea.</p>
                            <h3>Business Iformation & Advice.</h3>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in som form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All th Lorem Ipsum generators on the Internet tend to repeat.</p>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in som form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All th Lorem Ipsum generators on the Internet tend to repeat.</p>
                            <h3>Contract Review & Development.</h3>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in som form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All th Lorem Ipsum generators on the Internet tend to repeat.</p>
                            -->
                            <!--
                            <div class="prev-next-area">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <a class="prev-next-btn prev-btn wow fadeInUp" data-wow-duration="2s" href="service-details.jsp"><span>Previous.</span></a>
                                    </div>
                                    <div class="col-sm-6">
                                        <a class="prev-next-btn next-btn wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s" href="service-details.jsp"><span>Next.</span></a>
                                    </div>
                                </div>
                            </div>
                             -->
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="service-sidebar">
                            <div class="sidebar-widget service-widget">
                                <h3>Our Services</h3>
                                <ul>
                                    <li><a href="service-details.jsp#glo">Global Solutions</a></li>
                                    <li><a href="service-details.jsp#itcon">IT Consulting</a></li>
                                    <li><a href="service-details.jsp#rec">Recruiting Services</a></li>
                                    <!-- <li><a href="service-details.jsp">Planning & Management</a></li> -->
                                </ul>
                            </div>
                            <div  class="sidebar-widget contact-widget text-center bg-snow">
                                <p >WE ARE READY.</p>
                                <h3 id="itcon">How Can We Help You?</h3>
                                <a  href="contact.jsp" class="theme-btn">Contact Now <i class="fas fa-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--==================================================================== 
            End Service Details Section
        =====================================================================-->
   
       
        <!--==================================================================== 
            Start Call To Action Section
        =====================================================================-->
        <section class="cta-section bg-snow pt-130 rpt-80 pb-135 rpb-100">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <div class="cta-text wow fadeInUp rmb-25" data-wow-duration="2s">
                            <h3>You want to work with the best <span> consulting firm in the industry?</span></h3>
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
            Start Testimonial Section
        =====================================================================-->
        <!-- <section class="testimonial-section pt-135 rpt-85 pb-150 rpb-100">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-6 col-md-8 col-sm-9">
                        <div class="section-title text-center mb-80 wow fadeInUp" data-wow-duration="2s">
                            <h2>What Clients Say <span>About Us!</span></h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor labore et dolore magna aliqua. Ut enim ad minim veniam</p>
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
                                <p>After taking the Successfully Speaking Sessions with Lynda I could see a big in my speech patterns. I’m now able to catch myself when I am speaking and when my subjects and verbs don’t agree.</p>
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
                                <p>If you are going to use a passage of you need to be sure there isn't anything embarrassing hidden in the middle of text. All the on the internet tend to repeat predefined chunks as necessary, making this the first.</p>
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
                                <p>It’s never too late to learn! I’ve learned new skills to help me to be heard when speaking with men, and I sharpened my speaking skills overall. Thanks again for all of your lessons, suggestions, and materials.</p>
                                <div class="reviewer">
                                    <h3>Charles Fuston</h3>
                                    <span>Business Consulting</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->
       <!-- ==================================================================== 
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
