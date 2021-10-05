<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Login</title>
	<style>
		body{
		background-color:rgb(60, 60, 60);
		
		}
		.card{
		width:500px;
		height:350px;
		margin:auto;
		margin-top:100px;
		}
		.card-header{
		text-align:center;
		}
		#inputfileds{
		width:80%;
		margin:auto;
		margin-top:40px;
		}
		.alert{
		margin:auto;
		width:500px;
		height:50px;
		margin-top:20px;
		}		
	</style>
  </head>
  <body>
        <c:if test="${message!=''}">
				<div class="alert alert-success">${message}</div>
		</c:if>	
		<div class="card">
			<div class="card-header">
				<h1>Login</h1>
			</div>
			<div id="inputfileds" class="body">
				<form:form action=" " method="POST">
					<div class="form-floating mb-2">
						<input type="email" class="form-control" id="floatingInput" name="username" placeholder="name@example.com">
						<label for="floatingInput">Email address</label>
					</div>
					<div class="form-floating mb-2">
						<input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password">
						<label for="floatingPassword">Password</label>
					</div>
					<div class="form-floating">
						<input type="submit" class="btn btn-primary" value="Login">
					</div>
				</form:form>	
			</div>	
			<div class="card-footer">
				New User ? <a href="signup">Register</a>
			</div>
		</div>
  </body>
</html>