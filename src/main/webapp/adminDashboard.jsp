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

<title>Dashboard-Admin</title>
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
		<li><a href = "change-password.jsp">Change Password</a>
		<li><a href = "addflights.jsp">Add Flight</a>
		<li><a href = "showbookings.jsp">Show Bookings</a>
		<li><a class ="logout" href = "adminlogin.jsp">Logout</a>
	</ul>
	</nav>
	</div>
<div class ="container">
	<h2> Admin Dashboard </h2>
		
<div class ="table">
	<table class ="flightdata">
	<thread>
	<tr>
		<th scope = "col"> Flight Id </th>
		<th scope = "col"> Name </th>
		<th scope = "col"> source </th>
		<th scope = "col"> Destination </th>
		<th scope = "col"> Day </th>
		<th scope = "col"> Ticket Price </th>
		</tr>
		</thread>
		<tbody>
		<h3>Flight Table</h3>
		
		<%
		
			con = DriverManager.getConnection(url,username,password);
			st = con.createStatement();
			sql = "select *from airlineslist";
			rs=st.executeQuery(sql);
			while(rs.next()){
		%>
		<tr>
		<td><%=rs.getString("FlightID") %></td>
		<td><%=rs.getString("Name") %></td>
		<td><%=rs.getString("Source") %></td>
		<td><%=rs.getString("Destination") %></td>
		<td><%=rs.getString("Day") %></td>
		<td><%=rs.getString("TicketPrice") %></td>
		<%			
		}
		%>
		</tbody>
	
	</table>
</div>
</div>

</body>
</html>