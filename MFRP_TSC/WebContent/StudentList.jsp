<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>StudentList</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<style>
th, td {
	padding: 5px;
}
</style>
<script type="text/javascript" src="js/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>


	<header id="h1-style">

		<img id="image-style" src="images/book.jpg"> <b> Teacher
			Student Connect </b> <img id="logout-style" src="images/logout.png">
		<a href="" id="home-style">LogOff</a> <a href="#" id="home-style">Home</a>

	</header>
	<section>
		<c:if test="${studentStatus}">

			<form name="section" method="get" action="StudentDetailsSort">
				<select name="sort">
					<option value="namea-z">Sort by Name(A to Z)</option>
					<option value="namez-a">Sort by Name(Z to A)</option>
					<option value="batcha-z">Sort by batch</option>
					<option value="batchz-a">Sort by batch</option>
				</select>


				<table id="table-style">
					<tr>
						<th><label for="studentName">Student Name</label></th>
						<th><label for="studentSpl">Specialization</label></th>
						<th><label for="Batch">Batch</label></th>
						<th><label for="noOfDocuments">No.of Documents</label></th>

					</tr>
					<c:forEach items="${studentList}" var="student">
						<tr style="padding: 20px">
							<c:url value="/DisplayStudentDetails" var="url">
								<c:param name="studentId" value="${student.studentId}" />
							</c:url>
							<td align="center"><a href="${url}" class="action">${student.studentName}</a></td>
							<td align="center">${student.specialization}</td>
							<td align="center">${student.batch}</td>
							<td align="center"><a href="#" class="action">${student.noOfDocuments}</a></td>

						</tr>

					</c:forEach>
				</table>
			</form>
		</c:if>

	</section>
	<footer> Copyright &copy; 2019 </footer>
</body>
</html>