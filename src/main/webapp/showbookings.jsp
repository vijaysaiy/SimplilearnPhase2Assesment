<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "servlets.Login" %>
<%@page import ="java.sql.*" %>
<%
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/flyaway";
String username = "root";
String password = "root";
String sql = null;
try{
	Class.forName(driver);
	} catch(ClassNotFoundException e){
		e.printStackTrace();
	}
Connection con =null;
Statement st = null;
ResultSet rs =null;
%>

<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href="css/admindashboard.css">
<meta charset="ISO-8859-1">

<title>Bookings</title>
</head>
<body>
<%

if(session.getAttribute("username")==null)
	{
		response.sendRedirect("adminlogin.jsp");
	}
%>
<div class="navbar">
<nav class ="navbar">
	<ul>
		<li><a class = "active" href = "welcome.jsp">Home</a></li>
		<li><a class ="logout" href = "adminlogin.jsp">Logout</a>
	</ul>
	</nav>
	</div>
<div class ="container">
	
		
<div class ="table">
	<table class ="bookingdata">
	<thread>
	<tr>
		<th scope = "col"> Id </th>
		<th scope = "col"> Passenger Name </th>
		<th scope = "col"> Email </th>
		<th scope = "col"> Phone </th>
		<th scope = "col"> CardNumber </th>
		<th scope = "col"> Source </th>
		<th scope = "col"> Destination</th>
		<th scope = "col"> Day </th>
		<th scope = "col"> No Of Persons </th>
		<th scope = "col"> Total Price(Rs)</th>
		</tr>
		</thread>
		<tbody>
		<h3>Booking Table</h3>
		
		<%
		
			con = DriverManager.getConnection(url,username,password);
			st = con.createStatement();
			sql = "select *from bookinglist";
			rs=st.executeQuery(sql);
			while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("id") %></td>
		<td><%=rs.getString("passengerName") %></td>
		<td><%=rs.getString("email") %></td>
		<td><%=rs.getString("phone") %></td>
		<td><%=rs.getString("cardNumber") %></td>
		<td><%=rs.getString("Source") %></td>
		<td><%=rs.getString("Destination") %></td>
		<td><%=rs.getString("Day") %></td>
		<td><%=rs.getString("noOfPersons") %></td>
		<td><%=rs.getString("TotalPrice") %></td>
		<%			
		}
		%>
		</tbody>
	
	</table>
</div>
</div>

</body>
</html>