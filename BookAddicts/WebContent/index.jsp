<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Admin Panel </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!----webfonts--->
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!---//webfonts---> 
 <!-- Meters graphs -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- Placed js at the end of the document so the pages load faster -->

</head> 

<body class="sign-in-up">
    <section>
			<div id="page-wrapper" class="sign-in-wrapper">
				<div class="graphs">
					<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>Sign In to</span> <a href="#">Admin</a></p>
						</div>
		                                 
		                                 			<!-- main body starts from here -->
					
					<form method="post" action="LoginCheck">
		<table align="center">
			<tr>
				<td>user name</td>
				
				<td><input type="text" name="uname"></td>
			</tr>
			&nbsp
			<tr>
				<td>password</td>
				<td><input type="password" name="password"></td>
			</tr>
			&nbsp
			<tr>
				<td></td>
				<td><input type="submit" value="Log in"></td>
			</tr>
	
        </table>
</form>
<!--						<div class="new_people">-->
<!--							<h4>For New People</h4>-->
<!--
							<p>Having hands on experience in creating innovative designs,I do offer design 
								solutions which harness.</p>
-->
<!--							<a href="sign-up.jsp">Register Now!</a>-->
						</div>
					</div>
				</div>
		<!--footer section start-->
			<footer>
			   <p>&copy  Admin Panel. All Rights Reserved | Design by <a href="#" target="_blank">Team</a></p>
			</footer>
        <!--footer section end-->
	</section>
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.5/lib/darkmode-js.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>