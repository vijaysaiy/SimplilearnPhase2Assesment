<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="com.dao.bookingDetails" %>
<%
	bookingDetails.flightBookingId = request.getParameter("flight_id");
	bookingDetails.ticketPrice= Integer.parseInt(request.getParameter("ticket_price"));
	bookingDetails.flightName=request.getParameter("name");
%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href="css/bookingdetails.css">
<meta charset="ISO-8859-1">
<title>Booking Details</title>
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
		<li><a class ="logout" href = "userlogin.jsp">Logout</a>
	</ul>
	</nav>
	</div>

<div class = "center">
	<h1>Enter Details</h1>
	<form class="form-container" action="${pageContext.request.contextPath}/payment.jsp" method="post">
	<div class ="txt_field">
	<input type = "text" id ="passname" name ="passname" required>
	<label for="passname">Passenger Name</label>
	</div>
	<div class="txt_field">
	<input type = "email" id ="emal" name ="email" aria-describedby="emailHelp" required>
	<label for="email">Email</label>
	</div>
	<div class = "txt_field">
	<input type="number"  id="phone" name="phone" required >
	<label for="phone">Phone</label>
	</div>
	<div>
	<button type="submit" class="btn btn-success btn-block" value="Submit">Submit</button>
	</div>
	</form>
</div>


</body>
</html>