<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./CSS/SignUp.css">
<link rel="stylesheet" href="./CSS/index.css">
<title>Update User Profile</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-black">
		  <a class="navbar-brand" href="/todoreminder/NotebookJsp">Reminder Application</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  
		   <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		    <div class="navbar-nav">
		      <a class="nav-item nav-link" href="NotebookJsp">Notebooks</a>
		      <a class="nav-item nav-link" href="LogoutServlet">Logout</a>
    		</div>
		  </div>
	</nav>
	
	
	
<form action="UpdateUserProfileJsp" method="post">
  <div class="container">
    <div class="row signrow">
    <h2 class="text-center">Update Profile</h2> 
    <div class="col-lg-3"></div>
	    <div class="col-lg-6">
		  <input type="hidden" value="${user.id }" name="id">
		    <br>
			<label for="name"><b>Name</b></label>
		    <input type="text" placeholder="Enter Name" name="username" required value="${user.username }">
		    
		    <label for="email"><b>Email</b></label>
		    <input type="text" placeholder="Enter Email" name="email" required value="${user.email }">
		    
		    <label for="tel"><b>Phone</b></label>
		    <input type="tel" placeholder="Enter Phone" name="phone" required value="${user.phone }">
		
		    <label for="psw"><b>Password</b></label>
		    <input type="password" placeholder="Enter Password" name="password" required value="${user.password }">
		
		    <button type="submit" class="signupbtn">Update Profile</button><br><br>
		     
		</div>
		
		<div class="col-lg-3"></div>
    </div>
  </div>
</form>

	<nav class="navbar navbar-expand-lg navbar-dark bg-black">
		<div class="container my-auto">
			<div class="col-md-12 foot">
				<h6 class="text-center">All Rights Reserved - Examly</h6>
				
			</div>
		</div>
	</nav>

</body>
</html>