<%@page import="javax.jms.Session"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <% session = request.getSession();
    
 String uid=null;
 if(session.getAttribute("userId")!=null){
         uid=session.getAttribute("userId").toString();
 }
%>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Insurance</title>

		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/lineo-icon/style.css" rel="stylesheet" type="text/css">

		<!-- Loading main css file -->
		<link rel="stylesheet" href="css/style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body>
		
		<div id="site-content">
			<header class="site-header">
				<div class="top-header">
					<div class="container">
						<a href="index.html" id="branding">
							<img src="images/logo.png" alt="Company Name" class="logo">
							<div class="logo-text">
								<h1 class="site-title">SVS Insurance</h1>
								<small class="description">We Care You Always</small>
							</div>
						</a> <!-- #branding -->
					
						<div class="right-section pull-right">
							<a href="#" class="phone"><img src="images/icon-phone.png" class="icon">+0112789654</a>
					
							<form action="#" class="search-form">
								<input type="text" placeholder="Search...">
								<button type="submit"><img src="images/icon-search.png" alt=""></button>
							</form>
						</div>
					</div> <!-- .container -->
				</div> <!-- .top-header -->

				
				<div class="bottom-header">
					<div class="container">
						<div class="main-navigation">
							<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
							<ul class="menu">
                                                                <li class="menu-item"><a href="index.jsp">Home</a></li>	
                                                                  <% if(uid!=null && !uid.isEmpty()){%>
                            
                           <li>
                            <a href="http://localhost:8080/SVS_Insurance/dashboardServlet?uid=<%=uid%>">Dashboard</a>
                            
                        </li> 
                        <%}%>
								<li class="menu-item"><a href="about.jsp">About us</a></li>															
								<li class="menu-item"><a href="contact.jsp">Contact</a></li>
                                                                 <% if(uid!=null && !uid.isEmpty()){%>
                            
                           <li>
                            <li><a href="http://localhost:8080/SVS_Insurance/logout">Sign Out</a></li>
                            
                        </li> 
                        <%}
                        else{%>
                              <li><a href="login.jsp">Sign In</a></li>
                        <%}%>
							</ul> <!-- .menu -->
						</div> <!-- .main-navigation -->
						
						<div class="social-links">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-google-plus"></i></a>
							<a href="#"><i class="fa fa-pinterest"></i></a>
						</div>
						
						<div class="mobile-navigation"></div>
					</div>
				</div>
				
			</header> <!-- .site-header -->

			<div class="hero hero-slider">
				<ul class="slides">
					<li data-bg-image="dummy/slide-1.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Get your <strong>Life Insurance</strong></h2>
								<p>Our dream is to secure the future of your loved ones. Now you can provide maximum protection  for your most valuable asset, your family with range of our life insurance solutions.</p>
								<a href="#" class="button">Get a quote</a>
							</div>
						</div>
					</li>
					<li data-bg-image="dummy/slide-2.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Get your <strong>Life Insurance</strong></h2>
								<p>Our dream is to secure the future of your loved ones. Now you can provide maximum protection  for your most valuable asset, your family with range of our life insurance solutions.</p>
								<a href="#" class="button">Get a quote</a>
							</div>
						</div>
					</li>
					<li data-bg-image="dummy/slide-3.jpg">
						<div class="container">
							<div class="slide-content">
								<h2 class="slide-title">Get your <strong>Life Insurance</strong></h2>
								<p>Our dream is to secure the future of your loved ones. Now you can provide maximum protection  for your most valuable asset, your family with range of our life insurance solutions.</p>
								<a href="#" class="button">Get a quote</a>
							</div>
						</div>
					</li>
				</ul>
			</div> <!-- .hero-slider -->

			<main class="main-content">
				<div class="fullwidth-block greet-section">
					<div class="container">
						<h2 class="section-title">WELCOME TO THE WORLD OF
