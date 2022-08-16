<%@page import="com.flyaway.practice.Login" %>
<%@page import="com.flyaway.practice.PasswordChange" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Password Change</title>
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
top:37%;
left:37.5%;
border:3px solid black;
width:20%;
border-radius:20px;
padding:10px 5px 50px 80px;
}
.changepass{
position:absolute;
background-color: green;
padding:7px 22px;
border:none;
color:black;
text-decoration:none;
display:inline-box;
}
.changepass:hover{
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

    
    <div class="frame">
       <div class="container">
        <h1>Password Change</h1>
            <%
            if (Login.isLoggedIn) {
            %>
                <form action="changepass" method="post">
                    <div>
                        <label class="sr-only">Email address : admin@gmail.com</label>
                    </div>
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="inputPassword" class="sr-only">New Password</label><br>
                        
                        <input type="password" name="newpassword" class="control" id="inputPass" placeholder="Enter a new password"><br>
                       <br> <small id="existpass" class="pass-help">&nbsp;&nbsp; Current Password :&nbsp;<%= Login.password %></small>
                    </div>
                    <br>
                    <button type="submit" class="changepass">Change Password</button>
                </form>
            </div> 
                       
         <%
            }
            else {
                out.print("You must Login first");
            }
            %>
           </div>
</body>
</html>