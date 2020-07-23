<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>edit your tables</title>
<style type="text/css">
		
		body{
			background-image:url('background4.jpg');
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

	<form action="insert.jsp" method="post">
		<table align="center">
			<tr>
				<th colspan="2">INSERT NEW BOOKS HERE</th>
			</tr>
		<tr>
				<td>book_id</td>
				<td><input type="number" name="rid"></td>
			</tr>
			<tr>
				<td>book_Name</td>
				<td><input type="text" name="rname"></td>
			</tr>
		
			<tr>
				<td>author</td>
				<td><input type="author" name="rauthor"></td>
			</tr>
			<tr>
				<td>genre</td>
				<td><input type="genre" name="rgenre"></td>
			</tr>
			<tr>
				<td>book_address</td>
				<td><input type="book_address" name="raddress"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="reset" value="Reset Values"> &nbsp; <input
					type="submit" value="Done"></td>
			</tr>
		</table>
	</form>
	<!-- <script
		src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js"></script>
	<script src="js/script.js"></script> -->
</body>
</html>