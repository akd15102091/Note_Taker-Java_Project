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
<title>Note Taker : All Notes</title>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp" %>
		<br>
		
		<h1 cass="text-uppercase">All Notes :</h1>
		
		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note") ;
				List<Note> list = q.list() ;
				for(Note note:list)
				{
				%>
					<div class="card mt-3">
					  <img src="images/notes.png" style="max-width:90px;" class="card-img-top m-4" alt="card img">
					  <div class="card-body px-5">
					    <h5 class="card-title"><%= note.getTitle() %></h5>
					    <p class="card-text">
					     <%= note.getContent() %>
					    </p>
					    <a href="DeleteServlet?note_id=<%= note.getId() %>" class="btn btn-danger" style="min-width:140px; margin-right:10px;">Delete</a>
					    <a href="edit.jsp?note_id=<%= note.getId() %>" class="btn btn-primary" style="min-width:140px;">Update</a>
					  </div>
					</div>	
				<% 
				}
				s.close() ;
				%>
			</div>
		</div>
		
		
	</div>
</body>
</html>