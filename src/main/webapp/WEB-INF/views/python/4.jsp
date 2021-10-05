<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Datatypes</title>
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
		<h1 class="h1">Python Data Types</h1>
<p>Variables can hold values, and every value has a data-type. Python is a dynamically typed language; hence we do not need to define the type of the variable while declaring it. The interpreter implicitly binds the value with its type.</p>
<div class="codeblock"><textarea name="code" class="python">
a = 5
</textarea></div>
<p>The variable <strong>a</strong> holds integer value five and we did not define its type. Python interpreter will automatically interpret variables <strong>a</strong> as an integer type.</p>
<p>Python enables us to check the type of the variable used in the program. Python provides us the <strong>type()</strong> function, which returns the type of the variable passed.</p>
<p>Consider the following example to define the values of different data types and checking its type.</p>
<div class="codeblock"><textarea name="code" class="python">
a=10
b="Hi Python"
c = 10.5
print(type(a))
print(type(b))
print(type(c))
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;type 'int'&gt;
&lt;type 'str'&gt;
&lt;type 'float'&gt;
</pre></div>
<h2 class="h2">Standard data types</h2>
<p>A variable can hold different types of values. For example, a person's name must be stored as a string whereas its id must be stored as an integer.</p>
<p>Python provides various standard data types that define the storage method on each of them. The data types defined in Python are given below.</p>
<ol class="points">
<li><a href="#numbers">Numbers</a></li>
<li><a href="#SequenceType">Sequence Type</a></li>
<li><a href="#Boolean">Boolean</a></li>
<li><a href="#Set">Set</a></li>
<li><a href="#dictionary">Dictionary</a></li>
</ol>
<img src="https://static.javatpoint.com/python/images/python-data-types.png" alt="Python Data Types" />
<p>In this section of the tutorial, we will give a brief introduction of the above data-types. We will discuss each one of them in detail later in this tutorial.</p>
<h3 class="h3" id="numbers">Numbers</h3>
<p>Number stores numeric values. The integer, float, and complex values belong to a Python Numbers data-type. Python provides the <strong>type()</strong> function to know the data-type of the variable. Similarly, the <strong>isinstance()</strong> function is used to check an object belongs to a particular class.</p>
<p>Python creates Number objects when a number is assigned to a variable. For example;</p>
<div class="codeblock"><textarea name="code" class="python">
a = 5
print("The type of a", type(a))

b = 40.5
print("The type of b", type(b))

c = 1+3j
print("The type of c", type(c))
print(" c is a complex number", isinstance(1+3j,complex))
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>The type of a &lt;class 'int'&gt;
The type of b &lt;class 'float'&gt;
The type of c &lt;class 'complex'&gt;
c is complex number: True
</pre></div>
<p>Python supports three types of numeric data.</p>
<ol class="points">
<li><strong>Int -</strong> Integer value can be any length such as integers 10, 2, 29, -20, -150 etc. Python has no restriction on the length of an integer. Its value belongs to <strong>int</strong></li>
<li><strong>Float -</strong> Float is used to store floating-point numbers like 1.9, 9.902, 15.2, etc. It is accurate upto 15 decimal points.</li>
<li><strong>complex -</strong> A complex number contains an ordered pair, i.e., x + iy where x and y denote the real and imaginary parts, respectively. The complex numbers like 2.14j, 2.0 + 2.3j, etc.</li>
</ol>
<h3 id="SequenceType" class="h3">Sequence Type</h3>
<h3 class="h4">String</h3>
<p>The string can be defined as the sequence of characters represented in the quotation marks. In Python, we can use single, double, or triple quotes to define a string.</p>
<p>String handling in Python is a straightforward task since Python provides built-in functions and operators to perform operations in the string.</p>
<p>In the case of string handling, the operator + is used to concatenate two strings as the operation <em>"hello"+" python"</em> returns <em>"hello python"</em>.</p>
<p>The operator * is known as a repetition operator as the operation "Python" *2 returns 'Python Python'.</p>
<p>The following example illustrates the string in Python.</p>
<p><strong>Example - 1</strong></p>
<div class="codeblock"><textarea name="code" class="python">
str = "string using double quotes"
print(str)
s = '''A multiline
string'''
print(s)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>string using double quotes
A multiline
string
</pre></div>
<p>Consider the following example of string handling.</p>
<p><strong>Example - 2</strong></p>
<div class="codeblock"><textarea name="code" class="python">
str1 = 'hello javatpoint' #string str1  
str2 = ' how are you' #string str2  
print (str1[0:2]) #printing first two character using slice operator  
print (str1[4]) #printing 4th character of the string  
print (str1*2) #printing the string twice  
print (str1 + str2) #printing the concatenation of str1 and str2  
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>he
o
hello javatpointhello javatpoint
hello javatpoint how are you
</pre></div>
<h3 class="h4">List</h3>
<p>Python Lists are similar to arrays in C. However, the list can contain data of different types. The items stored in the list are separated with a comma (,) and enclosed within square brackets [].</p>
<p>We can use slice [:] operators to access the data of the list. The concatenation operator (+) and repetition operator (*) works with the list in the same way as they were working with the strings.</p>
<p>Consider the following example.</p>
<div class="codeblock"><textarea name="code" class="python">
list1  = [1, "hi", "Python", 2]  
#Checking type of given list
print(type(list1))

