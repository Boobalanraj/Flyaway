<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Flyaway</title>
</head>
<style>
	*{
	margin:0%;
	padding:0%;
	}
	.main{
	position:relative;
	}
	.bg{
	width: 80%;
    height: 100%;
	}
	.text-block{
		position:absolute;
		top: 35%;
 		left:43%;
 		font-size:50px;
 		color:black;
 		font-family:'Roboto',sans-serif;
	}
	.desp{
	position:absolute;
		top: 150%;
		left:6%;
 		font-size:20px;
 		color:black;
 		font-family:'Roboto',sans-serif;
 		font-weight:600;
	}
	.buttons{
		position:absolute;
		top:40%;
		right:5%;
		
	}
	.flight-button{
		background-color:#b4e1f1;
 		color: black;
  		padding: 14px 29px;
 		text-align: center;
 		font-size:25px;
 		text-decoration: none;
  		display: inline-block;
  		border-radius:15px;
  		font-family:'Roboto',sans-serif;
  		font-weight:600;
	}
	.admin-button{
		background-color:#b4e1f1;
 		color: black;
  		padding: 14px 25px;
 		text-align: center;
 		font-size:25px;
 		text-decoration: none;
  		display: inline-block;
  		border-radius:15px;
  		font-family:'Roboto',sans-serif;
  		font-weight:600;
	}
	.flight-button:hover,.admin-button:hover{
	background-color:grey;
	}
	
</style>
<body>
<div class="main">
	<img class="bg"alt="flight" src="image/index.svg">
	<div class="text-block">
	<h4>Flight Ticket Booking</h4>
	<p class="desp">Book International Flight Tickets at best prices</p>
	</div>
	<div class="buttons">
            <p><a href="travellocation.jsp" class="flight-button"><i class="fa fa-plane"></i> Book Flights</a></p>
            <p><br/><a href="login.jsp" class="admin-button"><i class="fa fa-user-circle-o"></i> Admin Login</a></p>
    </div>
</div>
</body>
</html>