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
<body>
<div class="container">
<form action="adduser.jsp" method="post">
<div class="form-group">
	<label for="usr">Register No : </label>
	<input type="text" name="regno" class="form-control" id="usr">
</div>
<div class="form-group">
	<label for="usr">First Name : </label>
	<input type="text" name="fname" class="form-control" id="usr">
</div>
<div class="form-group">
	<label for="usr">Last Name : </label>
	<input type="text" name="lname" class="form-control" id="usr">
</div>
<div class="form-group">
	<label for="usr">Date Of Birth : </label>
	<input type="date" name="dob" placeholder="yyyy-mm-dd" class="form-control" id="usr">
</div>
<div class="form-radio">
	 <label for="gender" class="radio-label">Gender :</label>
	 <div class="form-radio-item">
		<input type="radio" name="sex" value="male"  id="male" checked >
		<label for="male">Male</label>
		<span class="check"></span>	
	</div>
	<div class="form-radio-item">
		<input type="radio" name="sex" value="female" id="female" >
		<label for="female">Female</label>
		<span class="check"></span>
	</div>
</div>
<div class="form-group">
	<label for="usr">Phone No : </label>
	<input type="text" name="phno" class="form-control" id="usr">
</div>
<div class="form-group">
	<label for="email">Email Id : </label>
	<input type="email" name="emailid" class="form-control" id="email">
</div>
 <div class="form-row">
	<div class="form-group">
        <label for="country">Country :</label>
		<div class="form-select">
		<select name="country" id="country">
		<option></option>
		<option>India</option>
		<option>USA</option>
		<option>UK</option>
		<option>China</option>
		<option>German</option>
		</select>
		</div>
		<span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
	</div>
</div>
<button type="submit" class="btn btn-primary">Save</button> <button type="reset" class="btn btn-primary" >Reset</button>
</form>
</div>
</body>
</html>