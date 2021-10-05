<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Course List</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<style>
	body{
background-image:url(/images/first.jpg);
background-repeat: no-repeat;
background-attachment: fixed; 
background-size: 100% 100%;
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
        <a class="nav-link" href="">MyCourse</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/myprofile">MyProfile</a>
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
<br>
<div class="container">          
  <table style="color:white" class="table table-striped">
    <thead>
      <tr>
        <th>Course Name</th>
        <th>Course Description</th>
        <th></th>
		<th></th>
      </tr>
    </thead>
	<c:forEach var="cour" items="${course}">
    <tbody>
      <tr>
        <td>${cour.name}</td>
        <td>${cour.discription}</td>
        <td><a href="/${cour.name}/intro" class="btn btn-success">Go To Course</a></td>
		<td><a href="/deletecourse/${cour.id}/${user.id}" class="btn btn-danger">Unenroll</a></td>
      </tr>
    </tbody>
	</c:forEach>
  </table>
</div>
</body>
</html>