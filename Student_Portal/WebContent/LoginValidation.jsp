<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.mrsudharsan.dao.UserDao "%>

<%
response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
String regno=request.getParameter("regno");
String dob=request.getParameter("dob");
if(UserDao.login(regno,dob))
{
	HttpSession ses=request.getSession();
	ses.setAttribute("user", regno);
	response.sendRedirect("Welcome.jsp");
}
%>
<html>
<body>
	<h4>Login Failed../n Incorrect Register Number or Date of Birth.</h4>
</body>
</html>