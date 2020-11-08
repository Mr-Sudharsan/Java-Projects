<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Login Form..</title>
</head>
<body >
<div class="container">
<form action="LoginValidation.jsp" method="post">
<div class="form-group">
	<label>Register No   : </label>
	<input type="text" name="regno" class="form-control" id="usr">
</div>
<div class="form-group">
	<label for="usr">Date Of Birth : </label>
	<input type="date" name="dob" placeholder="yyyy-mm-dd" class="form-control" id="usr">
</div>
<button type="submit" class="btn btn-primary">Login</button>
</form>
</div>
</body>
</html>