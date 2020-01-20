<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>AdminRegister</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script type="text/javascript" src="js/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<header id="h1-style">
		<img id="image-style" src="images/book.jpg"> <b>Teacher
			Student Connect</b>

	</header>

	<script type="text/javascript" src="js/script.js"></script>
	<form id="form-style" name="admin" method="post"
		onsubmit="return validateAdmin()" id="register-style"
		action="AdminRegistration">
		<c:if test="${registrationStatus}">
			<p>
				<b> Your details are submitted successfully</b>
			</p>
		</c:if>
		<h1 align="center">Register</h1>
		<p align="center">Please fill in this form to create an account.</p>

		<label for="firstName"><b>First Name</b></label> <input type="text"
			placeholder="First Name" name="firstName"> <label
			for="lastName"><b>Last Name</b></label> <input type="text"
			placeholder="Last Name" name="lastName"> <label for="age"><b>Age</b></label>
		<input type="number" placeholder="Age" name="age"> <label
			for="gender"><b>Gender</b></label> <select name="gender">
			<option value="Male">Male</option>
			<option value="Female">Female</option>
		</select> <label for="contact"><b>Contact Number</b></label> <input
			type="text" placeholder="Contact" name="contact"> <label
			for="adminId"><b>AdminId</b></label> <input type="text"
			placeholder="AdminId" name="adminId"> <label for="password"><b>Password</b></label>
		<input type="password" placeholder="password" name="password">

		<input type="submit" id="button-style" name="submit" value="Register">
		<input type="button" id="button-style" onClick="location.href='Login'"
			value="Cancel" />
		<p align="center">
			Already have an account? <a href="Login.jsp">Sign in</a>.
		</p>

	</form>


</body>
</html>