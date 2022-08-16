<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="com.flyaway.practice.FlightBooking" %>
<%@ page import="com.flyaway.practice.SearchFlight" %>

<%
    FlightBooking.passenger_name = request.getParameter("pname");
    FlightBooking.passenger_email= request.getParameter("email");
    FlightBooking.passenger_phone= request.getParameter("phone");
    if (FlightBooking.passenger_name.equals("") || FlightBooking.passenger_email.equals("")|| FlightBooking.passenger_phone.equals("")) {
        out.println("Please enter valid passenger details");
    }
    else {
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Payment</title>
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
top:34%;
left:37.5%;
background-color:#e5d5d5;
}
.pay{
background-color: #4CAF50;
padding:6px 112px;
border:none;
color:black;
text-decoration:none;
display:inline-box;
}
.pay:hover{
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

<div class="frame" style="border:3px solid black;width:20%;border-radius:20px;padding:30px">
 <section class="container">
        <section class="row justify-content-center">
            <div class="row">
                <div class="col">
                    <h1 align="center" style="color:black;"><b>Checkout</b></h1>
                    <p align="center" style="color:black;"><span><strong>Enter Payment Details</strong></span></p><br>
                </div>
            </div>
           <section class="col-sm-6 col-md-3">
               <form action="${pageContext.request.contextPath}/final.jsp" method="post" class="form-container">
                   <div class="form-group">
                       <label for="card_details"><b>Name on Card</b></label>
                       <input type="text" class="form-control" id="name_on_card" name="name_on_card" placeholder="Enter Name on Card">
                   </div>
                   <br>
                   <div class="form-group">
                       <label for="card_details"><b>Card Number</b></label>&nbsp&nbsp
                       <input type="number" class="form-control" id="card_details" name="card_details" placeholder="Enter Card Number">
                   </div>
                   <br>
                   <p align="left"><span><strong>Total fare = <br> <%=FlightBooking.ticket_price%> X <%=SearchFlight.persons%> persons = Rs.<%=FlightBooking.ticket_price*SearchFlight.persons%></strong></span></p>
                   <br>
                   <button type="submit" class="pay" value="Pay">Confirm Payment</button>
               </form>
          </section>
        </section>
    </section>
    </div>
    <%
    }
    %>
</body>
</html>