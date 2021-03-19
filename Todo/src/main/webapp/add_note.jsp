<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add_Memories</title>
  <%@include file="alljs_css.jsp" %>
</head>
<body>
  <div class="container-fluid m-0 p-0">
  
  <%@include file="navbar.jsp" %>
  
 
  <!-- this is add form  -->
   
	<form class="container" action="SaveNoteServlet" method="post">
	 <h1>Add your Memories </h1>
	 <br>
  <div class="mb-3 " >
    <label for="title" class="form-label">Memory Title</label>
    <input name="title" type="text" required class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter your memory title" >
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Memory Content</label>
    <textarea name="content" id="content" required placeholder="Enter your content here" class="form-control" style="height:200px;" ></textarea>
  </div>
  <div class="container text-center">
  		<button type="submit" class="btn btn-primary">Add Memory</button>
  </div>
 
  

</form>  
  </div>
	

</body>
</html>