#Printing the list1
print (list1)

# List slicing
print (list1[3:])

# List slicing
print (list1[0:2]) 

# List Concatenation using + operator
print (list1 + list1)

# List repetation using * operator
print (list1 * 3)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>[1, 'hi', 'Python', 2]
[2]
[1, 'hi']
[1, 'hi', 'Python', 2, 1, 'hi', 'Python', 2]
[1, 'hi', 'Python', 2, 1, 'hi', 'Python', 2, 1, 'hi', 'Python', 2]
</pre></div>
<h3 class="h3">Tuple</h3>
<p>A tuple is similar to the list in many ways. Like lists, tuples also contain the collection of the items of different data types. The items of the tuple are separated with a comma (,) and enclosed in parentheses ().</p>
<p>A tuple is a read-only data structure as we can't modify the size and value of the items of a tuple.</p>
<p>Let's see a simple example of the tuple.</p>
<div class="codeblock"><textarea name="code" class="python">
tup  = ("hi", "Python", 2)  
# Checking type of tup
print (type(tup))  

#Printing the tuple
print (tup)

# Tuple slicing
print (tup[1:])  
print (tup[0:1])  

# Tuple concatenation using + operator
print (tup + tup)  

# Tuple repatation using * operator
print (tup * 3)   

# Adding value to tup. It will throw an error.
t[2] = "hi"
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;class 'tuple'&gt;
('hi', 'Python', 2)
('Python', 2)
('hi',)
('hi', 'Python', 2, 'hi', 'Python', 2)
('hi', 'Python', 2, 'hi', 'Python', 2, 'hi', 'Python', 2)

Traceback (most recent call last):
  File "main.py", line 14, in &lt;module&gt;
    t[2] = "hi";
TypeError: 'tuple' object does not support item assignment
</pre></div>
<h3 class="h3" id="dictionary">Dictionary</h3>
<p>Dictionary is an unordered set of a key-value pair of items. It is like an associative array or a hash table where each key stores a specific value. Key can hold any primitive data type, whereas value is an arbitrary Python object.</p>
<p>The items in the dictionary are separated with the comma (,) and enclosed in the curly braces {}.</p>
<p>Consider the following example.</p>
<div class="codeblock"><textarea name="code" class="python">
d = {1:'Jimmy', 2:'Alex', 3:'john', 4:'mike'}   

# Printing dictionary
print (d)

# Accesing value using keys
print("1st name is "+d[1]) 
print("2nd name is "+ d[4])  

print (d.keys())  
print (d.values())  
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>1st name is Jimmy
2nd name is mike
{1: 'Jimmy', 2: 'Alex', 3: 'john', 4: 'mike'}
dict_keys([1, 2, 3, 4])
dict_values(['Jimmy', 'Alex', 'john', 'mike'])
</pre></div>
<h3 class="h3" id="Boolean">Boolean</h3>
<p>Boolean type provides two built-in values, True and False. These values are used to determine the given statement true or false. It denotes by the class bool. True can be represented by any non-zero value or 'T' whereas false can be represented by the 0 or 'F'. Consider the following example.</p>
<div class="codeblock"><textarea name="code" class="python">
# Python program to check the boolean type
print(type(True))
print(type(False))
print(false)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>&lt;class 'bool'&gt;
&lt;class 'bool'&gt;
NameError: name 'false' is not defined
</pre></div>
<h3 class="h3" id="Set">Set</h3>
<p>Python Set is the unordered collection of the data type. It is iterable, mutable(can modify after creation), and has unique elements. In set, the order of the elements is undefined; it may return the changed sequence of the element. The set is created by using a built-in function <strong>set(),</strong> or a sequence of elements is passed in the curly braces and separated by the comma. It can contain various types of values. Consider the following example.</p>
<div class="codeblock"><textarea name="code" class="python">
# Creating Empty set
set1 = set()

set2 = {'James', 2, 3,'Python'}

#Printing Set value
print(set2)

# Adding element to the set

set2.add(10)
print(set2)

#Removing element from the set
set2.remove(2)
print(set2)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>{3, 'Python', 'James', 2}
{'Python', 'James', 3, 2, 10}
{'Python', 'James', 3, 10}
</pre></div>
<hr />
        
    </div>
   </div>
</div>
</body>
</html>
