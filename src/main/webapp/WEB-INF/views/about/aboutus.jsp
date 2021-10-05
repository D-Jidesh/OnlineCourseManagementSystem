<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>About Us</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body{
background-image:url(/images/first.jpg);
background-repeat: no-repeat;
background-attachment: fixed; 
background-size: 100% 100%;
}
.row.content {
	height: 800px
}

.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.fa {
	padding: 20px;
	font-size: 30px;
	width: 80px;
	text-align: center;
	text-decoration: none;
	margin: 5px 2px;
	border-radius: 50%;
}

.fa:hover {
	opacity: 0.7;
}

.fa-facebook {
	background: #3B5998;
	color: white;
}

.fa-twitter {
	background: #55ACEE;
	color: white;
}

.fa-google {
	background: #dd4b39;
	color: white;
}

.fa-linkedin {
	background: #007bb5;
	color: white;
}

.fa-youtube {
	background: #bb0000;
	color: white;
}

.fa-instagram {
	background: #125688;
	color: white;
}
</style>
</head>
<body>
<nav class="navbar navbar-default">
<div class="container-fluid">
  <ul class="nav navbar-nav navbar-right">
    <li><a href="/home">Home</a></li>
    <li><a href="/mycourse">MyCourse</a></li>
    <li><a href="/myprofile">MyProfile</a></li>
    <li><a href="">About Us</a></li>
    <li><a href="/logout">Logout</a></li>
  </ul>
</div>  
</nav>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<h4>{Website Name}</h4>
				<hr>
				CONTACT US: <br> Address: XXX, XXX, XXX. <br>
				<br> Website: {Website Name} <br>
				<hr>

				<strong>Follow Us</strong>

				<hr>
				<a href="#" class="fa fa-facebook"></a> <a href="#"
					class="fa fa-twitter"></a> <a href="#" class="fa fa-google"></a> <a
					href="#" class="fa fa-linkedin"></a> <a href="#"
					class="fa fa-youtube"></a> <a href="#" class="fa fa-instagram"></a>
			</div>

			<div class="col-sm-9">
				<h4>
					<strong style="color:white">About Us</strong>
				</h4>
				<hr>
				<p style="color:white">Hi, We have written and developed this site so that students
					may learn computer science related technologies easily. I'm
					committed to provide easy and in-depth tutorials on various
					technologies. No one is perfect in this world and nothing is
					eternally best. But we can try to be better. We hope it will help
					you a lot.</p>
				<hr>
				<ul style="color:white" class="nav nav-pills nav-stacked">
					<li class="active"><strong>Learning Tutorials</strong></li>
					<li><a>Learn Python</a></li>
					<li><a>Learn Jquery</a></li>
					<li><a>Learn C</a></li>
					<li><a>Learn C++</a></li>
					<li><a>Learn Java</a></li>
					<li><a>Learn JavaScript</a></li>
					<li><a>Learn Nodejs</a></li>
					<li><a>Learn MySQL</a></li>
					<li><a>Learn C#</a></li>
				</ul>
				<hr>
				<h4>
					<strong style="color:white">Leave a Comment:</strong>
				</h4>
				<a href="mailto:admin@abc.com">Email Us</a>. <br>
				<br>
			</div>
		</div>
	</div>

	<footer class="container-fluid">
		<p>© Copyright {Website Name} All rights reserved. Developed by
			{Website Name}</p>
	</footer>

</body>
</html>