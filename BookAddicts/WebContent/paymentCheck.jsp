<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>users panel</title>


    <style type="text/css">
		
		body{
			background-image:url('background1.jpg');
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
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
<p>ENTER YOUR CARD NUMBER TO CHECK YOUR PAYMENTS</p>
&nbsp;
&nbsp;
<form action="paymentCheckServlet" method="post">
Enter Your card number  &nbsp <input type="number" name ="cardNumber" placeholder=" your number here">
<input type="submit" value=" enter ">
</form>
</div>
<!--  
<script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js"></script>
<script src="script.js"></script> -->
</body>
</html>