SRI LANKA INSURANCE</h2>
						

                                            <div class="row" style="margin-left: 200px;">
							<div class="col-md-3">
								<div class="feature">
									<i class="icon-heart"></i>
									<h3 class="feature-title">LIFE INSURANCE</h3>
                                                                        <p>Sri Lanka Insurance Life offers a range of life insurance plans to suit your income and life style. With the largest life fund- Rs. 74 billion in the insurance industry and the largest managed asset base of Rs. 161 billion</p>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<i class="icon-car"></i>
									<h3 class="feature-title">MOTOR INSURANCE</h3>
									<p>Sri Lanka Insurance Motor Plus offers comprehensive motor insurance solutions to meet the unpredictable realities on the road. Our policies cover a range of vehicle types from private to commercial vehicles.</p>
								</div>
							</div>
							<div class="col-md-3">
								<div class="feature">
									<i class="icon-hotel"></i>
									<h3 class="feature-title">PROPERTY INSURANCE</h3>
									<p>Sri Lanka Insurance Globe Trotter provides coverage to your property, students and tourists for a wide range of emergencies that could occur from embarkation to disembarkation</p>
								</div>
							</div>
							
						</div> <!-- .row -->

						<div class="text-center">
							<p>Sollicitudin sit tortor pellentesque. <a href="#">Read more</a></p>
						</div>
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block -->

				 <!-- .latest-news-section -->

				<div class="fullwidth-block" data-bg-color="#0f75bd">
					<div class="container">
						<div class="testimonial-slider">
							<ul class="slides">
								<li>
									<blockquote>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam quod explicabo optio quia ex odit, sequi harum voluptatibus autem. Nam autem corporis deleniti fugiat omnis itaque, quis laudantium dolor facere.<cite>John Smith</cite></blockquote>
								</li>
								<li>
									<blockquote>At doloremque, itaque molestias neque nesciunt placeat aspernatur veniam fugit enim, dolor, repudiandae a. Laborum optio dolorum qui maxime doloribus eligendi in enim minima quo? Quis tenetur eos, libero exercitationem.<cite>John Smith</cite></blockquote>
								</li>
								<li>
									<blockquote>Ipsam nesciunt velit voluptatem? Voluptas amet, porro eaque asperiores magni rerum vitae nulla inventore, numquam facilis doloribus placeat iure suscipit adipisci dolores modi saepe deserunt nisi. Nam, illum aperiam velit.<cite>John Smith</cite></blockquote>
								</li>
							</ul>
						</div>
					</div> <!-- .container -->
				</div> <!-- .fullwidth-block -->

				

				
			</main>

			<div class="site-footer">
				<div class="widget-area">
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-4 col-md-2">
								<div class="widget">
									<h3 class="widget-title">Contact</h3>
									<address> Company Name INC. 523 Burt Street, Omaha
									</address>
									<a href="#">Phone: +1 823 424 9134</a>
									<a href="mailto:info@company.com">info@company.com</a>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-2">
								<div class="widget">
									<h3 class="widget-title">Company</h3>
									<ul class="no-bullet">
										<li><a href="#">About us</a></li>
										<li><a href="#">Infoline</a></li>
										<li><a href="#">Team</a></li>
										<li><a href="#">Join us</a></li>
										<li><a href="#">Cooperation</a></li>
									</ul>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-2">
								<div class="widget">
									<h3 class="widget-title">Products</h3>
									<ul class="no-bullet">
										<li><a href="#">Life insurance</a></li>
										<li><a href="#">Home insurance</a></li>
										<li><a href="#">Car insurance</a></li>
										<li><a href="#">Business insurance</a></li>
										<li><a href="#">Investment insurance</a></li>
									</ul>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-2">
								<div class="widget">
									<h3 class="widget-title">Our Solutions</h3>
									<ul class="no-bullet">
										<li><a href="#">Presentation</a></li>
										<li><a href="#">Testimonials</a></li>
										<li><a href="#">Examples</a></li>
										<li><a href="#">Our experts</a></li>
										<li><a href="#">Resources</a></li>
									</ul>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-2">
								<div class="widget">
									<h3 class="widget-title">Press Room</h3>
									<ul class="no-bullet">
									<li><a href="#">Advertisement</a></li>
									<li><a href="#">Interviews</a></li>
									<li><a href="#">Hot news</a></li>
									<li><a href="#">Photos</a></li>
									<li><a href="#">Marketing</a></li>
									</ul>
								</div>
							</div>
							<div class="col-xs-12 col-sm-4 col-md-2">
								<div class="widget">
									<h3 class="widget-title">Resources</h3>
									<ul class="no-bullet">
										<li><a href="#">Sed imperdiet magna</a></li>
										<li><a href="#">Pellentesque molestie</a></li>
										<li><a href="#">Nulla luctus cursus</a></li>
										<li><a href="#">Ligula vel lacinia</a></li>
										<li><a href="#">Mauris scelerisque</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="bottom-footer">
					<div class="container">
						<nav class="footer-navigation">
							<a href="#">Home</a>
							<a href="#">About us</a>
							<a href="#">Insurance plans</a>
							<a href="#">Resources</a>
							<a href="#">Contact</a>
						</nav>

						<div class="colophon">Copyright 2018 SVS Insurance. Designed by LasiiGroup.com. All rights reserved.</div>
					</div>
				</div>
			</div>
		</div>

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>