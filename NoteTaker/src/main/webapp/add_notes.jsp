<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="headerlinks.jsp" %>
<title>Note Taker : Add Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp" %>
		<br>
		
		<h1>Please fill your Note details</h1>
		<br>
		
		<form action="SaveNoteServlet" method="post">
		  <div class="mb-3">
		    <label for="exampleInputTitle" class="form-label">Note Title</label>
		    <input type="text" name="title" class="form-control" id="title" placeholder="Enter Here" required aria-describedby="emailHelp">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputContent" class="form-label">Note Content</label>
		    <textarea id="content" name="content" class="form-control" required placeholder="Enter your content here"
		    style="height: 250px;"></textarea>
		  </div>
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-primary" style="min-width:140px;">Save Your Note</button>
		  </div>
		</form>
	</div>
</body>
</html>