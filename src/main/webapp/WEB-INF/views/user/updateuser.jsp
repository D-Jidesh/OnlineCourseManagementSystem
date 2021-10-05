<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>User Profile</title>
<style>
	.card{
		width:500px;
		margin:auto;
		margin-top:50px;
		margin-bottom:10px;
	}
	.card-header{
		text-align:center;
		}
	#inputfileds{
		width:80%;
		margin:auto;
		margin-top:40px;
		}	
	.error{
		color:red;
		}
		body{
background-image:url(/images/first.jpg);
background-repeat: no-repeat;
background-attachment: fixed; 
background-size: 100% 100%;
}
.alert{
width:400px;
margin:auto;
margin-top:10px;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-md bg-light navbar-light">
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav  ml-auto">
      <li class="nav-item">
         <a class="nav-link" href="/home">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/mycourse">MyCourse</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">MyProfile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/aboutus">AboutUs</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/logout">Logout</a>
      </li>    
    </ul>
  </div>  
</nav>
<br>
<div class="container">
	<div class="card">
		<div class="card-header">
			<h1>Profile</h1>
		</div>
		<div class="alert alert-info">
					Please Use Below Format to Update Your profile!!<br>
					*Name should not be null and length must be between 5 and 20.<br>
					*Age should not be null,should be numeric and below 100.<br>
					*Number should not be null and must contains only numbers and 10 digits.<br>
		</div>
		<div class="card-body">
			<div class="body" id="inputfield">
				<form:form action="/updateuser/${user.id}" modelAttribute="us">
					<div class="form-floating mb-2">
						<form:input type="text" name="name" class="form-control" path="name" value="${user.name}" />
					</div>
					<div class="form-floating mb-2">
						<form:input type="text" name="age" class="form-control" path="age" value="${user.age}" />
					</div>
					<div class="form-floating mb-2">
						<form:input type="text" name="number" class="form-control" path="number" value="${user.number}" />
					</div>
					<div class="form-floating mb-2">
						<form:input type="hidden" name="email" class="form-control" path="email" value="${user.email}" />
					</div>
					<div class="form-floating mb-2">
						<form:input type="hidden" name="password" class="form-control" path="password" value="${user.password}" />
					</div>
					<div class="form-floating mb-2">
							<input type="submit" class="btn btn-primary" value="Update">
					</div>
				</form:form>
				<form:form action="/updatepassword/${user.id}">
					<div class="form-floating mb-2">
						<button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Change Password</button>
					</div>
					<div class="form-floating mb-2">
  						<div id="demo" class="collapse">
  								<input type="password"  name="password" class="form-control">
  								<br>
  								<input type="submit" class="btn btn-info" value="Update Password">
  						</div>
					</div>
				</form:form>	
			</div>
		</div>
	</div>
</div>
</body>
</html>