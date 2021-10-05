<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>While-Loop</title>
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
		<h1 class="h1">Python While loop</h1>
<p>The Python while loop allows a part of the code to be executed until the given condition returns false. It is also known as a pre-tested loop.</p>
<p>It can be viewed as a repeating if statement. When we don't know the number of iterations then the while loop is most effective to use.</p>
<p>The syntax is given below.</p>
<div class="codeblock"><textarea name="code" class="java">
while expression:  
    statements  
</textarea></div>
<p>Here, the statements can be a single statement or a group of statements. The expression should be any valid Python expression resulting in true or false. The true is any non-zero value and false is 0.</p>
<h3 class="h3">While loop Flowchart</h3>
<img src="https://static.javatpoint.com/python/images/python-while-loop.png" alt="Python While loop" />
<h2 class="h2">Loop Control Statements</h2>
<p>We can change the normal sequence of <strong>while</strong> loop's execution using the loop control statement. When the while loop's execution is completed, all automatic objects defined in that scope are demolished. Python offers the following control statement to use within the while loop.</p>
<p><strong>1. Continue Statement - </strong> When the continue statement is encountered, the control transfer to the beginning of the loop. Let's understand the following example.</p>
<p><strong>Example:</strong></p>
<div class="codeblock"><textarea name="code" class="java">
# prints all letters except 'a' and 't' 
i = 0
str1 = 'javatpoint'

while i < len(str1): 
	if str1[i] == 'a' or str1[i] == 't': 
		i += 1
		continue
	print('Current Letter :', a[i]) 
	i += 1
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Current Letter : j
Current Letter : v
Current Letter : p
Current Letter : o
Current Letter : i
Current Letter : n
</pre></div>
<p><strong>2. Break Statement - </strong> When the break statement is encountered, it brings control out of the loop.</p>
<p><strong>Example:</strong></p>
<div class="codeblock"><textarea name="code" class="java">
# The control transfer is transfered
# when break statement soon it sees t
i = 0
str1 = 'javatpoint'

while i < len(str1): 
	if str1[i] == 't': 
		i += 1
		break
	print('Current Letter :', str1[i]) 
	i += 1
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Current Letter : j
Current Letter : a
Current Letter : v
Current Letter : a
</pre></div>
<p><strong>3. Pass Statement - </strong> The pass statement is used to declare the empty loop. It is also used to define empty class, function, and control statement. Let's understand the following example.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
# An empty loop 
str1 = 'javatpoint'
i = 0

while i < len(str1): 
	i += 1
	pass
print('Value of i :', i)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Value of i : 10
</pre></div>
<h3 class="h3">Example-1: Program to print 1 to 10 using while loop</h3>
<div class="codeblock"><textarea name="code" class="java">
i=1
#The while loop will iterate until condition becomes false.
While(i&lt;=10):  
    print(i) 
    i=i+1 
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>1
2
3
4
5
6
7
8
9
10
</pre></div>
<h3 class="h3">Example -2: Program to print table of given numbers.</h3>
<div class="codeblock"><textarea name="code" class="java">
i=1  
number=0  
b=9  
number = int(input("Enter the number:"))  
while i&lt;=10:  
    print("%d X %d = %d \n"%(number,i,number*i))  
    i = i+1  
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter the number:10
10 X 1 = 10 

10 X 2 = 20 

10 X 3 = 30 

10 X 4 = 40 

10 X 5 = 50 

10 X 6 = 60 

10 X 7 = 70 

10 X 8 = 80 

10 X 9 = 90 

10 X 10 = 100 
</pre></div>
<h2 class="h2">Infinite while loop</h2>
<p>If the condition is given in the while loop never becomes false, then the while loop will never terminate, and it turns into the <strong>infinite while loop.</strong></p>
<p>Any <strong>non-zero</strong> value in the while loop indicates an <strong>always-true</strong> condition, whereas zero indicates the always-false condition. This type of approach is useful if we want our program to run continuously in the loop without any disturbance.</p>
<h3 class="h3">Example 1</h3>
<div class="codeblock"><textarea name="code" class="java">
while (1):  
    print("Hi! we are inside the infinite while loop")
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Hi! we are inside the infinite while loop
Hi! we are inside the infinite while loop
</pre></div>
<h3 class="h3">Example 2</h3>
<div class="codeblock"><textarea name="code" class="java">
var = 1  
while(var != 2):  
    i = int(input("Enter the number:"))  
    print("Entered value is %d"%(i))  
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter the number:10
Entered value is 10
Enter the number:10
Entered value is 10
Enter the number:10
Entered value is 10
Infinite time
</pre></div>
<h2 class="h2">Using else with while loop</h2>
<p>Python allows us to use the else statement with the while loop also. The else block is executed when the condition given in the while statement becomes false. Like for loop, if the while loop is broken using break statement, then the else block will not be executed, and the statement present after else block will be executed. The else statement is optional to use with the while loop. Consider the following example.</p>
<h3 class="h3">Example 1</h3>
<div class="codeblock"><textarea name="code" class="java">
i=1 
while(i&lt;=5):  
    print(i)  
    i=i+1  
else:
    print("The while loop exhausted")  
</textarea></div>
<h3 class="h3">Example 2</h3>
<div class="codeblock"><textarea name="code" class="java">
i=1  
while(i&lt;=5):  
    print(i)  
    i=i+1  
    if(i==3):  
        break 
else:
    print("The while loop exhausted")
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>1
2
</pre></div>
<p>In the above code, when the break statement encountered, then while loop stopped its execution and skipped the else statement.</p>
<h3 class="h3">Example-3 Program to print Fibonacci numbers to given limit</h3>
<div class="codeblock"><textarea name="code" class="java">
terms = int(input("Enter the terms "))
# first two intial terms
a = 0
b = 1
count = 0

# check if the number of terms is Zero or negative
if (terms &lt;= 0):
   print("Please enter a valid integer")
elif (terms == 1):
   print("Fibonacci sequence upto",limit,":")
   print(a)
else:
   print("Fibonacci sequence:")
   while (count &lt; terms) :
       print(a, end = ' ')
       c = a + b
       # updateing values
       a = b
       b = c
   
    count += 1
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter the terms 10
Fibonacci sequence:
0 1 1 2 3 5 8 13 21 34 
</pre></div>
<hr />
        
    </div>
   </div>
</div>
</body>
</html>
