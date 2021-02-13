<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="./CSS/Login.css">
<link rel="stylesheet" href="./CSS/index.css">
<title>Login</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-black">
		  <a class="navbar-brand" href="/todoreminder/NotebookJsp">Reminder Application</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
	</nav>
<div class="container">
	<form action="LoginJsp" method="post">
 
    <div class="row loginrow">
    <div class="col-lg-3"></div>
	    <div class="col-lg-6">
		  <h2>Login</h2> 
		  <p class= "text-danger text-center">${error}</p>
		  <hr>
		
		    <label for="email"><b>Email</b></label>
		    <input type="email" placeholder="Enter Email" name="email" required>
		    
		    <label for="password"><b>Password</b></label>
		    <input type="password" placeholder="Enter Password" name="password" required>
		    
		    <button type="submit">Login</button>
		    <a href="SignUpJsp">Not a Member? Sign Up</a>
		</div>
		<div class="col-lg-3"></div>
    </div>
    </form>
</div>


	<nav class="navbar navbar-expand-lg navbar-dark bg-black">
		<div class="container my-auto">
			<div class="col-md-12 foot">
				<h6 class="text-center">All Rights Reserved - Examly</h6>
				
			</div>
		</div>
	</nav>

</body>

<script>

</script>
</html>