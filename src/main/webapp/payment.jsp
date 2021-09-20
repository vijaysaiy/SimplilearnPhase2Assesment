<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "com.dao.bookingDetails" %>
<%@ page import= "com.dao.searchDao" %>
<%
	bookingDetails.passengerName = request.getParameter("passname");
	bookingDetails.passengerEmail = request.getParameter("email");
	bookingDetails.passengerMobile = request.getParameter("phone");
	if(bookingDetails.passengerName.equals("")||bookingDetails.passengerEmail.equals("")||bookingDetails.passengerMobile.equals("")){
		out.print("Enter valid details");
	}
	else {
%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href="css/payment.css">
<meta charset="ISO-8859-1">
<title>Payment</title>
</head>
<body>
<%
if(session.getAttribute("username")==null)
	{
		response.sendRedirect("userlogin.jsp");
	}
%>
<div class="navbar">
<nav class ="navbar">
	<ul>
		<li><a class ="logout" href = "userlogin.jsp">Logout</a>
	</ul>
	</nav>
	</div>
<div class="center">
	<h1>Payment</h1>
	<form action="${pageContext.request.contextPath}/thankyou.jsp" method="post" class="form-container">
	<div class = "txt_field">
	<input type="text" class="form-control" id="name_on_card" name="name_on_card" required>
	<label for="card_details">Name on Card</label>
	</div>
	<div class="txt_field">
	<input type="number" class="form-control" id="card_details" name="card_details" required>
	<label for="card_details">Card Number</label>
	</div>
	<p align="left"><span><strong>Total fare = <br> <%=bookingDetails.ticketPrice%> X <%=searchDao.persons%> persons = Rs.<%=bookingDetails.ticketPrice*searchDao.persons%></strong></span></p>
	<div>
	<button type="submit" class="btn btn-success btn-block" value="Submit">Confirm Payment</button>
	</div>
	</form>
</div>

</body>
</html>
<%
} 
%>