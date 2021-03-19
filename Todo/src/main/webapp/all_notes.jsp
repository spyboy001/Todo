<%@page import="java.util.List"%>
<%@page import="com.entities.*" %>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Memories :My Memories</title>
<%@include file="alljs_css.jsp" %>
</head>
<body>
<div class="container-fluid m-0 p-0">
<%@include file="navbar.jsp" %>
<br>
</div>
<div class="container">
<h1>All Memories</h1>
<div class"row">
<div class="col-12">

<%
Session s=FactoryProvider.getFactory().openSession();
Query q=s.createQuery("from Todo");
List<Todo> list=q.list();
for(Todo todo: list)
{
	%>
	<div class="card mt-3" >
  <img src="img/todo.png" class="card-img-top p-2" style="max-width:100px;"alt=" card image cap">
  <div class="card-body">
    <h5 class="card-title"><%= todo.getTitle() %></h5>
    <p class="card-text"><%= todo.getContent() %></p>
    <p><b><%= todo.getAddedDate() %></b></p>
    <a href="DeleteServlet?todo_id=<%= todo.getId() %>" class="btn btn-danger">Delete</a>
        <a href="edit.jsp?todo_id=<%= todo.getId() %>" class="btn btn-primary">Update</a>
    
  </div>
</div>
	<% 
	
}
s.close();

%>


</div>
</div>



</div>
</body>
</html>