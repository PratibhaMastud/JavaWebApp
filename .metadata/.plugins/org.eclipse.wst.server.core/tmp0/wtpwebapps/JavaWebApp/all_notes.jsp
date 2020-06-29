<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.factoryProvider"%>
<%@page import="org.hibernate.Session" %>
<%@page import="com.entites.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes:Note Taker</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
<div class="container" style="background:#00ffff">

	<%@include file="navbar.jsp" %>
	<br>
	<h1 class="text-uppercase">All Notes:</h1>
	<div class="row">
		<div class="col-12">
		<%
		Session s=factoryProvider.getFactory().openSession();
		Query q=s.createQuery("from Note");	 
		List<Note> list=q.list();
		for(Note n:list)
		{
		%>	
	<div class="card mt-3">
	
  		<div class="card-body" style="background:#c0c0c0">
		<h3 class="card-title"><%=n.getTitle() %></h3>
		<h7 class="card-title"><%=n.getDate() %></h7>
   		 <p class="card-text">
   		 	<%=n.getContent() %>
   		 </p>
   		 
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