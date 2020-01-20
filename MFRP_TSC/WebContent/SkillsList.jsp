<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML>


<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Skills List</title>
<link rel="stylesheet" type="text/css" href="style/style.css">

</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		response.setHeader("Pragma", "no-cache");
	%>
	<header id="h1-style">
		<img id="image-style" src="images/book.png"> <b>Teacher
			Student Connect</b> <img id="logout-style" src="images/logout.jpg">
		<a href="Logout" id="home-style">LogOff</a> <a href="UserDashBoard"
			id="home-style">Home</a>

	</header>
	<section>
		<h1>Skills List</h1>
		<table id="table-style">
			<tr>
				<th>Skill Name</th>
				<th>Skill Level</th>
				<th>Skill Audience</th>
			</tr>
			<c:forEach items="${listSkills}" var="Skill">
				<tr>
					<td><a
						href="ShowUserSkillsResourceList?skillName=${Skill.skillName}">${Skill.skillName}</a></td>
					<td>${Skill.competencyLevel}</td>
					<td>${Skill.intendedAudience}</td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${status == true}">
			<table align="center" width="100%" style="padding: 20px"
				id="table-style">
				<tr>
					<th><label for="resourceCode">Resource Code</label></th>
				</tr>
				<c:forEach items="${resourceList}" var="resource">
					<tr style="padding: 20px">
						<c:url value="/DisplayUserSkillsResource" var="url">
							<c:param name="resourceCode" value="${resource.resourceCode}" />
						</c:url>
						<td align="center"><a href="${url}" class="action">${resource.resourceCode}</a></td>
					</tr>
					<tr></tr>
				</c:forEach>
			</table>
		</c:if>
		<c:if test="${status1 == true}">
			<form>
				<h1 align="center">Resource Details</h1>
				<table id="table-style">
					<tr>
						<td><label for="resourceCode">Resource Code</label></td>
						<td>: <c:out value="${resource.resourceCode}" /></td>
					</tr>
					<tr>
						<td><label for="skills">Skills</label></td>
						<td>: <c:out value="${resource.skills}" /></td>
					</tr>
					<tr>
						<td><label for="resourceDescription">Resource
								Description</label></td>
						<td>: <c:out value="${resource.resourceDescription}" /></td>
					</tr>
				</table>
			</form>
		</c:if>
	</section>
	<footer> Copyright &copy; 2019 </footer>
</body>
</html>