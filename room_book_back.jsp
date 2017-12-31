<%@ page language="java" import="java.sql.*"%>

<%
	String book = request.getParameter("BookOption");
	String str=(String) session.getAttribute("sessionCheck");
	String op="1";

	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");

	


	PreparedStatement ps = con.prepareStatement("INSERT INTO `room_details` (Name,Email,Room_Type,Amount) SELECT Name,email,Type,Amount FROM user,room_spec WHERE user.Name=? AND room_spec.ID=?");
	ps.setString(1,str);
	ps.setString(2,book);
	ps.executeUpdate();
	PreparedStatement ps1 = con.prepareStatement("UPDATE user SET book_status=?");
	ps1.setString(1,op);
	ps1.executeUpdate();
	response.sendRedirect("dashboard.jsp");
	%>