
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>users panel</title>
<p align=center> ** please enter your unique ID number to know your details ** </p>


    <style type="text/css">
		
		body{
			background-image:url('https://images.unsplash.com/photo-1507738978512-35798112892c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80');
			background-size: cover;
			background-attachment: fixed;
		}

	   p{
			font-size: 25px;
			color: black;
		}

	</style>


</head>

<body>
<div align="center">
<form action="myServlet" method="post">
Enter Your ID Number &nbsp <input type="text" name="idNumber" placeholder=" your ID here">
<input type="submit" value=" enter ">
</form>
</div>
<!-- <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js"></script>
<script src="script.js"></script> -->
</body>
</html>

