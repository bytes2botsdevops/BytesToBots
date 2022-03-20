<!DOCTYPE html>
<%@page import="com.b2bcs.beans.UserSessionBean"%>
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
<title>Bytes To Bots Consultancy Services</title>

<!-- Fav Icons -->
<link rel="shortcut icon" href="assets/images/favicon.png"
	type="image/x-icon">

<!-- Stylesheets -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;1,400;1,500&display=swap">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.9.0/css/all.css">
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

<script>
function loadDoc() {
	<!--
  var name = document.callform.fullname.value;
  var emailaddress = document.callform.emailaddress.value;
  var phonenumber = document.callform.phonenumber.value;
  var subject = document.callform.subject.value;
  var shorttext = document.callform.shorttext.value;
  -->
  var name = document.getElementById('fullname').value;
  var emailaddress = document.getElementById('emailaddress').value;
  var phonenumber = document.getElementById('phonenumber').value;
  var subject = document.getElementById('subject').value;
  var shorttext = document.getElementById('shorttext').value;
  alert('firstname' + name + 'emailaddress' + emailaddress);
  
  var url = "call-action.jsp?full-name="+name + "&email-address=" + emailaddress + "&phonenumber=" + phonenumber + "&subject=" + subject + "&shorttext=" + shorttext;
  //var url= "action.jsp";
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      document.getElementById("demo").innerHTML = this.responseText;
    }
  };
  xhttp.open("POST", url, true);
  //var data = "name=" + name + "&full-name="+name + "&email-address=" + emailaddress + "&phonenumber=" + phonenumber + "&subject=" + subject + "&shorttext=" + shorttext ;
  data = {
		  "name": name, 
		  "full-name": name, 
		  "email-address": emailaddress, 
		  "phonenumber": phonenumber, 
		  "subject": subject, 
		  "shorttext": shorttext};
  xhttp.send();
}
</script>
</head>

