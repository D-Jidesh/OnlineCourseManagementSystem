<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Python Introduction</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">>
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
<br><br>
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
		<h1 class="h1">Python Tutorial</h1>
<a href="https://training.javatpoint.com/python-training.jsp" target="_blank"><img src="corebasic/images/python2.png" style="width:300px" class="imageright" alt="Python" /></a>
<p>Python tutorial provides basic and advanced concepts of Python. Our Python tutorial is designed for beginners and professionals.</p>
<p>Python is a simple, general purpose, high level, and object-oriented programming language.</p>
<p>Python is an interpreted scripting language also. <em>Guido Van Rossum</em> is known as the founder of Python programming.</p>
<p>Our Python tutorial includes all topics of Python Programming such as installation, control statements, <a href="python-strings">Strings</a>, <a href="python-lists">Lists</a>, <a href="python-tuples">Tuples</a>, <a href="python-dictionary">Dictionary</a>, <a href="python-modules">Modules</a>, <a href="python-exception-handling">Exceptions</a>, Date and Time, File I/O, Programs, etc. There are also given Python interview questions to help you better understand Python Programming.</p>
<h2 class="h2">What is Python</h2>
<p><strong>Python</strong> is a general purpose, dynamic, <a href="classification-of-programming-languages">high-level</a>, and interpreted programming language. It supports Object Oriented programming approach to develop applications. It is simple and easy to learn and provides lots of high-level data structures.</p>
<p>Python is <em>easy to learn</em> yet powerful and versatile scripting language, which makes it attractive for Application Development.</p>
<p>Python's syntax and <em>dynamic typing</em> with its interpreted nature make it an ideal language for scripting and rapid application development.</p>
<p>Python supports <em>multiple programming pattern</em>, including object-oriented, imperative, and functional or procedural programming styles.</p>
<p>Python is not intended to work in a particular area, such as web programming. That is why it is known as <em>multipurpose</em> programming language because it can be used with web, enterprise, 3D CAD, etc.</p>
<p>We don't need to use data types to declare variable because it is <em>dynamically typed</em> so we can write a=10 to assign an integer value in an integer variable.</p>
<p>Python makes the development and debugging <em>fast</em> because there is no compilation step included in Python development, and edit-test-debug cycle is very fast.</p>
<h2 class="h2">Python 2 vs. Python 3 </h2>
<p>In most of the programming languages, whenever a new version releases, it supports the features and syntax of the existing version of the language, therefore, it is easier for the projects to switch in the newer version. However, in the case of Python, the two versions Python 2 and Python 3 are very much different from each other. </p>
<p>A list of differences between Python 2 and Python 3 are given below:</p>
<ol class="points">
<li>Python 2 uses <strong>print</strong> as a statement and used as print "something" to print some string on the console. On the other hand, Python 3 uses <strong>print</strong> as a function and used as print("something") to print something on the console.</li>
<li>Python 2 uses the function raw_input() to accept the user's input. It returns the string representing the value, which is typed by the user. To convert it into the integer, we need to use the int() function in Python. On the other hand, Python 3 uses input() function which automatically interpreted the type of input entered by the user. However, we can cast this value to any type by using primitive functions (int(), str(), etc.). </li>
<li>In Python 2, the implicit string type is ASCII, whereas, in Python 3, the implicit string type is Unicode.</li>
<li>Python 3 doesn't contain the xrange() function of Python 2. The xrange() is the variant of range() function which returns a xrange object that works similar to Java iterator. The range() returns a list for example the function range(0,3) contains 0, 1, 2. </li>
<li>There is also a small change made in Exception handling in Python 3. It defines a keyword <strong>as</strong> which is necessary to be used. We will discuss it in Exception handling section of Python programming tutorial.</li>
</ol>

