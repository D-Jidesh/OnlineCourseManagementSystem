<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Welcome Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.con {
  position: relative;
  text-align: center;
 color:white;
}
.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.col-sm-3{
background-color: white;
box-shadow: 5px 5px;
height:40px;
text-align:center;
}
.card{
width:400px;
height:400px;
background-color:LightGray;

}
.card-img-top{
width:100px;
height:100px;
}
.card-body{
height:260px;
}
a{
width:100%;
}
.card-img-top{
margin:auto;
}
body{
background-image:url(/images/first.jpg);
background-repeat: no-repeat;
background-attachment: fixed; 
background-size: 100% 100%;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav  ml-auto">
      <li class="nav-item">
         <a class="nav-link" href="/home">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/mycourse">MyCourse</a>
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
<div class="jumbotron text-center">
  <h1>Welcome to {Website Name}</h1> 
</div>
  
<div class="container">
  <div style="color:white" class="row">
    <div class="col-sm-4">
      <h3>Learn by Exploring</h3>        
      <p>Your Programming language education is never complete. Each language is uniquely designed not to compete with an already existing one, but to solve a problem that other language couldn't manage.</p>
    </div>
    <div class="col-sm-4" >
      <h3>Learn to Code</h3>
      <p>From Solving problems to building website, the choice is yours. No matter your experience level, you'll be writing real, working code in minutes.</p>
    </div>
    <div class="col-sm-4">
      <h3>Learn by practicing</h3>
      <p>Apply your learning with real-world projects and learn everything you need to take your career to the next level.</p>
    </div>
  </div>
<br><hr>
<div class="con">
  <img src="/images/welcomepic.jpg" style="width:100%;" height="300">
  <div class="centered">
<h3>It's time to start learning</h3>
	<p>Because learning to code might be the easiest way to change your career.</p>
</div>
</div>
<hr>
<h3 style="color:white">Our Courses</h3><br>
 <div class="container">
	<div class="card-columns">
		<c:forEach var="cou" items="${course}" >
			<div class="card  offset-1 bg-light text-dark">	
					<img class="card-img-top" src="/images/${cou.name}.jpg">
							 <div class="card-body">
      							<h4 class="card-title">${cou.name}</h4>
      							<p class="card-text">${cou.discription}</p>
    						</div>
    					<c:set var="list" value="${courseid}" />
    						<c:choose>
    							<c:when test="${fn:contains(list,cou.id)}">
    								<a href="/${cou.name}/intro" class="btn btn-success">Go To Course</a>
    							</c:when>
    							<c:otherwise>
    								<a href="/enrollcourse/${cou.id}/${user.id}" class="btn btn-success">Enroll</a>
    							</c:otherwise>
    						</c:choose>
				</div> <br>
		</c:forEach>		
	</div>
</div>
<div class="row">
	<hr>
 </div>
</div>

</body>
</html>