<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>If-Else</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
<br>
<br>
<div class="container-fluid">
   <div class="row">
    <div class="col-sm-3">
			<div class="list-group">
				<a href="/Python/intro" class="list-group-item list-group-item-action">Python Tutorial</a>
				<a href="/python/getstarted" class="list-group-item list-group-item-action">Get Started</a>
				<a href="/python/variables" class="list-group-item list-group-item-action">Variable</a>
				<a href="/python/datatypes" class="list-group-item list-group-item-action">Datatypes</a>
				<a href="/python/comments" class="list-group-item list-group-item-action">Comments</a>
				<a href="/python/ifelse" class="list-group-item list-group-item-action">If-Else</a>
				<a href="/python/loop" class="list-group-item list-group-item-action">Looping Statements</a>
				<a href="/python/forloop" class="list-group-item list-group-item-action">For-Loop</a>
				<a href="/python/whileloop" class="list-group-item list-group-item-action">While-Loop</a>
				<a href="/python/break" class="list-group-item list-group-item-action">Break</a>
			</div>
    </div>
    <div class="col-sm-9">
		<h1 class="h1">Python If-else statements </h1>
<p>Decision making is the most important aspect of almost all the programming languages. As the name implies, decision making allows us to run a particular block of code for a particular decision. Here, the decisions are made on the validity of the particular conditions. Condition checking is the backbone of decision making. </p>
<p>In python, decision making is performed by the following statements. </p>
<table class="alt">
<tr>
<th>Statement</th>
<th>Description</th>
<tr>
<tr>
<td>If Statement </td>
<td>The if statement is used to test a specific condition. If the condition is true, a block of code (if-block) will be executed.</td>
</tr>
<tr>
<td>If - else Statement</td>
<td>The if-else statement is similar to if statement except the fact that, it also provides the block of the code for the false case of the condition to be checked. If the condition provided in the if statement is false, then the else statement will be executed. </td>
</tr>
<tr>
<td>Nested if Statement</td>
<td>Nested if statements enable us to use if ? else statement inside an outer if statement. </td>
</tr>
</table>
<h2 class="h2">Indentation in Python</h2>
<p>For the ease of programming and to achieve simplicity, python doesn't allow the use of parentheses for the block level code. In Python, indentation is used to declare a block. If two statements are at the same indentation level, then they are the part of the same block. </p>
<p>Generally, four spaces are given to indent the statements which are a typical amount of indentation in python.</p>
<p>Indentation is the most used part of the python language since it declares the block of code. All the statements of one block are intended at the same level indentation. We will see how the actual indentation takes place in decision making and other stuff in python.</p>
<h2 class="h2">The if statement</h2>
<p>The if statement is used to test a particular condition and if the condition is true, it executes a block of code known as if-block. The condition of if statement can be any valid logical expression which can be either evaluated to true or false. </p>
<img src="https://static.javatpoint.com/python/images/python-if-statement.png" alt="Python If-else statements" />
<br>
<p>The syntax of the if-statement is given below. </p>
<div class="codeblock"><textarea name="code" class="python">
if expression:
	statement
</textarea></div>
<h3 class="h3">Example 1</h3>
<div class="codeblock"><textarea name="code" class="python">
num = int(input("enter the number?"))
if num%2 == 0:
    print("Number is even")
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>enter the number?10
Number is even
</pre></div>
<h3 class="h3">Example 2 : Program to print the largest of the three numbers. </h3>
<div class="codeblock"><textarea name="code" class="python">
a = int(input("Enter a? "));
b = int(input("Enter b? "));
c = int(input("Enter c? "));
if a>b and a>c:
    print("a is largest");
if b>a and b>c:
    print("b is largest");
if c>a and c>b:
    print("c is largest");
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter a? 100
Enter b? 120
Enter c? 130
c is largest
</pre></div>
<hr />
<h2 class="h2">The if-else statement </h2>
<p>The if-else statement provides an else block combined with the if statement which is executed in the false case of the condition. </p>
<p>If the condition is true, then the if-block is executed. Otherwise, the else-block is executed. </p>
<img src="https://static.javatpoint.com/python/images/python-if-else-statement.png" alt="Python If-else statements" />
<br>
<p>The syntax of the if-else statement is given below. </p>
<div class="codeblock"><textarea name="code" class="python">
if condition:
	#block of statements 
else: 
	#another block of statements (else-block) 
</textarea></div>
<h3 class="h3">Example 1 : Program to check whether a person is eligible to vote or not.</h3>
<div class="codeblock"><textarea name="code" class="python">
age = int (input("Enter your age? "))
if age>=18:
    print("You are eligible to vote !!");
else:
    print("Sorry! you have to wait !!");
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter your age? 90
You are eligible to vote !!
</pre></div>
<h3 class="h3">Example 2: Program to check whether a number is even or not. </h3>
<div class="codeblock"><textarea name="code" class="python">
num = int(input("enter the number?"))
if num%2 == 0:
    print("Number is even...")
else:
    print("Number is odd...")
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>enter the number?10
Number is even
</pre></div>
<hr />
<h2 class="h2">The elif statement</h2>
<p>The elif statement enables us to check multiple conditions and execute the specific block of statements depending upon the true condition among them. We can have any number of elif statements in our program depending upon our need. However, using elif is optional. </p>
<p>The elif statement works like an if-else-if ladder statement in C. It must be succeeded by an if statement. </p>
<p>The syntax of the elif statement is given below. </p>
<div class="codeblock"><textarea name="code" class="python">
if expression 1: 
	# block of statements 

elif expression 2: 
	# block of statements 

elif expression 3: 
	# block of statements 

else: 
	# block of statements
</textarea></div>
<img src="https://static.javatpoint.com/python/images/python-elif-statement.png" alt="Python If-else statements" />
<h3 class="h3">Example 1</h3>
<div class="codeblock"><textarea name="code" class="python">
number = int(input("Enter the number?"))
if number==10:
    print("number is equals to 10")
elif number==50:
    print("number is equal to 50");
elif number==100:
    print("number is equal to 100");
else:
    print("number is not equal to 10, 50 or 100");
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter the number?15
number is not equal to 10, 50 or 100
</pre></div>
<h3 class="h3">Example 2</h3>
<div class="codeblock"><textarea name="code" class="python">
 marks = int(input("Enter the marks? "))
if marks > 85 and marks <= 100:
    print("Congrats ! you scored grade A ...")
elif marks > 60 and marks <= 85:
    print("You scored grade B + ...")
elif marks > 40 and marks <= 60:
    print("You scored grade B ...")
elif (marks > 30 and marks <= 40):
    print("You scored grade C ...")
else:
    print("Sorry you are fail ?")
</textarea></div>
<hr>
        
    </div>
   </div>
</div>
</body>
</html>
