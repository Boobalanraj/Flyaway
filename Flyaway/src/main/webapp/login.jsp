<%@page import="com.flyaway.practice.Login" %>
<% Login.isLoggedIn = false;%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Admin Login</title>
</head>
<style>
*{
	margin:0%;
	padding:0%;
	font-family:'Roboto',sans-serif;
	}
.nav-bar{
position:absolute;
background-color:#b4e1f1;
width:100%;
height:8%;
}
.plane{
	position:absolute;
	color: black;
	font-size:30px;
	text-decoration: none;
  	font-family:'Roboto',sans-serif;
  	font-weight:600;
  	top:15%;
  	left:4%;
}
.admin-bar{
position:absolute;
right:2%;
width:10%;
top:20%;
}
.admin{
	top:2%;
 	position:absolute;
	color: black;
	font-size:25px;
	text-decoration: none;
	font-family:'Roboto',sans-serif;
  	font-weight:600;
}
.frame{
position:absolute;
top:35%;
left:33.5%;
padding-top:20%;
}
.main{
position:absolute;
top:50%;
padding:16px;
}

.container {
  padding: 16px;
  font-family:'Roboto',sans-serif;
}

.login{
background-color: #4CAF50;
padding:6px 103px;
border:none;
background-color:
color:black;
text-decoration:none;
display:inline-box;
}
.login:hover{
background-color:grey;
}
</style>
<body>

<div class="nav-bar" id="myNavbar">
    <a href="index.jsp" class="plane"><i class="fa fa-plane"></i>  FlyAway</a>
    <div class="admin-bar">
        <a href="login.jsp" class="admin"><i class="fa fa-user-circle-o"></i> Admin Login</a>
 	</div>
</div>
<div class="frame" style="border:3px solid black;width:25%;border-radius:20px;padding:30px">
<h2 align="center" style="font-family:'Roboto',sans-serif ;font-weight:600;" ><strong>Login   Form</strong></h2>
<div class="container" align="center">
       <form action="innerlogin" method="post">
     	<label for="email"><b>Email</b></label>&nbsp
     	<input type="email" placeholder="Enter Email Address" name="email" required><br>
     	<br>
     	<label for="password"><b>Password</b></label>
     	<input type="password" placeholder="Enter Password" name="password" required><br><br>
   
      <button class="login" type="submit">Login</button>
    </form>
    </div>
</div>
</body>
</html>