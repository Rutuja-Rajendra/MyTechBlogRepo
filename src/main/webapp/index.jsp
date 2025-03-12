<%@page import="com.myblog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyTechBlog</title>

<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" 
	crossorigin="anonymous">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<link rel="stylesheet" type="text/css" href="CSS/style.css">

<style type="text/css">
	.banner-background
	{
		clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 90% 85%, 36% 98%, 0 88%, 0 0);
	}
</style>
</head>
<body>

<!-- NAVBAR -->
<%@include file = "normal_navbar.jsp" %>

<!-- BANNCER -->
<div class="container-fluid p-0 m-0 banner-background">
	<div class="jumbotron primary-background text-white">
		<div class="container">
			<h3 class="display-4">Welcome to TechBlog!</h3>
			<p>Your Gateway to Learning and Innovation!</p>
			<p>Unlock the world of technology with step-by-step tutorials, expert tips, and hands-on guides. Whether you're a beginner exploring the basics or a developer leveling up your skills, we have something for you.</p>

			<p>Join us on a journey through coding, frameworks, databases, and beyond - empowering you to build, create, and innovate.</p>

			<p>Let's learn, grow, and shape the future together!</p>
			
			<button class="btn btn-outline-light btn-lg"><span class="fa fa-share"></span> Get Started!</button>
			<a class="btn btn-outline-light btn-lg" href="login_page.jsp"><span class="fa fa-user-circle fa-spin"></span> Login</a>
		</div>
	</div>
</div>

<!-- CARDS -->

<div class="container">
	<div class="row mb-2">
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
				</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
				</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
				</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
				</div>
			</div>
		</div>
		
		<div class="col-md-4">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Card title</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.7.1.slim.js" 
	integrity="sha256-UgvvN8vBkgO0luPSUl2s8TIlOSYRoGFAX4jlCIm9Adc=" 
	crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" 
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
	crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" 
	crossorigin="anonymous"></script>	
	

<script src="JS/script.js"></script>

</body>
</html>