<h2 class="h2">Python History</h2>
<p>Python was invented by <strong>Guido van Rossum</strong> in 1991 at CWI in Netherland. The idea of Python programming language has taken from the ABC programming language or we can say that ABC is a predecessor of Python language.</p>
<p>There is also a fact behind the choosing name Python. Guido van Rossum was a fan of the popular BBC comedy show of that time, <strong>"Monty Python's Flying Circus"</strong>. So he decided to pick the name <strong>Python</strong> for his newly created programming language.</p>
<p>Python has the vast community across the world and releases its version within the short period.</p>
<h2 class="h2">Why learn Python?</h2>
<p>Python provides many useful features to the programmer. These features make it most popular and widely used language. We have listed below few-essential feature of Python.</p>
<ul class="points">
<li>Easy to use and Learn</li>
<li>Expressive Language</li>
<li>Interpreted Language</li>
<li>Object-Oriented Language</li>
<li>Open Source Language</li>
<li>Extensible</li>
<li>Learn Standard Library</li>
<li>GUI Programming Support</li>
<li>Integrated</li>
<li>Embeddable</li>
<li>Dynamic Memory Allocation</li>
<li>Wide Range of Libraries and Frameworks</li>
</ul>
<h2 class="h2">Where is Python used?</h2>
<p>Python is a general-purpose, popular programming language and it is used in almost every technical field. The various areas of Python use are given below.</p>
<ul class="points">
<li>Data Science</li>
<li>Date Mining</li>
<li>Desktop Applications</li>
<li>Console-based Applications</li>
<li>Mobile Applications</li>
<li>Software Development</li>
<li>Artificial Intelligence</li>
<li>Web Applications</li>
<li>Enterprise Applications</li>
<li>3D CAD Applications</li>
<li>Machine Learning</li>
<li>Computer Vision or Image Processing Applications.</li>
<li>Speech Recognitions</li>
</ul>
<h2 class="h2">Python Basic Syntax</h2>
<p>There is no use of curly braces or semicolon in Python programming language. It is English-like language. But Python uses the indentation to define a block of code. Indentation is nothing but adding whitespace before the statement when it is needed. <strong>For example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
def func():
       statement 1
       statement 2
       &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;
       &hellip;&hellip;&hellip;&hellip;&hellip;&hellip;&hellip;
         statement N
</textarea></div>
<p>In the above example, the statements that are same level to right belong to the function. Generally, we can use four whitespaces to define indentation.</p>
<h2 class="h2">Python First Program</h2>
<p>Unlike the other programming languages, Python provides the facility to execute the code using few lines. <strong>For example</strong> - Suppose we want to print the <strong>"Hello World"</strong> program in Java; it will take three lines to print it.</p>
<div class="codeblock"><textarea name="code" class="java">
public class HelloWorld {
 public static void main(String[] args){
// Prints "Hello, World" to the terminal window.
  System.out.println("Hello World");
 }
 }
</textarea></div>
<p>On the other hand, we can do this using one statement in Python.</p>
<div class="codeblock"><textarea name="code" class="java">
print("Hello World")
</textarea></div>
<p>Both programs will print the same result, but it takes only one statement without using a semicolon or curly braces in Python.</p>
<h2 class="h2">Python Popular Frameworks and Libraries</h2>
<p>Python has wide range of libraries and frameworks widely used in various fields such as machine learning, artificial intelligence, web applications, etc. We define some popular frameworks and libraries of Python as follows.</p>
<ul class="points">
<li><strong>Web development (Server-side) -</strong> Django Flask, Pyramid, CherryPy</li>
<li><strong>GUIs based applications -</strong> Tk, PyGTK, PyQt, PyJs, etc.</li>
<li><strong>Machine Learning -</strong> TensorFlow, PyTorch, <strong>Scikit-learn</strong>, Matplotlib, Scipy, etc.</li>
<li><strong>Mathematics -</strong> Numpy, Pandas, etc.</li>
</ul>
<h2 class="h2">Python print() Function</h2>
<p>The <strong>print()</strong> function displays the given object to the standard output device (screen) or to the text stream file.</p>
<p>Unlike the other programming languages, Python <strong>print()</strong> function is most unique and versatile function.</p>
<p>The syntax of <strong>print()</strong> function is given below.</p>
<div class="codeblock"><textarea name="code" class="java">
print(*objects, sep=' ', end='\n', file=sys.stdout, flush=False)
</textarea></div>
<p>Let's explain its parameters one by one.</p>
<ul class="points">
<li><strong>objects -</strong> An object is nothing but a statement that to be printed. The * sign represents that there can be multiple statements.</li>
<li><strong>sep -</strong> The <strong>sep</strong> parameter separates the print values. Default values is ' '.</li>
<li><strong>end -</strong> The <strong>end</strong> is printed at last in the statement.</li>
<li><strong>file -</strong> It must be an object with a write(string) method.</li>
<li><strong>flush -</strong> The stream or file is forcibly flushed if it is true. By default, its value is false.</li>
</ul>
<p>Let's understand the following example.</p>
<h3 class="h3">Example - 1: Return a value</h3>
<div class="codeblock"><textarea name="code" class="java">
print("Welcome to javaTpoint.")

