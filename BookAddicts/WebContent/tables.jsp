<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Database Panel</title>
<head>
<style>
#button1 {
	width: 300px;
	height: 40px;
}

#button2 {
	width: 300px;
	height: 40px;
}

</style>

</head>


<body>
  <style type="text/css">
		
		body{
			background-image:url('background2.jpg');
			background-size: cover;
			background-attachment: fixed;
		}
		</style> 

	 <center>
		<h1>PLEASE SELECT THE TABLE YOU WANT TO VIEW</h1>


		<form action="DataFetching" method="post">
			<input type="submit" value="BOOKS">
		</form>
		&nbsp;
		<form action="editTable.jsp" method="post">
			<input type="submit" value="Insert Books">
		</form>
		&nbsp;
		<form action="paymentDetails" method="post">
			<input type="submit" value="Payment Details">
		</form>
		&nbsp;
		<form action="userDetails" method="post">
			<input type="submit" value="User Details">
		</form>
</center>
	<!--   <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js"></script>
<script src="js/script.js"></script>  -->
</body>

</html>