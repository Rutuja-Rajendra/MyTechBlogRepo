<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>

<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" 
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" 
	crossorigin="anonymous">
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
<link rel="stylesheet" type="text/css" href="CSS/style.css">

<style type="text/css">
	.banner-background
	{
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 92%, 70% 100%, 11% 91%, 0 95%, 0 0);	}
	.form-group
	{
		margin:0;
		padding:2px;
	}
	.card-header
	{
		height: 70px;
	}
	
</style>

</head>
<body>

<!-- NAVBAR -->
<%@include file = "normal_navbar.jsp" %>

<main class="d-flex align-item-center primary-background banner-background pt-3">
	<div class="container pb-5" >
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card" style="font-size:15px;">
					<div class="card-header primary-background text-white text-center">
					<span class="fa fa-user-circle fa-2x"></span><br>
						<p>Register Here</p>
					</div>
					
					<div class="card-body" >
						<form id="reg-form" method="POST">
							<div class="form-group">
							    <label for="exampleInputUsername">User Name</label>
							    <input name="user_name" type="text" class="form-control" id="exampleInputUsername" placeholder="Enter username">
							   </div>
							  <div class="form-group">
							    <label for="exampleInputEmail1">Email address</label>
							    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
							    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
							  </div>
							  <div class="form-group">
							    <label for="exampleInputPassword1">Password</label>
							    <input name="password"type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
							  </div>
							  <div class="form-group">
							    <label for="exampleInputGender">Select Gender</label><br>
							    <input type="radio" id="genderMale" name="gender" value="male">Male
							    <input type="radio"   id="genderFemale" name="gender" value="female">Female
							  </div>
							  <div class="form-group">
							  	<textarea name= "about" class="form-control" rows="3" placeholder="Enter something about yourself..."></textarea>
							  </div>  
							  <div class="form-check">
							    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
							    <label class="form-check-label" for="exampleCheck1">agree terms and condition</label>
							  </div>
							  <br>
							  <div class="container text-center" id="loader" style="display:none;">
							  	<span class="fa fa-spinner fa-spin fa-2x " ></span>
							  	<p><b>Please wait...</b></p>
							  </div>
							  <button id="submit-btn" type="submit" class="btn primary-background text-white m-1">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>  
  </main>



<!-- JavaScript -->
	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" 
	crossorigin="anonymous"></script>	

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>	

<script src="JS/script.js" defer></script>



</body>
</html>