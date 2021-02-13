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
		      <a class="nav-item nav-link" href="NotebookJsp">Notebooks</a>
		      <a class="nav-item nav-link" href="LogoutServlet">Logout</a>
		      
		    </div>
		  </div>
	</nav>
		
		
        <div class="container mt-5 mb-5" style="text-align: center;"> 
            <h3 style="color: black;"> 
                Add Note<br><br>
           </h3> 
            
            
   		<form method="POST">
   			<input type="hidden" name="notebookId" value="${param.notebookId}">
   			<input type="hidden" name="id" value="${note.id}">
			<div class="form-group row mt-2">
			  <label for="title" class="col-2 col-form-label">Title</label>
			  <div class="col-10">
			    <input class="form-control" type="text" placeholder="Enter Title" id="title" name="title" value="${note.title }" required>
			  </div>
			</div>
			
			<div class="form-group row mt-2">
			  <label for="desc" class="col-2 col-form-label">Description</label>
			  <div class="col-10">
			    <input class="form-control" type="text" placeholder="Enter Description" id="desc" name="desc" value="${note.description }" required>
			  </div>
			</div>
			
		   <div class="form-group row mt-2">
			  <label for="s_date" class="col-2 col-form-label">Start Date</label>
			  <div class="col-10">
			    <input class="form-control" type="date" id="s_date" name="s_date" required value='<fmt:formatDate value="${note.sDate}" pattern="yyyy-MM-dd"/>'>
			  </div>
			</div>
			
			<div class="form-group row mt-2">
			  <label for="e_date" class="col-2 col-form-label">End Date</label>
			  <div class="col-10">
			    <input class="form-control" type="date" id="e_date" name="e_date" required value='<fmt:formatDate value="${note.eDate}" pattern="yyyy-MM-dd"/>'>
			  </div>
			</div>
			
			<div class="form-group row mt-2">
			  <label for="r_date" class="col-2 col-form-label">Reminder Date</label>
			  <div class="col-10">
			    <input class="form-control" type="date" id="r_date" name="r_date" required value='<fmt:formatDate value="${note.rDate}" pattern="yyyy-MM-dd"/>'>
			  </div>
			</div>
		
			 
			 
			<div class="form-group row mt-2">
			  <label for="status" class="col-2 col-form-label">Status</label>
			  <div class="col-10">
			    <input class="form-control" type="text" placeholder="Started / Upcoming" id="status" name="status" value="${note.status}" required>
			  </div>
			</div>
			
			<div class="form-group row mt-2">
			  <label for="tag" class="col-2 col-form-label">Tag</label>
			  <div class="col-10">
			    <input class="form-control" type="text" placeholder="Private / Public" id="tag" name="tag" value="${note.tag}" required>
			  </div>
			</div>
			
			<input type="submit" value="Add Notes" class="btn btn-dark mt-3"/>
			<br><br>			
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
</html>
 
 