a = 10
# Two objects are passed in print() function
print("a =", a)

b = a
# Three objects are passed in print function
print('a =', a, '= b')
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Welcome to javaTpoint.
a = 10
a = 10 = b
</pre></div>
<p>As we can see in the above output, the multiple objects can be printed in the single <strong>print()</strong> statement. We just need to use comma (,) to separate with each other.</p>
<h3 class="h3">Example - 2: Using sep and end argument</h3>
<div class="codeblock"><textarea name="code" class="java">
a = 10
print("a =", a, sep='dddd', end='\n\n\n')
print("a =", a, sep='0', end='$$$$$')
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>a =dddd10


a =010$$$$$
</pre></div>
<p>In the first <strong>print()</strong> statement, we use the <strong>sep</strong> and <strong>end</strong> arguments. The given object is printed just after the <strong>sep</strong> values. The value of end parameter printed at the last of given object. As we can see that, the second <strong>print()</strong> function printed the result after the three black lines.</p>
<h2 class="h2">Taking Input to the User</h2>
<p>Python provides the <strong>input()</strong> function which is used to take input from the user. Let's understand the following example.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
name = input("Enter a name of student:")
print("The student name is: ", name)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter a name of student: Devansh
The student name is:   Devansh
</pre></div>
<p>By default, the <strong>input()</strong> function takes the string input but what if we want to take other data types as an input.</p>
<p>If we want to take input as an integer number, we need to typecast the <strong>input()</strong> function into an integer.</p>
<p><strong>For example -</strong></p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
a  = int(input("Enter first number: "))
b = int(input("Enter second number: "))

