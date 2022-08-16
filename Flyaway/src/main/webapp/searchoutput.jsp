<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@ page import="com.flyaway.practice.SearchFlight" %>

<%
String driver ="com.mysql.cj.jdbc.Driver" ;

String connectionUrl="jdbc:mysql://localhost:3306/";
String dbName = "flyaway";
String userId = "root";
String password = "password";

String value = SearchFlight.getQuery();
try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
  System.out.println("the error message from search output:"+e);
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Flight Available</title>
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
top:30%;
left:40%;
}
.flight-table{
position:absolute;
top:50%;
left:30.5%;
}
td, th {
  border: 2px solid black;
  text-align: left;
  padding: 8px;
}
.bookticket{
background-color: #27b9ea;
padding:6px 20px;
border:none;
color:black;
text-decoration:none;
display:inline-box;
border-radius:10px;
}
.bookticket:hover{
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

<div class="container">
    <h2 align="center"><span><strong>Search Results</strong></span></h2>
    <p align="center"><span><strong><br>
        Showing available flights from <%=SearchFlight.start_point%> to  <%=SearchFlight.destination%> <br>
        <br>
        Date of travel : <%=SearchFlight.date%> (<%=SearchFlight.date%>)  <br>
        <br>
        No of travellers :  <%=SearchFlight.persons%>  <br>
    </p>
   </div>
    <table class="flight-table">
        <thead>
        <tr>
        	<th scope="col">Flight no</th>
            <th scope="col">Flight</th>
            <th scope="col">Source</th>
            <th scope="col">Destination</th>
            <th scope="col">Date</th>
            <th scope="col">Ticket Price</th>
            <th scope="col">Select</th>
        </tr>
        </thead>
        <tbody>
        <br><p align="center"><span><strong>Select a flight</strong></span></p><br>
        <%
            try{
                connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                statement =connection.createStatement();
                
                resultSet = statement.executeQuery(value);
                while(resultSet.next()){
        %>
        
        <tr bgcolor="#dddddd">
        	<td><%=resultSet.getInt("flight_no") %>
            <td><%=resultSet.getString("flight_name") %></td>
            <td><%=resultSet.getString("start_point") %></td>
            <td><%=resultSet.getString("destination") %></td>
            <td><%=SearchFlight.date%></td>
            <td><%=resultSet.getString("ticket_price") %></td>
            <td>
                <form action="${pageContext.request.contextPath}/booking.jsp" method="post">
                    <input type="hidden" id="name" name="name" value="<%=resultSet.getString("flight_name")%>">
                    <input type="hidden" id="ticket_price" name="ticket_price" value="<%=resultSet.getString("ticket_price")%>">
                    <input type="hidden" id="flight_no" name="flight_no" value="<%=resultSet.getInt("flight_no")%>">
                    <input type="submit" class="bookticket" value="Book This Flight">
                </form>
            </td>
        </tr>
        <%
                }
            } catch (Exception e) {
               System.out.println("Error from sql:"+e);
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>