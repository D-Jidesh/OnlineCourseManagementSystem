<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Home</title>
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

<nav class="navbar bg-light">
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/admin/home">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/admin/listcourse">Course List</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/admin/listusers">User's List</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/admin/profile">MyProfile</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/logout">logout</a>
    </li>
  </ul>
</nav>
<br>
<div style="color:white" class="container">
  <h2>${course.name} Enrolled User's</h2>      
  <table   style="color:white" class="table table-striped">
    <thead>
      <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
        <th>Number</th>
        <th></th>
      </tr>
    </thead>
    <c:forEach var="us" items="${user}">
    <tbody>
    	<tr>
    			<th>${us.name}</th>
    			<th>${us.email}</th>
    			<th>${us.age}</th>
    			<th>${us.number}</th>
    			<th><a href="/admin/listcourse/enrolledusers/delete/${us.id}/${course.id}" class="btn btn-danger">Delete</a></th>
    	</tr>
    </tbody>
    </c:forEach>
  </table>
</div>

</body>
</html>