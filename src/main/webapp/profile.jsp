<%@page import="com.myblog.entities.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page errorPage = "errorPage.jsp" %>
    
<%
	User user = (User)session.getAttribute("CurrentUser");
	
	if(user == null)
	{
		response.sendRedirect("login_page.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Helllo! <%= user.getUsername() %></h1>
	
	<%= user.getId() %><br>
	<%= user.getUsername() %><br>
	<%= user.getEmail() %><br>
	<%= user.getPassword() %><br>
	<%= user.getGender() %><br>
	<%= user.getAbout() %><br>
	<%= user.getReg_date() %>
</body>
</html>