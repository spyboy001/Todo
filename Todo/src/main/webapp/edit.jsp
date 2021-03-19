<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Todo"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit your Memories</title>
      <%@include file="alljs_css.jsp" %>

</head>
<body>

  <div class="container-fluid p-0 m-0">
  
  <%@include file="navbar.jsp" %>
  
  </div>
  <div class="container">
  <h1>This is Edit Page</h1>
  <%
  int todoId=Integer.parseInt(request.getParameter("todo_id").trim());
  Session s=FactoryProvider.getFactory().openSession();
  Todo todo=(Todo)s.get(Todo.class, todoId);
  
  %>
  
  <!-- this is add form  -->
   
	<form class="container" action="UpdateServlet" method="post">
	<input value=<%= todo.getId() %> name="todoId"  type="hidden">
  <div class="mb-3 " >
    <label for="title" class="form-label">Memory Title</label>
    <input name="title" type="text" required class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter your memory title" value="<%= todo.getTitle() %>">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Memory Content</label>
    <textarea name="content" id="content" required placeholder="Enter your content here" class="form-control" style="height:200px;" ><%= todo.getContent() %></textarea>
  </div>
  <div class="container text-center">
  		<button type="submit" class="btn btn-success">Save Memory</button>
  </div>
 
  

</form>  
  </div>
</body>
</html>