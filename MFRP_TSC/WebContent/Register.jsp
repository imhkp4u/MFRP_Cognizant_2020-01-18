<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script type="text/javascript" src="js/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<header id="h1-style">
		<img id="image-style" src="images/book.jpg"> <b>Teacher
			Student Connection</b>
	</header>
	<c:if test="${registrationStatus}">
				
					 New user created successfully
				
			</c:if>

	<form id="form-style" name="register"
		onsubmit="return validateRegistration()" action="UserRegistration"
		method="post" enctype="multipart/form-data">

		<h1 align="center">Register</h1>
		<p align="center">Please fill this form to create an Account</p>

		<label for="fname"><b>First Name</b></label> <input type="text"
			placeholder="First Name" name="fname" max="50"> <label
			for="lname"><b>Last Name</b></label> <input type="text"
			placeholder="Last Name" name="lname" max="50"> <label
			for="age"><b>Age</b></label> <input type="text" placeholder="Age"
			name="age"> <label for="gender"><b>Gender</b></label> <select
			name="gender">
			<option value="Male">Male</option>
			<option value="Female">Female</option>
		</select> <label for="contact"><b>Contact Number</b></label> <input type="text"
			placeholder="contact Number" name="contact"> <label
			for="category"><b>Category</b></label> <select name="category"
			required>
			<option></option>
			<option value="Teacher">Teacher</option>
			<option value="Student">Student</option>
		</select> <label for="user"><b>User</b></label> <input type="text"
			placeholder="User Name" name="user"> <label for="password"><b>Password</b></label>
		<input type="password" placeholder="password" name="password">

		<input type="file" name="file"> <input type="submit"
			id="button-style" name="submit" value="Register"> <input
			type="button" id="button-style" onclick="location.href='Login'"
			value="Cancel" />

		<p align="center">
			Already Have an account? <a href="Login.jsp">Sign in</a>
		</p>
	</form>

</body>
</html>