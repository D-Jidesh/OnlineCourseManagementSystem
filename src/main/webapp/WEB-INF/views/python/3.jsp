<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Variables</title>
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
		<h1 class="h1">Python Variables</h1>
<p>Variable is a name that is used to refer to memory location. Python variable is also known as an identifier and used to hold value.</p>
<p>In Python, we don't need to specify the type of variable because Python is a infer language and smart enough to get variable type.</p>
<p>Variable names can be a group of both the letters and digits, but they have to begin with a letter or an underscore.</p>
<p>It is recommended to use lowercase letters for the variable name. Rahul and rahul both are two different variables.</p>
<h2 class="h2">Identifier Naming</h2>
<p>Variables are the example of identifiers. An Identifier is used to identify the literals used in the program. The rules to name an identifier are given below.</p>
<ul class="points">
<li>The first character of the variable must be an alphabet or underscore ( _ ).</li>
<li>All the characters except the first character may be an alphabet of lower-case(a-z), upper-case (A-Z), underscore, or digit (0-9).</li>
<li>Identifier name must not contain any white-space, or special character (!, @, #, %, ^, &, *).</li>
<li>Identifier name must not be similar to any keyword defined in the language.</li>
<li>Identifier names are case sensitive; for example, my name, and MyName is not the same.</li>
<li>Examples of valid identifiers: a123, _n, n_9, etc.</li>
<li>Examples of invalid identifiers: 1a, n%4, n 9, etc.</li>
</ul>
<h2 class="h2">Declaring Variable and Assigning Values</h2>
<p>Python does not bind us to declare a variable before using it in the application. It allows us to create a variable at the required time.</p>
<p>We don't need to declare explicitly variable in Python. When we assign any value to the variable, that variable is declared automatically.</p>
<p>The equal (=) operator is used to assign value to a variable.</p>
<h2 class="h2">Object References</h2>
<p>It is necessary to understand how the Python interpreter works when we declare a variable. The process of treating variables is somewhat different from many other programming languages.</p>
<p>Python is the highly object-oriented programming language; that's why every data item belongs to a specific type of class. Consider the following example.</p>
<div class="codeblock"><textarea name="code" class="java">
print("John")
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>John
</pre></div>
<p>The Python object creates an integer object and displays it to the console. In the above print statement, we have created a string object. Let's check the type of it using the Python built-in <strong>type()</strong> function.</p>
<div class="codeblock"><textarea name="code" class="java">
type("John")
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;class 'str'&gt;
</pre></div>
<p>In Python, variables are a symbolic name that is a reference or pointer to an object. The variables are used to denote objects by that name.</p>
<p>Let's understand the following example</p>
<div class="codeblock"><textarea name="code" class="java">
a = 50 
</textarea></div>
<br>
<img src="https://static.javatpoint.com/python/images/python-variables.png" alt="Python Variables" />
<p>In the above image, the variable <strong>a</strong> refers to an integer object.</p>
<p>Suppose we assign the integer value 50 to a new variable b.</p>
<div class="formula">
<p>a = 50</p>
<p>b = a</p>
</div>
<br>
<img src="https://static.javatpoint.com/python/images/python-variables2.png" alt="Python Variables" />
<p>The variable b refers to the same object that a points to because Python does not create another object.</p>
<p>Let's assign the new value to b. Now both variables will refer to the different objects.</p>
<div class="formula">
<p>a = 50</p>
<p>b =100</p>
</div>
<br>
<img src="https://static.javatpoint.com/python/images/python-variables3.png" alt="Python Variables" />
<p>Python manages memory efficiently if we assign the same variable to two different values.</p>
<h2 class="h2">Object Identity</h2>
<p>In Python, every created object identifies uniquely in Python. Python provides the guaranteed that no two objects will have the same identifier. The built-in <strong>id()</strong> function, is used to identify the object identifier. Consider the following example.</p>
<div class="codeblock"><textarea name="code" class="java">
a = 50
b = a
print(id(a))
print(id(b))
# Reassigned variable a
a = 500
print(id(a))
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>140734982691168
140734982691168
2822056960944
</pre></div>
<p>We assigned the <strong>b = a, a</strong> and <strong>b</strong> both point to the same object. When we checked by the <strong>id()</strong> function it returned the same number. We reassign <strong>a</strong> to 500; then it referred to the new object identifier.</p>
<h2 class="h2">Variable Names</h2>
<p>We have already discussed how to declare the valid variable. Variable names can be any length can have uppercase, lowercase (A to Z, a to z), the digit (0-9), and underscore character(_). Consider the following example of valid variables names.</p>
<div class="codeblock"><textarea name="code" class="java">
name = "Devansh"
age = 20
marks = 80.50

print(name)
print(age)
print(marks)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Devansh
20
80.5
</pre></div>
<p>Consider the following valid variables name.</p>
<div class="codeblock"><textarea name="code" class="java">
name = "A"
Name = "B"
naMe = "C"
NAME = "D"
n_a_m_e = "E"
_name = "F"
name_ = "G"
_name_ = "H"
na56me = "I"

print(name,Name,naMe,NAME,n_a_m_e, NAME, n_a_m_e, _name, name_,_name, na56me)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>A B C D E D E F G F I
</pre></div>
<p>In the above example, we have declared a few valid variable names such as name, _name_ , etc. But it is not recommended because when we try to read code, it may create confusion. The variable name should be descriptive to make code more readable.</p>
<p>The multi-word keywords can be created by the following method.</p>
<ul class="points">
<li><strong>Camel Case -</strong> In the camel case, each word or abbreviation in the middle of begins with a capital letter. There is no intervention of whitespace. For example - nameOfStudent, valueOfVaraible, etc.</li>
<li><strong>Pascal Case -</strong> It is the same as the Camel Case, but here the first word is also capital. For example - NameOfStudent, etc.</li>
<li><strong>Snake Case -</strong> In the snake case, Words are separated by the underscore. For example - name_of_student, etc.</li>
</ul>
<h2 class="h2">Multiple Assignment</h2>
<p>Python allows us to assign a value to multiple variables in a single statement, which is also known as multiple assignments.</p>
<p>We can apply multiple assignments in two ways, either by assigning a single value to multiple variables or assigning multiple values to multiple variables. Consider the following example.</p>
<p><strong>1. Assigning single value to multiple variables</strong></p>
<p><strong>Eg:</strong></p>
<div class="codeblock"><textarea name="code" class="java">
x=y=z=50  
print(x)  
print(y)  
print(z)  
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>50  
50  
50  
</pre></div>
<p><strong>2. Assigning multiple values to multiple variables:</strong></p>
<p><strong>Eg:</strong></p>
<div class="codeblock"><textarea name="code" class="java">
a,b,c=5,10,15  
print a  
print b  
print c  
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>5  
10  
15  
</pre></div>
<p>The values will be assigned in the order in which variables appear.</p>
<h2 class="h2">Python Variable Types</h2>
<p>There are two types of variables in Python - Local variable and Global variable. Let's understand the following variables.</p>
<h3 class="h3">Local Variable</h3>
<p>Local variables are the variables that declared inside the function and have scope within the function. Let's understand the following example.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="python">
# Declaring a function
def add():
    # Defining local variables. They has scope only within a function
    a = 20
    b = 30
    c = a + b
    print("The sum is:", c)

# Calling a function
add()
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>The sum is: 50
</pre></div>
<p><strong>Explanation:</strong></p>
<p>In the above code, we declared a function named <strong>add()</strong> and assigned a few variables within the function. These variables will be referred to as the <strong>local variables</strong> which have scope only inside the function. If we try to use them outside the function, we get a following error.</p>
<div class="codeblock"><textarea name="code" class="python">
add()
# Accessing local variable outside the function 
print(a)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>The sum is: 50
    print(a)
NameError: name 'a' is not defined
</pre></div>
<p>We tried to use local variable outside their scope; it threw the <strong>NameError.</strong></p>
<h3 class="h3">Global Variables</h3>
<p>Global variables can be used throughout the program, and its scope is in the entire program. We can use global variables inside or outside the function.</p>
<p>A variable declared outside the function is the global variable by default. Python provides the <strong>global</strong> keyword to use global variable inside the function. If we don't use the <strong>global</strong> keyword, the function treats it as a local variable. Let's understand the following example.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="python">
# Declare a variable and initialize it
x = 101

# Global variable in function
def mainFunction():
    # printing a global variable
    global x
    print(x)
    # modifying a global variable
    x = 'Welcome To Javatpoint'
    print(x)

mainFunction()
print(x)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>101
Welcome To Javatpoint
Welcome To Javatpoint
</pre></div>
<p><strong>Explanation:</strong></p>
<p>In the above code, we declare a global variable <strong>x</strong> and assign a value to it. Next, we defined a function and accessed the declared variable using the <strong>global</strong> keyword inside the function. Now we can modify its value. Then, we assigned a new string value to the variable x.</p>
<p>Now, we called the function and proceeded to print <strong>x</strong>. It printed the as newly assigned value of x.</p>
<h2 class="h2">Delete a variable</h2>
<p>We can delete the variable using the <strong>del</strong> keyword. The syntax is given below.</p>
<p><strong>Syntax -</strong></p>
<div class="codeblock"><textarea name="code" class="python">
del &lt;variable_name&gt;
</textarea></div>
<p>In the following example, we create a variable x and assign value to it. We deleted variable x, and print it, we get the error <strong>"variable x is not defined"</strong>. The variable x will no longer use in future.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="python">
# Assigning a value to x
x = 6
print(x)
# deleting a variable. 
del x
print(x)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>6
Traceback (most recent call last):
  File "C:/Users/DEVANSH SHARMA/PycharmProjects/Hello/multiprocessing.py", line 389, in <module>
    print(x)
NameError: name 'x' is not defined
</pre></div>
<h2 class="h2">Maximum Possible Value of an Integer in Python</h2>
<p>Unlike the other programming languages, Python doesn't have long int or float data types. It treats all integer values as an <strong>int</strong> data type. Here, the question arises. What is the maximum possible value can hold by the variable in Python? Consider the following example.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="python">
# A Python program to display that we can store
# large numbers in Python

a = 10000000000000000000000000000000000000000000
a = a + 1
print(type(a))
print (a)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;class 'int'&gt;
10000000000000000000000000000000000000000001
</pre></div>
<p>As we can see in the above example, we assigned a large integer value to variable <strong>x</strong> and checked its type. It printed <strong>class &lt;int&gt;</strong> not long int. Hence, there is no limitation number by bits and we can expand to the limit of our memory.</p>
<p>Python doesn't have any special data type to store larger numbers.</p>
<h3 class="h3">Print Single and Multiple Variables in Python</h3>
<p>We can print multiple variables within the single print statement. Below are the example of single and multiple printing values.</p>
<p><strong>Example - 1 (Printing Single Variable)</strong></p>
<div class="codeblock"><textarea name="code" class="python">
# printing single value 
a = 5
print(a)
print((a))
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>5
5
</pre></div>
<p><strong>Example - 2 (Printing Multiple Variables)</strong></p>
<div class="codeblock"><textarea name="code" class="python">
a = 5
b = 6
# printing multiple variables
print(a,b)
# separate the variables by the comma
Print(1, 2, 3, 4, 5, 6, 7, 8) 
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>5 6
1 2 3 4 5 6 7 8
</pre></div>
<h2 class="h2">Basic Fundamentals:</h2>
<p>This section contains the fundamentals of Python, such as:</p>
<p><strong>i)Tokens and their types.</strong></p>
<p><strong>ii) Comments</strong></p>
<p><strong>a)Tokens:</strong></p>
<ul class="points">
<li>The tokens can be defined as a punctuator mark, reserved words, and each word in a statement.</li>
<li>The token is the smallest unit inside the given program.</li>
</ul>
<p>There are following tokens in Python:</p>
<ul class="points">
<li>Keywords.</li>
<li>Identifiers.</li>
<li>Literals.</li>
<li>Operators.</li>
</ul>
<p>We will discuss above the tokens in detail next tutorials.</p>
<hr />
        
    </div>
   </div>
</div>
</body>
</html>
    