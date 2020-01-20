<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Submit New Resource</title>
		<link rel="stylesheet" type="text/css" href="style/style.css">
		<script type="text/javascript" src="js/script.js"></script>
	</head>
	<body>
	<%  response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 
	  		response.setHeader("Pragma","no-cache");
  		 %>
		<header id="h1-style"><img id="image-style" src="images/book.png">
		<b>Teacher Student Connect</b>
  		 <img id="logout-style" src="images/logout.jpg">
      	<a href="Logout" id="home-style">LogOff</a>
      	<a href="UserDashBoard" id="home-style">Home</a>  
      	</header>
		<section>
		<form id="form-style" name="submitnewresource" action="SubmitNewResource" method="post"  onsubmit="return validateSubmitNewResource()" enctype="multipart/form-data" >
           <h1>Submit New Resource</h1>
		<label for="title"><b>Title</b></label> 
		<input type="text" placeholder="Title" name="title" max="50">
		<label for="author"><b>Author</b></label> 
		<input type="text" placeholder="Author" name="author" max="50">
	<label for="subject"><b>Subject</b></label>
		<select name="subject">
			<option value="" selected></option>
			<option value="agile">Agile</option>
			<option value="html">HTML</option>
			<option value="css">CSS</option>
		</select>
	<label for="year"><b>Year</b></label>
		<select id="year" name="year">
               
                <%
                    int max = 2019;
                    for(int i = 2000; i<=max; i++)
                    {
                %>
                    <option> <%=i%> </option>
                <%  
                    }
                %>
            </select>
			<input type= "file" name="file" >
			<input type ="submit" id="button-style" value="Submit">
			<input type="button" id="button-style"  onClick="location.href='UserDashBoard'" value="Cancel" />
            </form>
		</section>
		<footer>
			Copyright &copy;2019
		</footer>
	</body>
</html>