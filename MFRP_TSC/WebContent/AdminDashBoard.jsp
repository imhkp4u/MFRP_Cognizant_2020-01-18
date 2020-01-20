<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminDashBoard</title>
<link rel="stylesheet" type="text/css" href="style/style.css">
<script type="text/javascript" src="js/script.js"></script>
</head>
<body id="register-style">
	<%-- 	<%  response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 
	  		response.setHeader("Pragma","no-cache");
  	%> --%>
	<header id="h1-style">
		<img id="image-style" src="images/book.jpg"> <b>Teacher
			Student Connect</b> <img id="logout-style" src="images/logout.png">
		<a href="Logout" id="home-style">LogOff</a> <a href="AdminDashBoard"
			id="home-style">Home</a>
	</header>
	<section>
		<div class="row">
			<span class="column"> <a id="font-style" href="AddSkills">Add
					skills</a> <a href="AddSkills"><img id="logo-style"
					src="images/insert.png"></a>
			</span> <span class="column"> <a id="font-style"
				href="ShowResourceListAdmin">Resource List</a> <a
				href="ShowResourceListAdmin"><img id="logo-style"
					src="images/insert.png"></a>
			</span> <span class="column"> <a id="font-style" href="AddResource">Add
					resource</a> <a href="AddResource"><img id="logo-style"
					src="images/insert.png"></a>
			</span>

		</div>
		<c:if test="${listStatus}"></c:if>
	</section>
	<footer>Copyright &copy;2019</footer>
</body>
</html>