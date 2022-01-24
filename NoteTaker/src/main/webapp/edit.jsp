<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.*"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="headerlinks.jsp" %>

<title>Note Taker : Edit Your Note</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp" %>
		<br>
		
		<h1>Edit your note</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim()) ;
		Session s = FactoryProvider.getFactory().openSession() ;
		Note note = s.get(Note.class, noteId) ;
		%>
		
		<form action="UpdateServlet" method="post">
			<input value="<%=note.getId() %>" name="noteId" type="hidden" />
		  <div class="mb-3">
		    <label for="exampleInputTitle" class="form-label">Note Title</label>
		    <input type="text" name="title" class="form-control" id="title" placeholder="Enter Here" required aria-describedby="emailHelp"
		     value="<%= note.getTitle() %>" />
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputContent" class="form-label">Note Content</label>
		    <textarea id="content" name="content" class="form-control" required placeholder="Enter your content here"
		    style="height: 250px;" ><%= note.getContent() %> </textarea>
		  </div>
		  <div class="container text-center">
		  	<button type="submit" class="btn btn-success">Update Your Note</button>
		  </div>
		</form>
	</div>
</body>
</html>