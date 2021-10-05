<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>For-Loop</title>
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
		<h1 class="h1">Python for loop</h1>
<p>The for <strong>loop in Python</strong> is used to iterate the statements or a part of the program several times. It is frequently used to traverse the data structures like list, tuple, or dictionary.</p>
<p>The syntax of for loop in python is given below.</p>
<div class="codeblock"><textarea name="code" class="python">
for iterating_var in sequence:  
    statement(s)  
</textarea></div>
<h3 class="h3">The for loop flowchart</h3>
<img src="https://static.javatpoint.com/python/images/python-for-loop.png" alt="Python for loop" />
<h3 class="h3">For loop Using Sequence</h3>
<p><strong>Example-1: Iterating string using for loop</strong></p>
<div class="codeblock"><textarea name="code" class="python">
str = "Python"
for i in str:
    print(i)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>P
y
t
h
o
n
</pre></div>
<p><strong>Example- 2: Program to print the table of the given number .</strong></p>
<div class="codeblock"><textarea name="code" class="python">
list = [1,2,3,4,5,6,7,8,9,10]
n = 5
for i in list:
    c = n*i
    print(c)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>5
10
15
20
25
30
35
40
45
50s
</pre></div>
<p><strong>Example-4: Program to print the sum of the given list.</strong></p>
<div class="codeblock"><textarea name="code" class="python">
list = [10,30,23,43,65,12]
sum = 0
for i in list:
    sum = sum+i
print("The sum is:",sum)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>The sum is: 183
</pre></div>
<h3 class="h3">For loop Using range() function</h3>
<p><strong>The range() function</strong></p>
<p>The <strong>range()</strong> function is used to generate the sequence of the numbers. If we pass the range(10), it will generate the numbers from 0 to 9. The syntax of the range() function is given below.</p>
<p><strong>Syntax:</strong></p>
<div class="codeblock"><textarea name="code" class="python">
range(start,stop,step size)
</textarea></div>
<ul class="points">
<li>The start represents the beginning of the iteration.</li>
<li>The stop represents that the loop will iterate till stop-1. The <strong>range(1,5)</strong> will generate numbers 1 to 4 iterations. It is optional.</li>
<li>The step size is used to skip the specific numbers from the iteration. It is optional to use. By default, the step size is 1. It is optional.</li>
</ul>
<p>Consider the following examples:</p>
<p><strong>Example-1: Program to print numbers in sequence.</strong></p>
<div class="codeblock"><textarea name="code" class="python">
for i in range(10):
    print(i,end = ' ')
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>0 1 2 3 4 5 6 7 8 9 
</pre></div>
<p><strong>Example - 2: Program to print table of given number.</strong></p>
<div class="codeblock"><textarea name="code" class="python">
n = int(input("Enter the number "))
for i in range(1,11):
    c = n*i
    print(n,"*",i,"=",c)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter the number 10
10 * 1 = 10
10 * 2 = 20
10 * 3 = 30
10 * 4 = 40
10 * 5 = 50
10 * 6 = 60
10 * 7 = 70
10 * 8 = 80
10 * 9 = 90
10 * 10 = 100
</pre></div>
<p><strong>Example-3: Program to print even number using step size in range().</strong></p>
<div class="codeblock"><textarea name="code" class="python">
n = int(input("Enter the number "))
for i in range(2,n,2):
    print(i)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter the number 20
2
4
6
8
10
12
14
16
18
</pre></div>
<p>We can also use the <strong>range()</strong> function with sequence of numbers. The <strong>len()</strong> function is combined with range() function which iterate through a sequence using indexing. Consider the following example.</p>
<div class="codeblock"><textarea name="code" class="python">
list = ['Peter','Joseph','Ricky','Devansh']
for i in range(len(list)):
    print("Hello",list[i])
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Hello Peter
Hello Joseph
Hello Ricky
Hello Devansh
</pre></div>
<h2 class="h2">Nested for loop in python</h2>
<p>Python allows us to nest any number of for loops inside a <strong>for</strong> loop. The inner loop is executed n number of times for every iteration of the outer loop. The syntax is given below.</p>
<p><strong>Syntax</strong></p>
<div class="codeblock"><textarea name="code" class="python">
for iterating_var1 in sequence:  #outer loop
    for iterating_var2 in sequence:  #inner loop
        #block of statements   
#Other statements  
</textarea></div>
<h2 class="h3">Example- 1: Nested for loop</h2>
<div class="codeblock"><textarea name="code" class="python">
# User input for number of rows
rows = int(input("Enter the rows:"))
# Outer loop will print number of rows
for i in range(0,rows+1):
# Inner loop will print number of Astrisk
    for j in range(i):
        print("*",end = '')
    print()
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter the rows:5
*
**
***
****
*****
</pre></div>
<h3 class="h3">Example-2: Program to number pyramid.</h3>
<div class="codeblock"><textarea name="code" class="python">
rows = int(input("Enter the rows"))
for i in range(0,rows+1):
    for j in range(i):
        print(i,end = '')
    print()
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>1
22
333
4444
55555
</pre></div>
<h2 class="h2">Using else statement with for loop</h2>
<p>Unlike other languages like C, C++, or Java, Python allows us to use the else statement with the for loop which can be executed only when all the iterations are exhausted. Here, we must notice that if the loop contains any of the break statement then the else statement will not be executed.</p>
<h2 class="h3">Example 1</h2>
<div class="codeblock"><textarea name="code" class="python">
for i in range(0,5):  
    print(i)  
else:
    print("for loop completely exhausted, since there is no break.")
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>0
1
2
3
4
for loop completely exhausted, since there is no break.
</pre></div>
<p>The for loop completely exhausted, since there is no break.</p>
<h2 class="h3">Example 2</h2>
<div class="codeblock"><textarea name="code" class="python">
for i in range(0,5):  
    print(i)  
    break;  
else:print("for loop is exhausted");  
print("The loop is broken due to break statement...came out of the loop")  
</textarea></div>
<p>In the above example, the loop is broken due to the break statement; therefore, the else statement will not be executed. The statement present immediate next to else block will be executed.</p>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>0
</pre></div>
<p>The loop is broken due to the break statement...came out of the loop. We will learn more about the break statement in next tutorial.</p>
<hr />
        
    </div>
   </div>
</div>
</body>
</html>
