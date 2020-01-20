<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>DisplayStudentDetails</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script type="text/javascript" src="js/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
	%>
	<header id="h1-style">
		<img id="image-style" src="images/book.jpg"> <b>Teacher
			Student Connection</b> <img id="logout-style" src="image/logout.png">
		<a href="logout" id="home-style">Logoff</a> <a href="UserDashBoard"
			id="home-style">Home</a>
	</header>
	<section>
		<form>
			<h1 align="center">Student Details</h1>
			<table id="table-style">
				<tr>
					<td><label for="studentName">Student Name</label></td>
					<td>: <c:out value="${student.studentName}" /></td>
				</tr>

				<tr>
					<td><label for="specialization">Specialization</label></td>
					<td>: <c:out value="${student.specialization}" /></td>
				</tr>

				<tr>
					<td><label for="batch">Batch</label></td>
					<td>: <c:out value="${student.batch}" /></td>
				</tr>

				<tr>
					<td><label for="noOfDocuments">No Of Documents</label></td>
					<td>:<a href="status.jsp"> <c:out
								value="${student.noOfDocuments}" /></a></td>
				</tr>
			</table>
		</form>
	</section>
	<footer>
		<p>Copyright &copy; 2019</p>
	</footer>

</body>
</html>