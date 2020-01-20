<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>UserDashBoard</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script type="text/javascript" src="js/script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%  response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 
	  		response.setHeader("Pragma","no-cache");
  		 %>
	<!-- Preventing caching of jsp files.cache may have problem to get the latest result of dynamic web pages -->
	<script type="text/javascript" src="js/script.js"></script>

	<header id="h1-style">
		<img id="image-style" src="images/book.jpg"> <b>Teacher
			Student Connect</b> <img id="logout-style" src="images/logout.png">
		<a href="Logout" id="home-style">LogOff</a> <a href="UserDashBoard"
			id="home-style">Home</a>
	</header>
	<section>
		<div class="row">
			<span class="column"> <a id="font-style" href="SkillSelction">List
					Skills</a> <a href="SkillSelction"><img id="logo-style"
					src="images/insert.png"></a>

			</span> <span class="column"> <a id="font-style"
				href="ShowResourceListUser">Resource List</a> <a
				href="ShowResourceListUser"><img id="logo-style"
					src="images/insert.png"></a>

			</span> <span class="column"> <a id="font-style"
				href="ShowUserAdvanceSearch">Advanced Search</a> <a
				href="ShowUserAdvanceSearch"><img id="logo-style"
					src="images/insert.png"></a>

			</span> <span class="column"> <a id="font-style"
				href="ShowSubmitNewResource">Submit New Resource</a> <a
				href="ShowSubmitNewResource"><img id="logo-style"
					src="images/insert.png"></a>

			</span>

		</div>

		<c:if test="${showResourceListStatus}">
			<h1>Resource List</h1>
			<div class="row">
				<span class="column"> <a id="font-style"
					href="UserResourceList">Document</a> <a href="UserResourceList"><img
						id="logo-style" src="images/insert.png"></a>
				</span> <span class="column"> <a id="font-style"
					href="DisplayTeacherList">Teacher</a> <a href="DisplayTeacherList"><img
						id="logo-style" src="images/insert.png"></a>
				</span> <span class="column"> <a id="font-style" href="StudentList">Student</a>
					<a href="StudentList"><img id="logo-style"
						src="images/insert.png"></a>
				</span>

			</div>
			<c:if test="${documentStatus}">

				<form name="section" id="form-style" action="UserDocumentSort"
					method="get">
					<select name="sort">
						<option value="yeara-z">Sort by Year (Newest First)</option>
						<option value="yearz-a">Sort by Year (Oldest First)</option>
						<option value="titlea-z">Sort by Title (A to Z)</option>
						<option value="titlez-a">Sort by Title (Z to A)</option>
						<option value="authora-z">Sort by Author (A to Z)</option>
						<option value="authorz-a">Sort by Author (Z to A)</option>
						<option value="subjecta-z">Sort by Subject (A to Z)</option>
						<option value="subjectz-a">Sort by Subject (Z to A)</option>
					</select> <input type="submit" value="submit" />
				</form>
				<table id="table-style">
					<tr>
						<th><label for="title">Document Title</label></th>
						<th><label for="author">Author</label></th>
						<th><label for="subject">Subject</label></th>
						<th><label for="year">Year</label></th>
						<th><label for="cover">File</label></th>
					</tr>

					<c:forEach items="${documentList}" var="document">

						<tr>
							<td align="center">${document.title}</td>
							<td align="center">${document.author}</td>
							<td align="center">${document.subject }</td>
							<td align="center">${document.year }</td>
							<td align="center"><a
								href="Download?fileName=${document.filePath}" class="action">Click</a></td>
						</tr>
						<tr></tr>
					</c:forEach>

				</table>

			</c:if>
			<c:if test="${teacherStatus}">

				<form name="form" id="form-style" action="SortingTeacherList"
					method="get">
					<select name="sort">
						<option value="nameA-Z">Sort by Name (A to Z)</option>
						<option value="nameZ-A">Sort by Name (Z to A)</option>
						<option value="specializationA-Z">Sort by Specialization
							(A to Z)</option>
						<option value="specializationZ-A">Sort by Specialization
							(Z to A)</option>
					</select> <input type="submit" value="submit">
				</form>

				<table id="table-style">
					<tr>
						<th>Image</th>
						<th><label for="title">Name</label></th>
						<th><label for="author">Specialization</label></th>
						<th><label for="subject">Schedule</label></th>
						<th><label for="year">Number of students</label></th>
						<th><label for="cover">Planned Leaves</label></th>
						<th><label for="cover">Link</label></th>
					</tr>

					<c:forEach items="${teacherList}" var="teacher">

						<tr>
							<td><img src="data:image/jpg;base64,${teacher.imageCode}"
								width="120" height="120" /></td>
							<td align="center">${teacher.name}</td>
							<td align="center">${teacher.specialisation}</td>
							<td align="center"><a
								href="DisplayTeacherClasses?teacherId=${teacher.id}"
								target="_blank"> Assigned Classes</a></td>
							<td align="center">${teacher.noOfStudents}</td>
							<td align="center">${teacher.plannedLeaves}</td>
							<td align="center"><a
								href="DisplayTeacherProfile?teacherId=${teacher.id}"
								target="_blank">Details</a></td>
						</tr>

					</c:forEach>

				</table>
			</c:if>

			<c:if test="${studentStatus}">
				<form name="section" id="form-style" method="get"
					action="StudentDetailsSort">
					<select name="sort">
						<option value="namea-z">Sort by Name(A to Z)</option>
						<option value="namez-a">Sort by Name(Z to A)</option>
						<option value="batcha-z">Sort by batch(Oldest First)</option>
						<option value="batchz-a">Sort by batch(Newest First)</option>
					</select> <input type="submit" value="submit">
				</form>

				<table id="table-style">
					<tr>
						<th>Image</th>
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
							<td><img src="data:image/jpg;base64,${student.imageCode}"
								width="120" height="120" /></td>
							<td align="center"><a href="${url}" target="_blank"
								class="action">${student.studentName}</a></td>
							<td align="center">${student.specialization}</td>
							<td align="center">${student.batch}</td>
							<td align="center"><a href="#" class="action">${student.noOfDocuments}</a></td>

						</tr>

					</c:forEach>
				</table>
			</c:if>
		</c:if>

		<c:if test="${advanceSearchStatus}">

			<form name="advanceSearch" id="form-style"
				onsubmit="return validateAdvanceSearch()" action="UserAdvanceSearch"
				method="POST">

				<label for="keyword">Keyword Search</label> <input type="text"
					name="keyword" placeholder="Keyword"> <label for="title">Title</label>
				<input type="text" name="title" placeholder="Title"> <label
					for="author">Author</label> <input type="text" name="author"
					placeholder="Author"> <label for="subject">Subject</label>
				<input type="text" name="subject" placeholder="Subject"> <label
					for="year">Year</label> <input type="text" name="year"
					placeholder="Year"> <input type="submit" id="button-style"
					name="submit" value="Submit"> <input type="button"
					id="button-style" onClick="location.href='UserDashBoard'"
					value="Cancel" />

			</form>

			<c:if test="${searchStatus}">
				<table id="table-style">
					<tr>
						<th><label for="title">Document Title</label></th>
						<th><label for="author">Author</label></th>
						<th><label for="subject">Subject</label></th>
						<th><label for="year">Year</label></th>

					</tr>

					<c:forEach items="${userSearchList}" var="document">
						<tr style="padding: 20px">
							<td align="center">${document.title}</td>
							<td align="center">${document.author}</td>
							<td align="center">${document.subject }</td>
							<td align="center">${document.year }</td>
							<td align="center"><a
								href="Download?fileName=${document.filePath}">Download</a></td>
						</tr>

					</c:forEach>
				</table>
			</c:if>

		</c:if>


	</section>
	<footer> Copyright &copy; 2019 </footer>
</body>
</html>