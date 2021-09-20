package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class addflights extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String Name = request.getParameter("Name");
		String Source = request.getParameter("Source");
		String Destination = request.getParameter("Destination");
		String Day = request.getParameter("Day");
		String TicketPrice = request.getParameter("TicketPrice");
		
		try {
			insertFlights(Name,Source,Destination,Day,TicketPrice);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("Added Sucessfully");
		out.println("Redirecting to Add flights page");
		response.sendRedirect("addflights.jsp");
		
	}

	private void insertFlights(String name, String source, String destination, String day, String ticketPrice) throws ClassNotFoundException, SQLException {
		String sql = "insert into airlineslist(Name,Source,Destination,Day,TicketPrice) values(?,?,?,?,?)";
		String url = "jdbc:mysql://localhost:3306/flyaway";
		String username = "root";
		String password = "root";
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1,name);
		st.setString(2, source);
		st.setString(3,destination);
		st.setString(4,day);
		st.setString(5,ticketPrice);	
		st.executeUpdate();	
		
		con.close();
		
	}

}
