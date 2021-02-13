<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo Application</title>
<link rel="stylesheet" href="./CSS/index.css">
<link rel="stylesheet" href="./CSS/Notebook.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-black" style="justify-content:space-between">
		  <a class="navbar-brand" href="/todoreminder/NotebookJsp">Reminder Application</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  
		<div class="d-flex" >
		
		 <div class="collapse navbar-collapse" id="navbarSupportedContent" style="flex-basis:unset; flex-grow:0">
              <ul class="nav nav-pills mr-auto justify-content-end">
               
                <li class="nav-item dropdown">
                  <a class="nav-link text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fa fa-bell"></i>
                  </a>
                
                    <ul class="dropdown-menu">
                      <li class="head text-light bg-dark">
                      	<span>Notifications <c:if test="${notes.size() > 0 }">(${notes.size()})</c:if></span>                        
                      </li>
                      
                      <li class="notification-box">
                      <c:forEach items="${notes}" var="note">
                        <div class="row">
                            <div class="col-lg-12 col-sm-12 col-12 text-center">
                              <strong class="text-info">${note.title}</strong> &nbsp; &nbsp; in &nbsp; ${note.notebook.name } <hr>
                        	</div>    
                        </div>
                        </c:forEach>
                      </li>
                    </ul>
                </li>
              </ul>
            </div>
		  
		  <div class="" id="navbarNavAltMarkup" style="min-width: 400px;">
		    <div class="navbar-nav">
	          <a class="nav-item nav-link" href="AddNotebookJsp">New Notebook</a>
		      <a class="nav-item nav-link" href="UpdateUserProfileJsp">Edit Profile</a>
		      <a class="nav-item nav-link" href="LogoutServlet">Logout</a>
		    </div>
		  </div>
		</div>
		 
		  
	</nav>
      
        <div class="container mt-3 mb-3" style="text-align: center; height:76vh;"> 
            <h3 style="color: black;"> 
            <br>
                Notebooks
            </h3> 
            
   			<c:forEach items="${notebooks}" var="notebook">
   			<div class="notebook mt-3 mb-3"> 
					<div class="card">
							<div class="row">
							<div class="col-md-6">
								<div class="card-body"> 
									<h5 class="card-title">
									${notebook.name}
									</h5>
								</div>
							</div>
							
							<div class="col-md-6">
								<div class="card-body"> 
									<a href="NotesJsp?notebookId=${notebook.id}" class="card-link">View</a> 
								
			                        <a href="DeleteNotebookServlet?notebookId=${notebook.id}" class="card-link">Delete</a> 
								</div>
							</div>
							</div>	
					</div>
			</div>
			</c:forEach>
		</div>     
    
    
    
<nav class="navbar navbar-expand-lg navbar-dark bg-black">
	<div class="container my-auto">
		<div class="col-md-12 foot">
			<h6 class="text-center">All Rights Reserved - Examly</h6>
			
		</div>
	</div>
</nav>
	
</body>
</html>
 
 