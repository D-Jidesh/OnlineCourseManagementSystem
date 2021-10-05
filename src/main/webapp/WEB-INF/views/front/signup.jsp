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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
    		rel="stylesheet" 
    		integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>signUp</title>
	<style>
		body{
		background-color:rgb(60, 60, 60);
		}
		.card{
		width:500px;
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
		.error{
		color:red;
		}
		.alert{
		width:400px;
		height:100px;
		margin:auto;
		}
	</style>
  </head>
  <body>
    <div class="container" >
		<div class="card">
			<div class="card-header">
				<h1>SignUp</h1>
			</div>
			<c:if test="${message.equals('error')}">
				<div class="alert alert-danger">${ex_message}</div>
			</c:if>
			<div class="card-body">
			<div id="inputfileds" class="body">
				<form:form action="saveuser" method="POST" modelAttribute="user">
					<form class="form" id="form">
						<div class="form-floating mb-2">
							<form:input type="text" class="form-control" id="floatingName" path="name" placeholder="name@example.com" />
							<label for="floatingName">Name</label>
							<form:errors path="name" cssClass="error"></form:errors>
						</div>
						<div class="form-floating mb-2">
							<form:input type="email" class="form-control" id="floatingEmail" path="email" placeholder="Email" />
							<label for="floatingEmail">Email</label>
							<form:errors path="email" cssClass="error"></form:errors>
						</div>
						<div class="form-floating mb-2">
							<form:input type="text" class="form-control" id="floatingNumber" path="number" placeholder="Number" />
							<label for="floatingNumber">Number</label>
							<form:errors path="number" cssClass="error"></form:errors>
						</div>
						<div class="form-floating mb-2">
							<form:input type="text" class="form-control" id="floatingAge" path="age" placeholder="Age" />
							<label for="floatingAge">Age</label>
							<form:errors path="age" cssClass="error"></form:errors>
						</div>
						<div class="form-floating mb-2">
							<form:input type="password" class="form-control" id="floatingPassword" path="password" placeholder="Password" />
							<label for="floatingPassword">Password</label>
							<form:errors path="password" cssClass="error"></form:errors>
						</div>
						<div class="form-floating">
							<input type="submit" class="btn btn-primary" value="SignUp">  <a href="/login">Already Registered?</a>
						</div>
					</form>	
				</form:form>	
			</div>	
			</div>
		</div>
	</div>
  </body>
</html>