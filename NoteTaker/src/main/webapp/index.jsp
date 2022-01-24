<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

 	<%@include file="headerlinks.jsp" %>
    <title>Note Taker : Home Page</title>
  </head>
  <body>
	
	<div class="container">
		<%@include file="navbar.jsp" %>
		<br>
		
		<div class="card p-4">
		<img alt="home page image" src="images/notes.png" class="img-fluid mx-auto" style="max-width:300px" />
		<h2 class="text-primary text-uppercase text-center mt-5">Start Taking your notes</h2>
		<div class="container text-center">
			<a class="btn btn-outline-primary" href="add_notes.jsp" style="min-width:140px;">Start Here</a>
		</div>
		</div>
	</div>

    
  </body>
</html>