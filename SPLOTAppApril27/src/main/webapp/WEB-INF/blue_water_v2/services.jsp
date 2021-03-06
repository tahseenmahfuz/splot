<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Smart Parking Lot</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Blue Water Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 





</script>
<link href="resources/css/bootstrap.css" rel='stylesheet'
	type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<script src="resources/js/jquery-1.11.0.min.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900,100italic,200italic,300italic,400italic,500italic,600italic,700italic,800italic,900italic'
	rel='stylesheet' type='text/css'>
	<!---- start-smoth-scrolling---->
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!--start-smoth-scrolling-->
</head>
<body>
	<!--start-banner-->
	<div class="banner1" id="home">
		<div class="container">
			<div class="header">
				<div class="menu">
					<a class="toggleMenu" href="#"><img
						src="resources/images/menu-icon.png" alt="" /> </a>
					<ul class="nav" id="nav">
						<li><a href="index.html">Home</a></li>
						<li class="active"><a href="services.html" class="active">Services</a></li>
						<li><a href="booking.html">Booking</a></li>
						<li><a href="contact.html">Contact</a></li>
					</ul>
					<!----start-top-nav-script---->
					<script type="text/javascript" src="resources/js/responsive-nav.js"></script>
					<script type="text/javascript">
						jQuery(document).ready(function($) {
							$(".scroll").click(function(event) {
								event.preventDefault();
								$('html,body').animate({
									scrollTop : $(this.hash).offset().top
								}, 1000);
							});
						});
					</script>
					<!----//End-top-nav-script---->
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-banner-->
	<!--start-services-->
	<div class="services">
		<div class="container">
			<div class="services-main">
				<h3>Confirmation</h3>
				<div class="services-top">
					<div class="col-md-1"></div>
					<div class="col-md-4 service-left">
						<h4>Details Provided</h4>
						<p>
							Name: ${customer.firstName} &nbsp; ${customer.lastName } <br />
							Email: ${customer.emailAddress} <br /> Lot Reserved:
							${customer.lotNumber} <br />
						</p>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-4 list-left">
						<img src="resources/images/QR_Code.png" alt="">
						<h4>
							QR Code<br />
						</h4>
						<ul>
							<li><a>A copy has been emailed to you.</a></li>
							<li><a>Please scan the QR code while entering parking
									facility</a></li>
							<li><a>Your facility has been located in the map below.</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end-services-->

	<!--start-contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-main">
				<h3>Directions</h3>
				<div class="contact-top">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22445.5295026957!2d-75.91568292926173!3d45.314663396348074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x7066502fd627989a!2sTerry+Fox+Station!5e0!3m2!1sen!2sca!4v1427555170919" width="600" height="450" frameborder="0" style="border:0"></iframe>
					
					<p>
						</p>
					<div class="contact-one">
						<div class="col-md-4 contact-left">
							<div class="c-left">
								<span class="adrs"> </span>
							</div>
							<div class="c-right">
								<h5>
									Carleton Univerisity<span>1125 COLONEL BY DRIVE, OTTAWA,
										ON K1S 5B6</span>
								</h5>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 contact-left">
							<div class="c-left">
								<span class="ph"> </span>
							</div>
							<div class="c-right">
								<p>
									Telephone: (1) 613-520-2600 <span>FAX: +1 234 567 9871</span>
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="col-md-4 contact-left">
							<div class="c-left">
								<span class="mail"> </span>
							</div>
							<div class="c-right">
								<p>
									<a href="mailto:ravens@carleton.ca">ravens@carleton.ca</a>
								</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--end-contact-->




	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="col-md-5 footer-left">
					<h4>Follow Us</h4>
					<ul>
						<li><a href="#"><span class="twt"> </span></a></li>
						<li><a href="#"><span class="fb"> </span></a></li>
						<li><a href="#"><span class="p"> </span></a></li>
						<li><a href="#"><span class="yt"> </span></a></li>
						<li><a href="#"><span class="in"> </span></a></li>
					</ul>
					<h4>Address</h4>
					<h5>1125 COLONEL BY DRIVE, OTTAWA, ON K1S 5B6</h5>
					<p>
						Mail Us On <a href="mailto:ravens@carleton.ca">
							ravens@carleton.ca</a>
					</p>
					<p>Call Us On (1) 613-520-2600</p>
				</div>
				<div class="col-md-7 footer-right">
					<h4>Subscribe For Updates</h4>
					<span> <input type="text" value="Enter email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Enter email';}"><input
						type="submit" value="SUBSCRIBE"></span>
					<ul>
						<li><a href="index.html">Home</a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="services.html">Services</a></li>
						<li><a href="booking.html">Booking</a></li>
						<li><a href="contact.html">Contact</a></li>
						<li><a class="play-icon popup-with-zoom-anim"
							href="#small-dialog">Login</a></li>
						<li><a class="play-icon popup-with-zoom-anim"
							href="#small-dialog1">Signup</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-text">
				<p>
					DESIGN BY <a href="http://w3layouts.com/"> W3LAYOUTS</a>
				</p>
			</div>
		</div>
		<a href="#home" id="toTop" class="scroll" style="display: block;">
			<span id="toTopHover" style="opacity: 1;"> </span>
		</a>
	</div>
	<!--end-footer-->
</body>
</html>