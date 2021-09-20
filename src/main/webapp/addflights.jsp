<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("username")==null)
	{
		response.sendRedirect("adminlogin.jsp");
	}
%>
<div class = "center">
	<h1>Add Flights</h1>
	<form action="addflights" method="post" class="form-container">
	<div class ="txt_field">
	<input type = "text"  name = "Name" required>
	<label for = "Name">Name</label>
	</div>
	<div class ="txt_field">
	<input type = "text" name = "Source" required>
	<label for = "source">Source</label>
	</div>
	<div class ="txt_field">
	<input type = "text" name = "Destination" required>
	<label for = "Destination">Destination</label>
	</div>
	<div class ="txt_field">
	<input type = "text"  name = "Day" required>
	<label for = "Day">Day</label>
	</div>
	<div class ="txt_field">
	<input type = "number" name = "TicketPrice" required>
	<label for = "TicketPrice">Ticket Price(Rs)</label>
	</div>
	<button type = "submit" value = "addflights">Submit </button>
	</form>
</div>


</body>
</html>