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
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Insurance | Contact</title>

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
								<h1 class="site-title">Company Name</h1>
								<small class="description">Taline goes here</small>
							</div>
						</a> <!-- #branding -->
					
						<div class="right-section pull-right">
							<a href="#" class="phone"><img src="images/icon-phone.png" class="icon">+1 823 424 9134</a>
					
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
							</ul><!-- .menu -->
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

			<main class="main-content">
				<div class="breadcrumbs">
					<div class="container">
						<a href="index.html">Home</a>
						<span>Contact</span>
					</div>
				</div>

				<div class="page">
					<div class="container">
						

						<div class="row">
							<div class="col-md-3">
								<h2 class="section-title text-left">Address</h2>

								<div class="contact-detail">
									<address>
										<p>SVS Insurance. <br>
											523 Burt Street, Omaha</p>

										<p>Phone: +1 823 424 9134
											info@company.com</p>
									</address>
								</div>
							</div>
							<div class="col-md-9">
								<h2 class="section-title text-left">Contact form</h2>
								<form action="#" class="contact-form">
									<div class="row">
										<div class="col-md-4"><input type="text" placeholder="Your name..."></div>
										<div class="col-md-4"><input type="text" placeholder="Email..."></div>
										<div class="col-md-4"><input type="text" placeholder="Website..."></div>
									</div>

									<textarea  placeholder="Message..."></textarea>

									<p class="text-right">
										<input type="submit" value="Send message">
									</p>
								</form>


							</div>
						</div>
					</div>
				</div> <!-- .page -->
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