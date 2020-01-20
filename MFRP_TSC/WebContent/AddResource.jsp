<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Resource</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script type="text/javascript" src="js/script.js"></script>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
	%>
	<header id="h1-style">
		<img id="image-style" src="images/book.png"><b> Teacher
			Student Connect </b><img id="logout-style" src="images/logout.jpg">
		<a href="Logout" id="home-style">LogOff</a> <a href="AdminDashBoard"
			id="home-style">Home</a>
	</header>
	<br>
	<section>
		<form id="form-style" name="editResource"
			onsubmit="return validateResource()" method="POST"
			action="EditAdminResource">
			<h1 align="center">Add Resource</h1>
			<c:if test="${addResourceStatus}">
				<p>
					<b>Your details are submitted successfully</b>
				</p>
			</c:if>
			<c:if test="${!skillStatus}">
				<p>
					<b>Skill does not exist</b>
				</p>
			</c:if>
			<label for="resourceCode">Resource Code</label> <input type="text"
				name="resourceCode" placeholder="Resource Code"> <label
				for="resourceDescription">Resource Description</label>
			<textarea placeholder="Enter Description here" rows="5" cols="38"
				name="resourceDescription"></textarea>
			<label for="skills">Skills</label> <select name="skills"
				placeholder="Skills">
				<c:forEach items="${skillList}" var="skills">
					<option value="${skills.skillName}">${skills.skillName}</option>
				</c:forEach>
			</select> <input type="submit" id="button-style" name="submit" value="Add">
			<input type="button" id="button-style"
				onClick="location.href='AdminDashBoard'" value="Cancel" />
		</form>
	</section>
	<footer>Copyright &copy;2019</footer>
</body>
</html>