print(a+b)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Enter first number: 50
Enter second number: 100
150
</pre></div>
<p>We can take any type of values using <strong>input()</strong> function.</p>
<h2 class="h2">Python Operators</h2>
<p>Operators are the symbols which perform various operations on Python objects. Python operators are the most essential to work with the Python data types. In addition, Python also provides identify membership and bitwise operators. We will learn all these operators with the suitable example in following tutorial.</p>
<ul class="points">
<li><strong>Python Operators</strong></li>
</ul>
<h2 class="h2">Python Conditional Statements</h2>
<p>Conditional statements help us to execute a particular block for a particular condition. In this tutorial, we will learn how to use the conditional expression to execute a different block of statements. Python provides if and else keywords to set up logical conditions. The elif keyword is also used as conditional statement.</p>
<ul class="points">
<li><strong>Python if..else statement</strong></li>
</ul>
<h2 class="h2">Python Loops</h2>
<p>Sometimes we may need to alter the flow of the program. The execution of a specific code may need to be repeated several numbers of times. For this purpose, the programming languages provide various types of loops capable of repeating some specific code several times. Consider the following tutorial to understand the statements in detail.</p>
<ul class="points">
<li><strong>Python Loops</strong></li>
<li><strong>Python For Loop</strong></li>
<li><strong>Python While Loop</strong></li>
</ul>
<h2 class="h2">Python Data Structures</h2>
<p>Data structures are referred which can hold some data together or we say that they are used to store the data in organized way. Python provides built-in data structures such as <strong>list, tuple, dictionary, and set</strong>. We can perform complex tasks using data structures.</p>
<h3 class="h3">Python List</h3>
<p>Python list holds the ordered collection of items. We can store a sequence of items in a list. Python list is mutable which means it can be modified after its creation. The items of lists are enclosed within the square bracket [] and separated by the comma. Let's see the example of list.</p>
<div class="codeblock"><textarea name="code" class="java">
L1 = ["John", 102, "USA"]    
L2 = [1, 2, 3, 4, 5, 6]   
</textarea></div>
<p>If we try to print the type of L1, L2, and L3 using <strong>type()</strong> function then it will come out to be a list.</p>
<div class="codeblock"><textarea name="code" class="java">
print(type(L1))  
print(type(L2))  
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;class 'list'&gt;
&lt;class 'list'&gt;
</pre></div>
<p>To learn more about list, visit the following tutorial.</p>
<ul class="points">
<li><strong>Python List</strong></li>
<li><strong>Python List Functions</strong></li>
</ul>
<h3 class="h3">Python Tuple</h3>
<p>Python Tuple is used to store the sequence of immutable Python objects. The tuple is similar to lists since the value of the items stored in the list can be changed, whereas the tuple is immutable, and the value of the items stored in the tuple cannot be changed.</p>
<p>Tuple can be defined as follows</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
tup = ("Apple", "Mango" , "Orange" , "Banana")
print(type(tup))
print(tup)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;class 'tuple'&gt;
('Apple', 'Mango', 'Orange', 'Banana')
</pre></div>
<p>If we try to add new to the tuple, it will throw an error.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
tup = ("Apple", "Mango" , "Orange" , "Banana")

tup[2] = "Papaya"
print(tup)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Traceback (most recent call last):
  File "C:/Users/DEVANSH SHARMA/PycharmProjects/Hello/gamewithturtle.py", line 3, in <module>
    tup[2] = "Papaya"
