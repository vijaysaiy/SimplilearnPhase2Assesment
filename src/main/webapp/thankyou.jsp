<%@page import="servlets.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.dao.bookingDetails" %>
<%@ page import = "com.dao.searchDao" %>
<%
bookingDetails.nameOnCard = request.getParameter("name_on_card");
bookingDetails.cardDetails =request.getParameter("card_details");


%>
<!-- update database -->
<%@ page import="java.io.IOException"%>
<%@ page import ="java.sql.Connection"%>
<%@ page import ="java.io.PrintWriter"%>
<%@ page import ="java.sql.DriverManager"%>
<%@ page import ="java.sql.PreparedStatement"%>
<%@ page import ="java.sql.SQLException"%>
<%@page import ="javax.servlet.ServletException"%>
<%@page import ="javax.servlet.http.HttpServlet"%>
<%@page import ="javax.servlet.http.HttpServletRequest"%>
<%@page import ="javax.servlet.http.HttpServletResponse"%>
<%
			String passengerName = bookingDetails.passengerName;
			String email = bookingDetails.passengerEmail;
			String phone = bookingDetails.passengerMobile;
			String cardNumber=bookingDetails.cardDetails;
			String Source = searchDao.source;
			String Destination =searchDao.destination;
			String Day = searchDao.date + " " + searchDao.day;
			int noOfPersons = searchDao.persons;
			int TotalPrice =bookingDetails.ticketPrice*searchDao.persons;
			
			String sql = "insert into bookinglist(passengerName,email,phone,cardNumber,Source,Destination,Day,noOfPersons,TotalPrice) values(?,?,?,?,?,?,?,?,?)";
			String url = "jdbc:mysql://localhost:3306/flyaway";
			String username = "root";
			String password = "root";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,passengerName);
			st.setString(2, email);
			st.setString(3,phone);
			st.setString(4,cardNumber);
			st.setString(5,Source);	
			st.setString(6,Destination);
			st.setString(7,Day);
			st.setInt(8,noOfPersons);
			st.setInt(9,TotalPrice);
			st.executeUpdate();
			
			con.close();
%>
<!-- Show Details -->    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel ="stylesheet" href="css/thankyou.css">
<title>Thank you</title>
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
		<li><a class ="logout" href = "welcome.jsp">Logout</a>
		<li><a onclick="window.print()" class="print">Print Ticket</a></li>
	</ul>
	</nav>
	</div>
<div class="container">
        <h1 align="center"><span><strong>Thank You</strong></span></h1>       
        <p align="center"><span><strong>Your ticket has been booked.</strong></span></p>
        <br>
        <h3>Ticket Summary</h3>
        <h4><strong><%=searchDao.source%> to <%=searchDao.destination%> | <%=searchDao.date%> (<%=searchDao.day%>)</strong></h4>
        <p align="left"><%=bookingDetails.flightBookingId%> - <%=bookingDetails.flightName%> (Travellers <%=searchDao.persons%>)</p><br>
        <br>
        <h3><strong>Passenger Summary</strong></h3>
        <h3>Booking Name-<%=bookingDetails.passengerName%> | Email- <%=bookingDetails.passengerEmail%> | Phone- <%=bookingDetails.passengerMobile%></h3>
        <br>
        <h3><strong>Payment Summary</strong></h3>
        <h4>Payment By-<%=bookingDetails.nameOnCard%> | Card No- <%=bookingDetails.cardDetails%></h4><br>
        <h2 align="right"><strong>Total Paid- Rs.<%=searchDao.persons*bookingDetails.ticketPrice%></strong></h2><br><br>
    </div>
</body>
</html>