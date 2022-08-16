<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="com.flyaway.practice.FlightBooking" %>
<%@ page import="com.flyaway.practice.SearchFlight" %>

<%
    FlightBooking.name_on_card = request.getParameter("name_on_card");
    FlightBooking.card_details = request.getParameter("card_details");
    if (FlightBooking.name_on_card.equals("") || FlightBooking.card_details.equals("")) {
        out.println("Please enter valid card details");
    }
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Ticket Details</title>
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
.container{
position:absolute;
top:25%;
left:23%;
border:3px solid black;
width:50%;
background-color:lightgrey;
border-radius:20px;
padding:30px
}
.print{
text-align:center;
background-color: #9e6ffc;
padding:6px 100px;
border:none;
background-color:
color:black;
text-decoration:none;
display:inline-box;
}
.print:hover{
background-color:white;
}
</style>
<body>

<div class="nav-bar" id="myNavbar">
    <a href="index.jsp" class="plane"><i class="fa fa-plane"></i>  FlyAway</a>
    <div class="admin-bar">
        <a href="login.jsp" class="admin"><i class="fa fa-user-circle-o"></i> Admin Login</a>
 	</div>
</div>

 <div class="container">
        <h2 align="center"><span><strong>Thank You</strong></span></h2>
        <p align="center"><span><strong>Your ticket has been booked. The summary/details are as follows</strong></span></p>
        <br>
        <h3>Ticket Summary</h3>
        <h4><strong><%=SearchFlight.start_point%> to <%=SearchFlight.destination%> | <%=SearchFlight.date%> (<%=SearchFlight.date%>)</strong></h4>
        <p align="left"><%=FlightBooking.flight_booking_id%> - <%=FlightBooking.flight_name%> (Travellers <%=SearchFlight.persons%>)</p><br>
        <br>
        <h3><strong>Passenger Summary</strong></h3>
        <h3>Booking Name-<%=FlightBooking.passenger_name%> | Email- <%=FlightBooking.passenger_email%> | Phone- <%=FlightBooking.passenger_phone%></h3>
        <br>
        <h3><strong>Payment Summary</strong></h3>
        <h4>Payment By-<%=FlightBooking.name_on_card%> | Card No- <%=FlightBooking.card_details%></h4><br>
        <h3 align="right"><strong>Total Paid- Rs.<%=SearchFlight.persons*FlightBooking.ticket_price%></strong></h3><br><br>
        <p><button onclick="window.print()" class="print" ><b>Print Ticket</b></button></p>
    </div>
</body>
</html>