TypeError: 'tuple' object does not support item assignment
</pre></div>
<p>The above program throws an error because tuples are immutable type. To learn more about tuple, visit the Python Tuples.</p>
<ul class="points">
<li><strong>Python Tuple</strong></li>
</ul>
<h3 class="h3">Python String</h3>
<p>Python string is a sequence of characters. It is a collection of the characters surrounded by single quotes, double quotes, or triple quotes. It can also define as collection of the Unicode characters. We can create a string as follows.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
# Creating string using double quotes
str1 = "Hi Python"
print(str1)
# Creating string using single quotes
str1 = 'Hi Python'
print(str1)
# Creating string using triple quotes
str1 = '''Hi Python'''
print(str1)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>Hi Python
Hi Python
Hi Python
</pre></div>
<p>Python doesn't support the character data-type. A single character written as 'p' is treated as a string of length 1.</p>
<p>Stings are also immutable. We can't change after it is declared. To learn more about the string, visit the following tutorial.</p>
<ul class="points">
<li><strong>Python Strings</strong> </li>
<li><strong>Python String Method</strong></li>
</ul>
<h3 class="h3">Dictionaries</h3>
<p>Python Dictionary is a most efficient data structure and used to store the large amount of data. It stores the data in the key-value pair format. Each value is stored corresponding to its key.</p>
<p>Keys must be a unique and value can be any type such as integer, list, tuple, etc.</p>
<p>It is a mutable type; we can reassign after its creation. Below is the example of creating dictionary in Python.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
employee = {"Name": "John", "Age": 29, "salary":250000,"Company":"GOOGLE"}    
print(type(employee))    
print("printing Employee data .... ")    
print(employee)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;class 'dict'&gt;
Printing Employee data .... 
{'Name': 'John', 'Age': 29, 'salary': 250000, 'Company': 'GOOGLE'}
</pre></div>
<p>The empty curly braces {} are used to create empty dictionary. To learn more, visit the complete tutorial of the dictionary.</p>
<ul class="points">
<li><strong>Python Dictionary</strong></li>
<li><strong>Python Dictionary Methods</strong></li>
</ul>
<h3 class="h3">Python Sets</h3>
<p>A Python set is a collection of unordered elements. Each element in set must be unique and immutable. Sets are mutable which means we can modify anytime throughout the program. Let's understand the example of creating set in Python.</p>
<p><strong>Example -</strong></p>
<div class="codeblock"><textarea name="code" class="java">
# Creating Set
Month = {"January", "February", "March", "April", "May", "June", "July"}
print(Month)
print(type(Month))
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>{'March', 'July', 'April', 'May', 'June', 'February', 'January'}
&lt;class 'set'&gt;
</pre></div>
<p>To get the more information about sets, visit the following resources.</p>
<ul class="points">
<li><strong>Python Sets</strong></li>
<li><strong>Python Set Methods</strong></li>
</ul>
<h2 class="h2">Python Functional Programming</h2>
<p>This section of Python tutorial defines some important tools related to functional programming such as <strong>lambda and recursive functions</strong>. These functions are very efficient in accomplishing the complex tasks. We define a few important functions, such as <strong>reduce, map,</strong> and <strong>filter.</strong> Python provides the <strong>functools</strong> module that includes various <strong>functional programming tools</strong>. Visit the following tutorial to learn more about functional programming.</p>
<ul class="points">
<li>Python Function</li>
<li>Python map() Function</li>
<li>Python filter() Function</li>
<li>Python reduce() Function</li>
<li>Python functool Module</li>
<li>Python Lambda Function</li>
</ul>
<h2 class="h2">Python File I/O</h2>
<p>Files are used to store data in a computer disk. In this tutorial, we explain the built-in file object of Python. We can open a file using Python script and perform various operations such as writing, reading, and appending. There are various ways of opening a file. We are explained with the relevant example. We will also learn to perform read/write operations on binary files.</p>
<ul class="points">
<li><strong>Python File I/O</strong></li>
</ul>
<h2 class="h2">Python Modules</h2>
<p>Python modules are the program files that contain a Python code or functions. There are two types of module in the Python - User-define modules and built-in modules. A module that the user defines, or we can say that our Python code saved with <strong>.py</strong> extension, is treated as a user-define module.</p>
<p>Built-in modules are predefined modules of Python. To use the functionality of the modules, we need to import them into our current working program.</p>
<ul class="points">
<li><strong>Python Modules</strong></li>
</ul>
<h2 class="h2">Python Exceptions</h2>
<p>An exception can be defined as an unusual condition in a program resulting in the interruption in the flow of the program.</p>
<p>Whenever an exception occurs, the program stops the execution, and thus the further code is not executed. Therefore, an exception is the run-time errors that are unable to handle to Python script. An exception is a Python object that represents an error.</p>
<ul class="points">
<li><strong>Python Exceptions</strong></li>
</ul>
<h2 class="h2">Python CSV</h2>
<p>A <strong>csv</strong> stands for "comma separated values", which is defined as a simple file format that uses specific structuring to arrange tabular data. It stores tabular data such as spreadsheet or database in plain text and has a common format for data interchange. A <strong>csv</strong> file opens into the excel sheet, and the rows and columns data define the standard format. Visit the following tutorial to learn the CSV module in detail.</p>
<ul class="points">
<li><strong>Python Read CSV File</strong></li>
<li><strong>Python Write CSV File</strong></li>
</ul>
<h2 class="h2">Python Sending Mail</h2>
<p>We can send or read a mail using the Python script. Python's standard library modules are useful for handling various protocols such as PoP3 and IMAP. We will learn how to send a mail with the popular email service SMTP from a Python script.</p>
<ul class="points">
<li><strong>Python Sending Emails</strong></li>
</ul>
<h2 class="h2">Python Magic Methods</h2>
<p>Python magic method is defined as the special method which adds "magic" to a class. It starts and ends with double underscores, for example, <strong>_init_</strong> or <strong>_str_.</strong></p>
<p>The built-in classes define many magic methods. The <strong>dir()</strong> function can be used to see the number of magic methods inherited by a class. It has two prefixes and suffix underscores in the method name.</p>
<ul class="points">
<li><strong>Python Magic Methods</strong></li>
</ul>
<h2 class="h2">Python Oops Concepts</h2>
<p>Everything in Python is treated as an object including integer values, floats, functions, classes, and none. Apart from that, Python supports all oriented concepts. Below is the brief introduction of oops concepts of Python.</p>
<ul class="points">
<li><strong>Classes and Objects -</strong> Python classes are the blueprint of the object. An object is a collection of data and method that act on the data.</li>
<li><strong>Inheritance -</strong> An inheritance is a technique where one class inherits the properties of other classes.</li>
<li><strong>Constructor -</strong> Python provides a special method <strong>__init__()</strong> which is known as a constructor. This method is automatically called when an object is instantiated.</li>
<li><strong>Data Member -</strong> A variable that holds data associated with a class and its objects.</li>
</ul>
<p>To read the oops concept in detail, visit the following resources.</p>
<ul class="points">
<li><strong>Python Oops Concepts</strong></li>
<li><strong>Python Object and classes</strong></li>
<li><strong>Python Constructor</strong></li>
<li><strong>Python Inheritance</strong></li>
<li><strong>Python Polymorphism</strong></li>
</ul>
<h2 class="h2">Python Advance Topics</h2>
<p>Python includes many advance and useful concepts that help the programmer to solve the complex tasks. These concepts are given below.</p>
<h3 class="h3">Python Iterator</h3>
<p>An iterator is simply an object that can be iterated upon. It returns one object at a time. It can be implemented using the two special methods, <strong>__iter__() and __next__()</strong>.</p>
<p>To learn more about the iterators visit our <strong>Python Iterators</strong> tutorial.</p>
<h3 class="h3">Python Generators</h3>
<p>The Generators are an easiest way of creating Iterators. To learn more about, visit our <strong>Python Generators</strong> tutorial.</p>
<h3 class="h3">Python Decorators</h3>
<p>These are used to modify the behavior of the function. Decorators provide the flexibility to wrap another function to expand the working of wrapped function, without permanently modifying it.</p>
<p>To learn more about, visit the <strong>Python Decorators</strong> tutorial.</p>
<h2 class="h2">Python Database Connections</h2>
<p>We can use various databases along with Python. You can learn the full tutorial to visit below resources. Python DBI-API acclaims standard sets of functionality to be included in the database connectivity modules for respective RDBMS products. We explain all important database connectivity using Python DBI-API.</p>
<h3 class="h3">Python MySQL</h3>
<p>Environment Setup</p>
<p>Database Connection</p>
<p>Creating New Database</p>
<p>Creating Tables</p>
<p>Insert Operation</p>
<p>Read Operation</p>
<p>Update Operation</p>
<p>Join Operation</p>
<p>Performing Transactions</p>
<h3 class="h3">Python MongoDB</h3>
<p>Python MongoDB</p>
<h3 class="h3">Python SQLite</h3>
<p>Python SQLite</p>
<h2 class="h2">Python CGI</h2>
<p>Python CGI stands for <strong>"Common Gateway Interface",</strong> which is used to define how to exchange information between the webserver and a custom Python scripts. The <strong>Common Gateway Interface</strong> is a standard for external gateway programs to interface with the server, such as HTTP Servers. To learn more about Python CGI, visit the following tutorial.</p>
<ul class="points">
<li><strong>Python CGI</strong></li>
</ul>
<h2 class="h2">Prerequisite</h2>
<p>Before learning Python, you must have the basic knowledge of programming concepts.</p>
<h2 class="h2">Audience</h2>
<p>Our Python tutorial is designed to help beginners and professionals.</p>
<h2 class="h2">Problem</h2>
<p>We assure that you will not find any problem in this Python tutorial. But if there is any mistake, please post the problem in contact form.</p>
<hr />
        
    </div>
   </div>
</div>
</body>
</html>
    