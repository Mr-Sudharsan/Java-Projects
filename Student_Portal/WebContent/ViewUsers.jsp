<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<%@page import="com.mrsudharsan.dao.UserDao,com.mrsudharsan.bean.UserBean,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Students List</h1>

<%
List<UserBean> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>

<table class="table table-bordered">
<tr><th>Register No</th><th>Name</th><th>Date of birth</th><th>Sex</th><th>Phone Number</th><th>Email Id</th><th>Country</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getRegno()}</td><td>${u.getFname()} ${u.getLname()}</td><td>${u.getDob()}</td><td>${u.getSex()}</td><td>${u.getPhno()}</td><td>${u.getEmailid()}<td>${u.getCountry()}</td><td><a href="EditForm.jsp?regno=${u.getRegno()}">Edit</a></td><td><a href="DeleteUser.jsp?regno=${u.getRegno()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="Adduserform.jsp"><input type="button" value="Add New User" class="btn btn-primary"></a><br>
<br><a href="Index.jsp"><input type="button" value="Home" class="btn btn-primary"></a>
</body>
</html>
