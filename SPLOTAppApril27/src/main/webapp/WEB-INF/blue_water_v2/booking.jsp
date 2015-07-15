<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<!---- start-smooth-scrolling---->
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
						<li class="active"><a href="booking.html" class="active">Booking</a></li>
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

		<div class="services-main">
			<h3>Click on a spot</h3>
		</div>

	</div>
	<!--end-services-->

	<!--start-other-->
	<div class="other">
		<!--start-advantage-->
		<div class="advantage">
			<div class="container">
				<div class="advantage-main">
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="1" onClick="myFunction(this);">1</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="3" onClick="myFunction(this);">3</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="5" onClick="myFunction(this);">5</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="7" onClick="myFunction(this);">7</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="9" onClick="myFunction(this);">9</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="11" onClick="myFunction(this);">11</a>
						</div>
						<div class="clearfix"></div>
					</div>

					<div class="clearfix"></div>
				</div>


				<!--start-services-->
				<div class="services"></div>
				<div class="services"></div>
				<!--end-services-->


				<div class="advantage-bottom">
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="2" onClick="myFunction(this);">2</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="4" onClick="myFunction(this);">4</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="6" onClick="myFunction(this);">6</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="8" onClick="myFunction(this);">8</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="10" onClick="myFunction(this);">10</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-xs-2">
						<div class="o-btn">
							<a id="12" onClick="myFunction(this);">12</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function myFunction(elmnt) {
			if (elmnt.id == 1 && "${lot1}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 2 && "${lot2}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 3 && "${lot3}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 4 && "${lot4}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 5 && "${lot5}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 6 && "${lot6}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}else if (elmnt.id == 7 && "${lot7}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 8 && "${lot8}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 9 && "${lot9}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 10 && "${lot10}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 11 && "${lot11}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}
			else if (elmnt.id == 12 && "${lot12}" == 1){
				alert('Spots marked with a X are reserved. Please choose an empty spot.');
			}else{

				previous = document.getElementById("field2").value;

				document.getElementById("field2").value = elmnt.id;
				elmnt.style.color = 'blue';

				document.getElementById(previous.toString()).style.color = '#80ff00';
			}
						
		}

		function isReserved() {
			return 'X';
		}

		if ("${lot1}" == 1) {
			document.getElementById("1").innerHTML = 'X';
			document.getElementById("1").style.color = 'red';
		}
		if ("${lot2}" == 1) {
			document.getElementById("2").innerHTML = 'X';
			document.getElementById("2").style.color = 'red';
		}
		if ("${lot3}" == 1) {
			document.getElementById("3").innerHTML = 'X';
			document.getElementById("3").style.color = 'red';
		}
		if ("${lot4}" == 1) {
			document.getElementById("4").innerHTML = 'X';
			document.getElementById("4").style.color = 'red';
		}
		if ("${lot5}" == 1) {
			document.getElementById("5").innerHTML = 'X';
			document.getElementById("5").style.color = 'red';
		}
		if ("${lot6}" == 1) {
			document.getElementById("6").innerHTML = 'X';
			document.getElementById("6").style.color = 'red';
		}
		if ("${lot7}" == 1) {
			document.getElementById("7").innerHTML = 'X';
			document.getElementById("7").style.color = 'red';
		}
		if ("${lot8}" == 1) {
			document.getElementById("8").innerHTML = 'X';
			document.getElementById("8").style.color = 'red';
		}
		if ("${lot9}" == 1) {
			document.getElementById("9").innerHTML = 'X';
			document.getElementById("9").style.color = 'red';
		}
		if ("${lot10}" == 1) {
			document.getElementById("10").innerHTML = 'X';
			document.getElementById("10").style.color = 'red';
		}
		if ("${lot11}" == 1) {
			document.getElementById("11").innerHTML = 'X';
			document.getElementById("11").style.color = 'red';
		}
		if ("${lot12}" == 1) {
			document.getElementById("12").innerHTML = 'X';
			document.getElementById("12").style.color = 'red';
		}
	</script>




	<!--end-advantage-->


	<!--start-booking-->
	<div class="booking">
		<div class="container">
			<div class="booking-main">
				<h3>BOOKING</h3>
				<div class="booking-top">
					<div class="col-md-3 booking-top-left"></div>
					<div class="col-md-6 booking-top-left">
						<h4>Enter Your Details Here</h4>
						<br />
						<form:form method="POST" modelAttribute="customer">
							<table>
								<tbody>
									<tr>
										<td><form:hidden path="lotNumber" id="field2" /></td>
									</tr>
									<tr>
										<td>First Name</td>
										<td width="60%"><form:input path="firstName" /></td>
									</tr>
									<tr>
										<td>Last Name</td>
										<td width="60%"><form:input path="lastName" /></td>
									</tr>
									<tr>
										<td>Email Address</td>
										<td width="60%"><form:input path="emailAddress" /></td>
									</tr>
									<tr>
										<td></td>
										<td width="60%"><input type="submit" value="Reserve" /></td>
										<td></td>
									</tr>
								</tbody>
							</table>
						</form:form>

					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--end-booking-->
	<!---strat-date-piker---->
	<link rel="stylesheet" href="resources/css/jquery-ui.css" />
	<script src="resources/js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker,#datepicker1").datepicker();
		});
	</script>
	<!---/End-date-piker---->
	<link type="text/css" rel="stylesheet" href="resources/css/JFGrid.css" />
	<link type="text/css" rel="stylesheet"
		href="resources/css/JFFormStyle-1.css" />
	<script type="text/javascript" src="resources/js/JFCore.js"></script>
	<script type="text/javascript" src="resources/js/JFForms.js"></script>
	<!-- Set here the key for your domain in order to hide the watermark on the web server -->
	<script type="text/javascript">
		(function() {
			JC.init({
				domainKey : ''
			});
		})();
	</script>

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