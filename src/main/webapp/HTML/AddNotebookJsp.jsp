<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo Application</title>
<link rel="stylesheet" href="./CSS/index.css">
<link rel="stylesheet" href="./CSS/AddNotebook.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
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
	
	<form method="POST">
 		<div class="container mt-5 mb-5" style="text-align: center; height:65vh;"> 
            <h3 style="color: black;"> 
                <br><br>Add Notebook<br><br>
            </h3> 
   	
			<div class="form-group row mt-2">
			  <label for="example-text-input" class="col-md-3 col-form-label"><b>Name of Notebook</b></label>
			  <div class="col-md-6">
			    <input class="form-control" type="text" placeholder="Enter Title" name="name" id="example-text-input" required>
			  </div>
			</div>	
			<input type="submit" value="Add NoteBook" class="btn btn-dark mt-5 mb-5"/>
        </div> 
	</form>
       
    
	<nav class="navbar navbar-expand-lg navbar-dark bg-black mt-3">
		<div class="container my-auto">
			<div class="col-md-12 foot">
				<h6 class="text-center">All Rights Reserved - Examly</h6>
			</div>
		</div>
	</nav>
	
</body>
</html>
 
 