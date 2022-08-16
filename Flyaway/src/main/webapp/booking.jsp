<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import ="com.flyaway.practice.FlightBooking" %>
 <%
    FlightBooking.flight_booking_id = request.getParameter("flight_no");
    FlightBooking.ticket_price = Integer.parseInt(request.getParameter("ticket_price"));
    FlightBooking.flight_name = request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Booking Details</title>
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
left:37%;
}
.details{
align:center;
}
.submit{
background-color: #4CAF50;
padding:6px 150px;
border:none;
color:black;
text-decoration:none;
display:inline-box;
}
.submit:hover{
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

<div class="frame" style="border:3px solid black;width:20%;border-radius:20px;padding:30px">
<section class="container">
        <section class="row justify-content-center">
            <div class="row">
                <div class="col">
                    <h1 align="center" style="color:black;"><b>Booking Details</b></h1>
                    <p align="center" style="color:black;"><span><strong>Enter Passenger Details</strong></span></p><br>
                </div>
            </div>
            <section class="details">
                <form action="${pageContext.request.contextPath}/payment.jsp" method="post" class="form">
                    <div class="name">
                        <label for="pname"><b>Passenger Name</b></label>&nbsp
                        <input type="text" class="passanger-name" id="pname" name="pname" placeholder="Enter name of passanger">
                    </div>
                    <br>
                    <div class="email">
                        <label for="email"><b>Email address</b></label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        <input type="email" name="email" class="form-email" id="email" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <br>
                    <div class="phonenum">
                        <label for="phone"><b>Phone Number</b></label>&nbsp&nbsp&nbsp&nbsp
                        <input type="number" class="form-number" id="phone" name="phone" placeholder="Enter phone number">
                    </div>
                    <br>
                    <button type="submit" class="submit" value="Submit">Submit</button>
                </form>
            </section>
        </section>
    </section>
</div>
</body>
</html>