<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
	if(session.getAttribute("user")==null)
	{
	response.sendRedirect("login.html");
	}
%>
 Welcome ${user} 
 <a href="MyDetails.jsp">My Profile</a>
<br><a href="Logout.jsp"><input class="btn btn-primary" type="button" value="LogOut"></a>
</body>
</html>