<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Admin Panel </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content=" Admin Panel Responsive web page" />
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
<script src="js/wow.min.js">

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

<body class="sticky-header left-side-collapsed"  onload="initMap()">

    <section>
    <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="home.jsp"> My <span>Admin</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="home.jsp"><i class="lnr lnr-home"></i> </a>
			</div>

			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="active"><a href="home.jsp"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
						<li class="menu-list">
							
						</li>
						<li><a href="forms.jsp"><i class="lnr lnr-spell-check"></i> <span>Forms</span></a></li>
						<li><a href="tables.jsp"><i class="lnr lnr-menu"></i> <span>Tables</span></a></li>              
						      
					<!--  	<li class="menu-list"><a href="#"><i class="lnr lnr-indent-increase"></i> <span>Menu Levels</span></a>  
							<ul class="sub-menu-list">
								<li><a href="charts.jsp">Basic Charts</a> </li>
							</ul>
						</li>
						-->
						
						<li class="menu-list"><a href="#"><i class="lnr lnr-book"></i>  <span>Pages</span></a> 
							<ul class="sub-menu-list">
								<li><a href="index.jsp">Sign In</a> </li>
								<li><a href="blank_page.jsp">Blank Page</a></li>
							</ul>
						</li>
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
		<!-- left side end-->
    
		<!-- main content start-->
		<div class="main-content">
			<!-- header-starts -->
			<div class="header-section">
			 
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->

			<!--notification menu start -->
			<div class="menu-right">
				<div class="user-panel-top">  	
					<div class="profile_details_left">
						<ul class="nofitications-dropdown">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge"></span></a>
									
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have no new messages</h3>
												</div>
											</li>
											
											 
											
											<li>
												<div class="notification_bottom">
													<a href="#">See all messages</a>
												</div> 
											</li>
										</ul>
							</li>
							<li class="login_box" id="loginContainer">
									<div class="search-box">
										<div id="sb-search" class="sb-search">
											<form>
												<input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
												<input class="sb-search-submit" type="submit" value="">
												<span class="sb-icon-search"> </span>
											</form>
										</div>
									</div>
										<!-- search-scripts -->
										<script src="js/classie.js"></script>
										<script src="js/uisearch.js"></script>
											<script>
												new UISearch( document.getElementById( 'sb-search' ) );
											</script>
										<!-- //search-scripts -->
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue"></span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>You have no new notification</h3>
											</div>
										</li>
										
											<div class="notification_bottom">
												<a href="#">See all notification</a>
											</div> 
										</li>
									</ul>
								
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1"></span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>You have 4 pending task</h3>
											</div>
										</li>
										<li><a href="#">
												<div class="task-info">
												<span class="task-desc">Database update</span><span class="percentage">100%</span>
												<div class="clearfix"></div>	
											   </div>
												<div class="progress progress-striped active">
												 <div class="bar yellow" style="width:100%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Dashboard done</span><span class="percentage">100%</span>
											   <div class="clearfix"></div>	
											</div>
										   
											<div class="progress progress-striped active">
												 <div class="bar green" style="width:100%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
												<div class="clearfix"></div>	
											</div>
										   <div class="progress progress-striped active">
												 <div class="bar red" style="width: 33%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
											   <div class="clearfix"></div>	
											</div>
											<div class="progress progress-striped active">
												 <div class="bar  blue" style="width: 80%;"></div>
											</div>
										</a></li>
										<li>
											<div class="notification_bottom">
												<a href="#">no more pending task</a>
											</div> 
										</li>
									</ul>
							</li>		   							   		
							<div class="clearfix"></div>	
				</ul>
					</div>
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span style="background:url(https://thumbs.dreamstime.com/t/user-sign-icon-person-symbol-human-avatar-rich-man-84519083.jpg) no-repeat center"> </span> 
										 <div class="user-name">
											<p>ADMIN<span>Administrator</span></p>
										 </div>
										 <i class="lnr lnr-chevron-down"></i>
										 <i class="lnr lnr-chevron-up"></i>
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="mainpage.jsp"><i class="fa fa-cog"></i> Go to home</a> </li> 
									<li> <a href="profile.jsp"><i class="fa fa-user"></i>Profile</a> </li> 
									<li> <a href="index.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div>		
					<div class="social_icons">
						<div class="col-md-4 social_icons-left">
							<a href="https://www.facebook.com/" class="yui"><i class="fa fa-facebook i1"></i><span>30<sup>+</sup> Likes</span></a>
						</div>
						<div class="col-md-4 social_icons-left pinterest">
							<a href="https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="fa fa-google-plus i1"></i><span>50<sup>+</sup> Shares</span></a>
						</div>
						<div class="col-md-4 social_icons-left twi">
							<a href="https://twitter.com/login"><i class="fa fa-twitter i1"></i><span>50<sup>+</sup> Tweets</span></a>
						</div>
						<div class="clearfix"> </div>
					</div>            	
					<div class="clearfix"></div>
				</div>
			  </div>
			<!--notification menu end -->
			</div>
		<!-- //header-ends -->
			
<!-- <style>

img {
  max-width: 100%;
  height: auto;
} 

</style>



<img src="https://free4kwallpapers.com/uploads/originals/2019/12/17/painted-library-wallpaper.jpg"
                                  
                                                                 alt="book library" width="auto" height="auto"> -->







<style>
.section {
  position: relative;
  width: 100%;
  height: 800px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}

.section h1 {
  text-align: center;
  font-size: 6rem;
  font-family: "Cookie";
  padding: 20px;
  margin: 15px;
  z-index: 1;
  opacity: 10 ;
}

.video-container {
  position: absolute;
  top: 0;
  left: 0;
  right:0;
  bottom:0;
  width: 100%;
}


</style>

<div class="section">

        <h1>Welcome Admin</h1>

        <div class="video-container">
           
           <video autoplay loop muted>
                <source src="video7.mp4" type="video/mp4">
            </video>
        </div>

  <!--   </div>
    <div style="height:400px;width:100%">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat quod soluta natus. Magni tempora animi illo ea accusamus ex deserunt odio facere deleniti molestiae qui eaque in illum praesentium sunt iste accusantium nobis repellat aspernatur alias, architecto consectetur voluptate dolore! Saepe, enim rem nam dolorem tempore blanditiis perspiciatis repellat architecto.</p>
    </div> -->

			
			
			<!-- switches --> 
   
		
		
		
				
			<!--body wrapper start-->
			</div>
			 <!--body wrapper end-->
		</div>
        <!--footer section start-->
			<footer>
			   <p>Admin Panel. All Rights Reserved | Design by <a href="#" target="_blank">Team.</a></p>
			</footer>
        <!--footer section end-->
  <!-- main content end-->
   </section>
  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>