<!-- full-name
email-address
phone-number
subject
shorttext
 -->
 
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
							<li><i class="fa fa-envelope"></i> <a
								href="mailto:hr@bytes2bots.com">hr@bytes2bots.com</a></li>
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
								<!-- <a href="login.jsp"><i class="fa fa-user"></i></a> -->
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
							<div class="logo">
								<a href="index.jsp"><img src="assets/images/logo.png" alt=""
									title=""></a>
							</div>
						</div>

						<div class="nav-outer clearfix ml-lg-auto mr-lg-auto">
							<!-- Main Menu -->
							<nav class="main-menu navbar-expand-lg">
								<div class="navbar-header clearfix">
									<!-- Toggle Button -->
									<button type="button" class="navbar-toggle"
										data-toggle="collapse" data-target=".navbar-collapse">
										<span class="icon-bar"></span> <span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
								</div>

								<div class="navbar-collapse collapse clearfix">
									<ul class="navigation clearfix">
										<li class="current-menu-item"><a href="index.jsp">Home</a></li>
										<li class="dropdown"><a href="about.jsp">About</a>
											<ul>
												<li><a href="about.jsp">About Us</a></li>
												<li><a href="about.jsp#overview">Overview</a></li>
												<li><a href="about.jsp#vission">Our Vision</a></li>
												<li><a href="about.jsp#mission">Our Mission</a></li>
												<!-- <li><a href="about.jsp#team">Our Team Members</a></li> -->
											</ul></li>
										<li class="dropdown"><a href="service-details.jsp">Services</a>
											<ul>
												<li><a href="service-details.jsp">Services</a></li>
												<li><a href="service-details.jsp#glo">Global
														Solutions</a></li>
												<li><a href="service-details.jsp#itcon">IT
														Consulting</a></li>
												<li><a href="service-details.jsp#rec">Recruiting
														Services</a></li>
											</ul></li>
										<li><a href="job-opportunity.jsp">Hot Jobs</a></li>
										<li><a href="http://careers.bytes2bots.com/">Careers</a></li>
										<!-- <li class="dropdown"><a href="#">Pages</a>
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
							<i class="flaticon-headphone"></i> <a
								href="callto:+91-8884966873">+91-8884966873</a>
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
            Start Hero Section
        =====================================================================-->
		<section class="hero-section overlay">
			<div class="container">
				<div class="hero-inner">
					<!--<span class="sub-title wow fadeInUp" data-wow-duration="1s">SINCE 1996.</span>-->
					<h1>
						<span class="wow fadeInUp" data-wow-duration="1s"
							data-wow-delay="0.3s">Bytes2Bots</span><br> <span
							class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">Consulting</span><br>
						<span class="wow fadeInUp" data-wow-duration="1s"
							data-wow-delay="0.8s">Services</span>
					</h1>
					<a href="contact.jsp" class="theme-btn wow fadeInUp"
						data-wow-duration="1s" data-wow-delay="1s">Happy to help you<i
						class="fas fa-arrow-right"></i></a>
				</div>
			</div>
		</section>
		<!--==================================================================== 
            End Hero Section
        =====================================================================-->

		<!--==================================================================== 
            Start Our Success Section
        =====================================================================-->
		<div class="our-success pb-30 rpb-0 wow fadeInUp"
			data-wow-duration="2s">
			<div class="container">
				<div class="success-wrap bg-orange">
					<div class="row">
						<div class="col-xl-3 col-lg-6 col-md-6">
							<div class="success-item">
								<div class="success-icon">
									<i class="flaticon-people"></i>
								</div>
								<div class="success-content">
									<span class="count-text" data-speed="2500" data-stop="568">0</span>
									<p>Happy Client</p>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-6 col-md-6">
							<div class="success-item">
								<div class="success-icon">
									<i class="flaticon-edit"></i>
								</div>
								<div class="success-content">
									<span class="count-text" data-speed="2500" data-stop="894">0</span>
									<p>Complete Case</p>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-6 col-md-6">
							<div class="success-item">
								<div class="success-icon">
									<i class="flaticon-computer"></i>
								</div>
								<div class="success-content">
									<span class="count-text" data-speed="2500" data-stop="860">0</span>
									<p>Guides Given</p>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-lg-6 col-md-6">
							<div class="success-item">
								<div class="success-icon">
									<i class="flaticon-review"></i>
								</div>
								<div class="success-content">
									<span class="count-text" data-speed="2500" data-stop="34">0</span>
									<p>Winning Awards</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--==================================================================== 
            End Our Success Section
        =====================================================================-->

		<!--==================================================================== 
            Start About Us Section
        =====================================================================-->
		<section class="about-us pb-150 rpb-100">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="about-image rmb-50">
							<img class="wow fadeInBottomLeft" data-wow-duration="2s"
								src="assets/images/about/about.jpg" alt="About Image">
							<div class="about-border"></div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="about-content">
							<div class="section-title mb-25 wow fadeInUp"
								data-wow-duration="2s">
								<h3>
									Empowering Our Clients<br> To Succeed <span>With
										Technologies !!!</span>
								</h3>
							</div>
							<p class="wow fadeInUp" data-wow-duration="2s">Success mantra
								of any organization is the combination of technology and right
								skilled people. In any sort of sector, there will be a constant
								need of advancement in the technology.</p>

							<i class="wow fadeInUp" data-wow-duration="2s">With the
								advancement in the technology, there will be a risk of rise in
								the huge gap of the skilled people in the industries to meet the
								present needs and demands. Outsourcing the right person with
								right capabilities to the client has become a today’s
								challenge. This is the everlasting ultimatum that every
								organization is facing.</i> <a href="about.jsp"
								class="theme-btn wow fadeInUp" data-wow-duration="2s">Explore
								More <i class="fas fa-arrow-right"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--==================================================================== 
            End About Us Section
        =====================================================================-->

		<!--==================================================================== 
            Start Service Section
        =====================================================================-->
		<section class="services-section bg-snow pt-140 rpt-90 pb-110 rpb-60">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-7 col-md-8">
						<div class="section-title text-center mb-80 wow fadeInUp"
							data-wow-duration="2s">
							<h2>Services We Offer</h2>
							<p>In today's fast-paced hybrid cloud environment, being at
								business speed means overcoming IT complexity to match the speed
								of actions to the speed of opportunity. Design your digital
								transformation with Bytes to Bots consultancy Services' skilled
								IT consulting to implement the right technology and adapt
								quickly to market opportunities.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="service-item wow fadeInUp" data-wow-duration="2s">
							<div class="service-icon d-flex">
								<img src="assets/images/services/icon1.png" alt="Services">
								<a href="service-details.jsp#glo" class="ml-auto"><i
									class="fas fa-angle-double-right"></i></a>
							</div>
							<div class="service-content">
								<h4>
									<a href="service-details.jsp#glo">Global <br>
										Solutions
									</a>
								</h4>
								<p>B2B understands the need of update of technology in
									today's business world and is dedicated to deliver the best
									solutions in terms of technological expertise nad IT projects.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="service-item wow fadeInUp" data-wow-duration="2s"
							data-wow-delay="0.3s">
							<div class="service-icon d-flex">
								<img src="assets/images/services/icon2.png" alt="Services">
								<a href="service-details.jsp#itcon" class="ml-auto"><i
									class="fas fa-angle-double-right"></i></a>
							</div>
							<div class="service-content">
								<h4>
									<a href="service-details.jsp#itcon">Information Technology<br>
										Consulting
									</a>
								</h4>
								<p>Utilize the expertise of B2B to create a comprehensive IT
									strategy for your company's digital and technological
									transformation that is in line with your business objectives.</p>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="service-item wow fadeInUp" data-wow-duration="2s"
							data-wow-delay="0.5s">
							<div class="service-icon d-flex">
								<img src="assets/images/services/icon3.png" alt="Services">
								<a href="service-details.jsp#rec" class="ml-auto"><i
									class="fas fa-angle-double-right"></i></a>
							</div>
							<div class="service-content">
								<h4>
									<a href="service-details.jsp#rec">Recruiting<br>
										Services
									</a>
								</h4>
								<p>B2B is a seasoned staffing and manpower recruitment
									services company who can find the right candidate for the right
									job in terms of fitment.</p>
							</div>
						</div>
					</div>
					<!-- 
                    <div class="separetor wow fadeInUp" data-wow-duration="2s"></div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item wow fadeInUp" data-wow-duration="2s">
                            <div class="service-icon d-flex">
                                <img src="assets/images/services/icon4.png" alt="Services">
                                <a href="service-details.jsp" class="ml-auto"><i class="fas fa-angle-double-right"></i></a>
                            </div>
                            <div class="service-content">
                                <h4><a href="service-details.jsp">Planning &<br> Management</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.3s">
                            <div class="service-icon d-flex">
                                <img src="assets/images/services/icon5.png" alt="Services">
                                <a href="service-details.jsp" class="ml-auto"><i class="fas fa-angle-double-right"></i></a>
                            </div>
                            <div class="service-content">
                                <h4><a href="service-details.jsp">Financial<br> Consulting</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item wow fadeInUp" data-wow-duration="2s" data-wow-delay="0.5s">
                            <div class="service-icon d-flex">
                                <img src="assets/images/services/icon6.png" alt="Services">
                                <a href="service-details.jsp" class="ml-auto"><i class="fas fa-angle-double-right"></i></a>
                            </div>
                            <div class="service-content">
                                <h4><a href="service-details.jsp">Mortgage<br> Advisor</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor.</p>
                            </div>
                        </div>
                    </div>
                </div>  -->
				</div>
		</section>
		<!--==================================================================== 
            End Service Section
        =====================================================================-->

		<!--==================================================================== 
            Star Partners Section
        =====================================================================-->
		<section class="partners-section pt-135 rpt-85 pb-145 rpb-130">
			<div class="container">
				<div class="row">
					<div class="col-xl-4">
						<div class="section-title wow fadeInUp" data-wow-duration="2s">
							<h2>
								Our Trusted<br> Partners.
							</h2>
						</div>
					</div>
					<div class="col-xl-8">
						<div class="partner-wrap">
							<div class="partner-item">
								<img src="assets/images/partners/partner1.png"
									alt="Partner Image">
							</div>
							<div class="partner-item">
								<img src="assets/images/partners/partner4.png"
									alt="Partner Image">
							</div>
							<div class="partner-item">
								<img src="assets/images/partners/partner3.png"
									alt="Partner Image">
							</div>
							<div class="partner-item">
								<img src="assets/images/partners/partner2.png"
									alt="Partner Image">
							</div>
							<div class="partner-item">
								<img src="assets/images/partners/partner2-org.png"
									alt="Partner Image">
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--==================================================================== 
            End Partners Section
        =====================================================================-->

		<!--==================================================================== 
            Star Cases Section
        =====================================================================-->
		<section class="cases-section bg-black pt-140 rpt-90 pb-150 rpb-100">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="section-title text-center mb-80 wow fadeInUp"
							data-wow-duration="2s">
							<h2>Consultancy Cases</h2>
							<p>We provide the best services by offering high quality
								solutions with great team effort.</p>
						</div>
					</div>
				</div>
				<div class="case-wrap">
					<div class="case-item wow fadeInUp" data-wow-duration="2s">
						<div class="case-image">
							<img src="assets/images/cases/case1.jpg" alt="Case Image">
							<a href="case-details.jsp"><i
								class="fas fa-angle-double-right"></i></a>
						</div>
						<div class="case-content">
							<!-- <span>HOME / LAND</span>-->
							<h4>
								<a href="case-details.jsp">IT Consulting</a>
							</h4>
						</div>
					</div>
					<div class="case-item wow fadeInUp" data-wow-duration="2s"
						data-wow-delay="0.3s">
						<div class="case-image">
							<img src="assets/images/cases/case2.jpg" alt="Case Image">
							<a href="case-details.jsp"><i
								class="fas fa-angle-double-right"></i></a>
						</div>
						<div class="case-content">
							<!-- <span>BUSINESS SOLUTION</span>-->
							<h4>
								<a href="case-details.jsp">Outsourcing </a>
							</h4>
						</div>
					</div>
					<div class="case-item wow fadeInUp" data-wow-duration="2s"
						data-wow-delay="0.5s">
						<div class="case-image">
							<img src="assets/images/cases/case3.jpg" alt="Case Image">
							<a href="case-details.jsp"><i
								class="fas fa-angle-double-right"></i></a>
						</div>
						<div class="case-content">
							<!--<span>CORPORATE SERVICES</span>-->
							<h4>
								<a href="case-details.jsp">Planning & Management</a>
							</h4>
						</div>
					</div>
					<div class="case-item wow fadeInUp" data-wow-duration="2s"
						data-wow-delay="0.7s">
						<div class="case-image">
							<img src="assets/images/cases/case2.jpg" alt="Case Image">
							<a href="case-details.jsp"><i
								class="fas fa-angle-double-right"></i></a>
						</div>
						<div class="case-content">
							<!--<span>BUSINESS SOLUTION</span>-->
							<h4>
								<a href="case-details.jsp">Online Consulting</a>
							</h4>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--==================================================================== 
            End Cases Section
        =====================================================================-->

		<!--==================================================================== 
            Start Team Section
        =====================================================================-->
		<!-- <section class="team-section pt-135 rpt-90 pb-90 rpb-40">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-md-8">
                        <div class="section-title text-center mb-80 wow fadeInUp"  data-wow-duration="2s">
                            <h2>Our Team Members</h2>
                            <p>Our current teams comprise of handpicked qualified professionals from various organisations combining experience in multiple disciplines: including Human Resources, Recruitment, Technology, and Sales & Marketing. A strong service attitude coupled with a desire to excel and innovate is an integral part of our team members.</p>
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
                            <a href="#"><i class="fab fa-pinterest-p"></i></a>
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
                            <a href="#"><i class="fab fa-pinterest-p"></i></a>
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
            Start Call Back Section
        =====================================================================-->
	<section class="call-back-section text-white py-150 rpt-90 rpb-100">
		<div class="call-back-shap"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="section-title wow fadeInUp" data-wow-duration="2s">
						<h2>Have any questions , give us a call!!</h2>
						<!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do labore et dolore magna aliqua enim ad minim veniam.</p>-->
					</div>
				</div>

				<div class="col-lg-6">
					<form id="callform" class="call-back-form" name="call-back-form" action="call-action.jsp" method="post">
						<div class="row clearfix">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="full-name" id="fullname" class="form-control"
										value="" placeholder="Full Name" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" name="email-address" id="emailaddress"class="form-control"
										value="" placeholder="Email Here" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="phone-number" id="phonenumber" class="form-control"
										value="" placeholder="Phone No.">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" name="subject" id="subject" class="form-control" value=""
										placeholder="Subject" required>
								</div>
							</div>
							<div class="col-md-12 mb-10">
								<div class="form-group">
									<input type="text" name="shorttext" id="shorttext" class="form-control"
										value="" placeholder="Short Text">
								</div>
							</div>
						</div>
						<div class="form-group call-submit text-center">
							<button class="theme-btn" type="submit" >
								Submit Now <i class="fas fa-arrow-right"></i>
							</button>
						</div>
						<div id="demo"></div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--==================================================================== 
            End Call Back Section
        =====================================================================-->


	<!--==================================================================== 
            Start Testimonial Section
        =====================================================================-->



	<section class="services-section bg-snow pt-140 rpt-90 pb-110 rpb-60">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7 col-md-8">
					<div class="section-title text-center mb-80 wow fadeInUp"
						data-wow-duration="2s">
						<h2>What Clients say?</h2>
						<p>"The B2B team are ultimate rock stars! They are a highly
							professional, educated and experienced team that is dedicated to
							helping their clients achieve success. One of the best teams I
							have ever worked with – highly responsive, innovative and
							leverage best practices. Looking forward for many more!!"</p>
						<div class="reviewer">
							<h3>Hitesh Reddy</h3>
							<span>Managing Director - Hyper infinite games and
								Entertainment</span>
						</div>
					</div>

				</div>
			</div>
			<!--==================================================================== 
            Start Testimonial Section
        =====================================================================-->
			<!--<section class="testimonial-section pt-135 rpt-85 pb-150 rpb-100">
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
                    <div class="testimony-content " >
                        <div class="review-single">
                            <div class="textimonial-image">
                                <img src="assets/images/testimonials/testi-big1.jpg" alt="Reviewed By">
                            </div>
                            <div class="textimonial-content">
                                <p>"The B2B team are ultimate rock stars! They are a highly professional, educated and experienced team that is dedicated to helping their clients achieve success. One of the best teams I have ever worked with – highly responsive, innovative and leverage best practices. Looking forward for many more!!"</p>
                                <div class="reviewer">
                                    <h3>Daniel Roberts</h3>
                                    <span>Sudarshan Rao</span>
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
                                    <h3>Hitesh Reddy</h3>
                                    <span>Managing Director - Leading Games Company</span>
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
            </div>-->
	</section>
	<!--==================================================================== 
            End Testimonials Section
        =====================================================================-->

	<!--==================================================================== 
            Start Call To Action Section
        =====================================================================-->
	<section class="cta-section bg-orange pt-130 rpt-80 pb-135 rpb-100">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-8">
					<div class="cta-text wow fadeInUp rmb-25" data-wow-duration="2s">
						<h3>You Want To Work With Best Consulting Solutions Company?</h3>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="cta-btn wow fadeInUp" data-wow-duration="2s"
						data-wow-delay="0.3s">
						<a href="contact.jsp" class="theme-btn">Contact Now <i
							class="fas fa-arrow-right"></i></a>
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
								<p>B1, Prashanthi Kuteera, Kadugodi, Whitefield, Bangalore
									560067</p>

							</li>
							<li>
								<h5>Email:</h5>
								<p>hr@bytes2bots.com</p>

							</li>
							<li>
								<h5>Call Now:</h5>
								<p>
									<a href="callto:+91-8884966873">+91-8884966873</a>
								</p> <!--<p><a href="callto:+8696732986346">+8 6967 329 863 46</a></p>-->
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
									<h5>
										<a href="#">Openings on Java</a>
									</h5>
									<p>01 October, 2021</p>
								</div>
							</li>
							<li>
								<div class="post-item">
									<h5>
										<a href="#">Openings on Java</a>
									</h5>
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
							<li><a href="service-details.jsp#rec">Recruiting
									Services</a></li>
							<!--<li><a href="service-details.jsp">Mortgage Advisor</a></li>-->
							<!--<li><a href="service-details.jsp">Financial Consulting</a></li>-->
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-6">
					<div class="widget subscribe-widget">
						<h3 class="widget-title">Subscribe</h3>
						<form action="#" method="post" name="subscribe-form"
							class="subscribe-form">
							<p>Subscribe to get email notification regarding the job
								openings</p>
							<div class="form-group">
								<input type="email" name="email-address" value=""
									class="form-control" placeholder="Email" required="">
								<button type="submit" class="subscribe-submit">
									<i class="fa fa-envelope"></i>
								</button>
							</div>
						</form>
						<div class="social-style-two mt-20">
							<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
								class="fab fa-skype"></i></a> <a href="#"><i
								class="fab fa-twitter"></i></a>
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
						<p>
							Copyright © <span>2021</span> | All Rights Reserved.
						</p>
						<!-- Scroll Top Button -->
						<button class="scroll-top scroll-to-target wow fadeInUp"
							data-wow-duration="2s" data-target="html">
							<i class="fas fa-angle-double-up"></i>
						</button>
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