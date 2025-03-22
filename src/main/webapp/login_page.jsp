<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

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


  <main class="d-flex align-item-center primary-background banner-background" style="padding-top:13vh; padding-bottom:10vh;">
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header primary-background text-white text-center">
					<span class="fa fa-user-circle fa-2x"></span><br>
						<p>Login Here</p>
					</div>
					
					<div class="card-body">
						<form action="LoginServlet" method="POST">
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input name="email" required="required" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input name="password" required="required" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
							  </div>
							  
							  <div class="container text-center">
							  	<button type="submit" class="btn primary-background text-white m-1">Submit</button>
							  </div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>  
  </main>


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