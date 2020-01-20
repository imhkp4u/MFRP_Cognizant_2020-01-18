<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>AddSkills</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script type="text/javascript" src="js/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>

	<%-- <% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	response.setHeader("Pragma","no-cache");
%> --%>
	<header id="h1-style">
		<img id="image-style" src="images/book.jpg"> <b>Teacher
			Student Connect</b> <img id="logout-style" src="images/logout.png">
		<a href="logout" id="home-style">Logoff</a> <a href="AdminDashBoard"
			id="home-style">Home</a>
	</header>
	<section>
		<form id="form-style" name="addSkillsForm"
			onsubmit="return validateAddSkills()" action="EditAdminSkills"
			method="POST">
			<h1 align="center">Add Skills</h1>
			<c:if test="${exist}">
				<h3>Skill already exists</h3>
			</c:if>
			<c:if test="${addSkillStatus}">
				<h3>Your details are submitted successfully</h3>
			</c:if>

			<label for="resourceCode"><b>Resource Code</b></label> <input
				type="text" placeholder="Resource Code" name="resourceCode">

			<label for="resourceDescription"><b>Resource Description</b></label>
			<textarea type="text" placeholder="Enter the description"
				name="resourceDescription" rows="10" cols="38"></textarea>

			<label for="skills"><b>Skills</b></label> <input type="text"
				placeholder="Skill" name="skills"> <label
				for="competencyLevel"><b>Competency level</b></label> <input
				type="text" placeholder="Competency Level" name="competencyLevel">
			<label for="intendedAudience"><b>Intended Audience</b></label> <input
				type="text" placeholder="Competency Level" name="intendedAudience">

			<input id="button-style" type="submit" name="submit" value="Submit">
			<input type="button" id="button-style"
				onClick="location.href='AdminDashBoard'" value="Cancel" />
			<!-- is used to set or return the complete URL of the current page. -->

		</form>
	</section>
	<footer> Copyright &copy; 2019 </footer>
</body>
</html>