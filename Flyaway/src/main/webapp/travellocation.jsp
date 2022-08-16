<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Tickect Booking</title>
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
left:40%;
border:3px solid black;
width:15%;
border-radius:20px;
padding-top:10px;
padding-bottom:10px;
padding-left:40px;
}
.search-submit{
background-color: #4CAF50;
padding:3px 60px;
border:none;
align:center;
color:black;
text-decoration:none;
display:inline-box;
}
.search-submit:hover{
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
<section class="bg">
    <section class="row-center">
        <div class="row">
            <div class="col">
                <h2 align="center" style="color:black;"><b>Ticket Booking</b></h2>
                <br>
            </div>
        </div>
        <section class="container">
            <form action="searchflight" class="form" method="post">
                <div class="form-date">
                    <label for="date">Date</label>
                    <input type="date"  class="date" name="date" placeholder="Travel Date..">
                </div><br>
                <div class="form-group">
                    <label for="Start_point">Start_point</label>
                    <select  class="form-options"  name="start_point">
                        <option value="India">India</option>
                        <option value="USA">USA</option>
                        <option value="Singapore">Singapore</option>
                         <option value="London">London</option>
                        <option value="Dubai">Dubai</option>
                    	<option value="New York">New York</option>
                    </select>
                </div><br>
                <div class="form-group">
                    <label for="destination">Destination</label>
                    <select  class="form-land" name="destination">
                        <option value="USA">USA</option>
                        <option value="UK">UK</option>
                        <option value="India">India</option>
                        <option value="London">London</option>
                        <option value="Dubai">Dubai</option>
                    </select>
                </div><br>
                <div>
                    <label for="persons">No of Persons</label>
                    <select class="form-control" id="persons" name="persons">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </div>
                <br>
                <button type="submit" class="search-submit" value="Submit">Search Flights</button>
            </form>
        </section>
    </section>
</section>
</div>
</body>
</html>