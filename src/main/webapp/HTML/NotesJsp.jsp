<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Todo Application</title>
<link rel="stylesheet" href="./CSS/index.css">
<link rel="stylesheet" href="./CSS/Notes.css">
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
		      <a class="nav-item nav-link" href="AddNotesJsp?notebookId=${notebookId}">New Note</a>
		      <a class="nav-item nav-link" href="NotebookJsp">Notebooks</a>
		      <a class="nav-item nav-link" href="UpdateUserProfileJsp">Edit Profile</a>
		      <a class="nav-item nav-link" href="LogoutServlet">Logout</a>
		    </div>
		  </div>
	</nav>

        <div class="container mt-3 mb-3" style="text-align: center; height:76vh;"> 
            <h3 style="color: black;"> 
                Notes
            </h3> 
   	
   			<c:forEach items="${notes}" var="note">
			<div class="row mt-4 mb-4"> 
				<div class="card">
					<div class="row"> 
						<div class="col-md-3">
							<div class="card-body"> 
								<h2 class="card-title">${note.title}</h2>
								<p class="card-text">" ${note.description} "</p>
							</div>
						</div>

						<div class="col-md-4">
							<div class="card-body"> 
								
								<p class="card-text"><b>Start date - &nbsp; &nbsp; &nbsp; &nbsp;</b>
								<fmt:formatDate value="${note.sDate}" pattern="dd-MM-yyyy"/>
								</p>
								
								<p class="card-text"><b>Reminder date - </b>
								<fmt:formatDate value="${note.rDate}" pattern="dd-MM-yyyy"/>
								</p>
								
								<p class="card-text"><b>End date - &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </b>
								<fmt:formatDate value="${note.eDate}" pattern="dd-MM-yyyy"/>
								</p>	
							</div>
						</div>
										
						<div class="col-md-3">
							<div class="card-body"> 
								<p class="card-text"><b>Status - </b> ${note.status}</p>
								<p class="card-text"><b>Tag - </b> ${note.tag}</p>  
							</div>
						</div>

						<div class="col-md-2">
							<div class="card-body">
								<a href="AddNotesJsp?notebookId=${notebookId}&noteId=${note.id}" class="card-link">Edit</a>
		               
		                        <a href="DeleteNotesServlet?noteId=${note.id}" class="card-link">Delete</a> 
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
 
 