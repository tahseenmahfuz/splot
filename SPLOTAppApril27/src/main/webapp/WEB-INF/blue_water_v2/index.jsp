<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
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
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
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
	<div class="banner" id="home">
		<div class="container">
			<div class="header">
				<div class="menu">
					<a class="toggleMenu" href="#"><img src="resources/images/menu-icon.png"
						alt="" /> </a>
					<ul class="nav" id="nav">
						<li class="active"><a href="index.html" class="active">Home</a></li>
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
			<div class="banner-bottom">
				<a href="index.html"><img src="resources/images/logo-1.png" alt=""></a>
				<h1>
					SMART<span> PARKING</span>
				</h1>
			</div>

			<div class="services"></div>
			<div class="services"></div>
			<!--/start-text-slider-->
			<div class="testimonials" id="testimonials">
				<div class="wmuSlider example1">
					<div class="container-flueid">
						<article style="position: absolute; width: 64%; opacity: 0;">
							<div class=" cont span_2_of_3 client-main">
								<img src="resources/images/slide-1.png" alt="">
							</div>
						</article>
						<article style="position: absolute; width: 64%; opacity: 0;">
							<div class=" cont span_2_of_3  client-main">
								<img src="resources/images/slide-4.png" alt="">
							</div>
						</article>
						<article style="position: absolute; width: 64%; opacity: 0;">
							<div class="cont span_2_of_3  client-main">
								<img src="resources/images/slide-5.png" alt="">
							</div>
						</article>
						<script src="resources/js/jquery.wmuSlider.js"></script>
						<script>
							$('.example1').wmuSlider();
						</script>
					</div>
				</div>
			</div>
			<!--//text-slider-->
		</div>
	</div>

	<div class="services"></div>
	<!--start-login-->
	<div class="log-in">
		<ul>
			<li><a class="play-icon popup-with-zoom-anim"
				href="#small-dialog"><span> </span>Login</a></li>
			<li><a class="play-icon popup-with-zoom-anim"
				href="#small-dialog1">Signup</a></li>
		</ul>
	</div>
	<!---pop-up-box---->
	<script type="text/javascript" src="resources/js/modernizr.custom.min.js"></script>
	<link href="resources/css/popup-box.css" rel="stylesheet" type="text/css"
		media="all" />
	<script src="resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!---//pop-up-box---->
	<div id="small-dialog" class="mfp-hide">
		<div class="login">
			<h3>Log In</h3>
			<h4>Already a Member</h4>
			<input type="text" value="Email" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Email';}" /> <input
				type="password" value="Password" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Password';}" /> <input
				type="submit" value="Login" />
		</div>
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<div class="signup">
			<h3>Sign Up</h3>
			<h4>Enter Your Details Here</h4>
			<input type="text" value="First Name" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'First Name';}" /> <input
				type="text" value="Second Name" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Second Name';}" /> <input
				type="text" class="email" value="Enter Email"
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Enter Email';}" /> <input
				type="password" value="Password" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Password';}" /> <input
				type="submit" value="SignUp" />
		</div>
	</div>
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

		});
	</script>
	<!--End-pop-up-box-->
	<!--end-login-->
	<!--end-banner-->
	<!--start-grid-->
	<div class="special">
		<div class="special-main">
			<div class="col-md-4 spl-left">
				<h2>Kanata</h2>
				<a href="booking.html" class="b-link-stripe b-animate-go  thickbox">
					<img class="port-pic" class="img-responsive" src="resources/images/one-1.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left b-from   b-delay03 ">
							<span>Park in Kanata</span>
						</h2>
					</div>
				</a>
			</div>
			<div class="col-md-4 spl-right">
				<h2>Orleans</h2>
				<a href="#" class="b-link-stripe b-animate-go  thickbox"> <img
					class="port-pic" class="img-responsive" src="resources/images/one-2.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left b-from   b-delay03 ">
							<span>Park in Orleans</span>
						</h2>
					</div>
				</a>
			</div>
			<div class="col-md-4 spl-right">
				<h2>Downtown</h2>
				<a href="#" class="b-link-stripe b-animate-go  thickbox"> <img
					class="port-pic" class="img-responsive" src="resources/images/one-5.jpg" />
					<div class="b-wrapper">
						<h2 class="b-animate b-from-left b-from   b-delay03 ">
							<span>Park Downtown</span>
						</h2>
					</div>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!--end-grid-->
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
						onblur="if (this.value == '') {this.value = 'Enter email';}">
						<input type="submit" value="SUBSCRIBE">
					</span>
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