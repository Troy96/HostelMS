<%@ page language="java" import="java.sql.*"%>
<%
String input="0";
String u	= request.getParameter("uroom");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
PreparedStatement ps = con.prepareStatement("UPDATE user  SET book_status=? WHERE user.Name=?");
ps.setString(1,input);
ps.setString(2,u);
ps.executeUpdate();

PreparedStatement ps1 = con.prepareStatement("UPDATE room_details  SET Amount=? WHERE room_details.Name=?");
ps1.setString(1,input);
ps1.setString(2,u);
ps1.executeUpdate();

response.sendRedirect("admin_dashboard.jsp");

%>