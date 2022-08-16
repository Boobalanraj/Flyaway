<%@page import="java.sql.*" %>
<%@page import="com.flyaway.practice.Login" %>

<%
String driver ="com.mysql.cj.jdbc.Driver" ;

String connectionUrl="jdbc:mysql://localhost:3306/";
String dbName = "flyaway";
String userId = "root";
String password = "password";

try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&family=Ruda:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Dashboard</title>
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
font-family:'Roboto',sans-serif;
top:10%;
left:36.5%;
}
.change{
border-radius: 5px;
background-color: #4CAF50;
padding:15px 20px;
border:none;
color:black;
text-decoration:none;
display:inline-box;
}
.newflight{
position:absolute;
top:50%;
left:35%;
background-color: #4CAF50;
padding:15px 20px;
border:none;
color:black;
text-decoration:none;
display:inline-box;
border-radius: 5px;
}
.out{
position:absolute;
top:50%;
left:65%;
background-color: red;
padding:15px 20px;
border:none;
color:black;
text-decoration:none;
display:inline-box;
border-radius: 5px;
}
.change:hover,.newflight:hover,.out:hover{
background-color:grey;
}
.data{
position:absolute;
top:28%;
left:43%;
font-size:35px;
}
.flight-table{
position:absolute;
top:35%;
left:32%;
}
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
<body>

<div class="nav-bar" id="myNavbar">
    <a href="index.jsp" class="plane"><i class="fa fa-plane"></i>  FlyAway</a>
    <div class="admin-bar">
        <a href="login.jsp" class="admin"><i class="fa fa-user-circle-o"></i> Admin Login</a>
 	</div>
</div>

<%
    if (Login.isLoggedIn) {
%>

<div class="container">
    <h2 align="center"><b>Admin Dashboard</b></h2>
    <p align="center"><span><strong>You are LoggedIn as : <%=Login.email%>. Your Password is : <%=Login.password%></strong></span></p><br>
    <br>
    <div class="row">
        <div class="changepass">
            <form method="post" action="${pageContext.request.contextPath}/changepass.jsp">
                <button type="submit" class="change">Change Password</button>
            </form>
        </div>
        <div class="addflight">
            <form method="post" action="${pageContext.request.contextPath}/addflight.jsp">
                <button type="submit" class="newflight">Add new Flight</button>
            </form>&ensp;
        </div>
        <div class="logout">
            <form method="post" action="${pageContext.request.contextPath}/login.jsp">
                <button type="submit" class="out">Logout</button>
            </form>
        </div>
        <br>
    </div>
</div>
<p class="data"><strong>Flight Table Data</strong></p>
<section class="flight-table">
    <section class="row justify-content-center">
        <section>
            <table class="table table-hover table-striped" border="1">
                <thead>
                <tr>
                    <th scope="col">Flight ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Source</th>
                    <th scope="col">Destination</th>
                    <th scope="col">Date</th>
                    <th scope="col">Ticket Price</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try{
                        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
                        statement=connection.createStatement();
                        String sql ="SELECT * FROM flyaway";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
                <tr>
                    <td><%=resultSet.getString("flight_no") %></td>
                    <td><%=resultSet.getString("flight_name") %></td>
                    <td><%=resultSet.getString("start_point") %></td>
                    <td><%=resultSet.getString("destination") %></td>
                    <td><%=resultSet.getString("date") %></td>
                    <td><%=resultSet.getString("ticket_price") %></td>
                </tr>
                <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                    else {
                        out.print("You must Login first");
                    }
                %>
                </tbody>
            </table>
        </section>
    </section>
</section>
</body>
</html>