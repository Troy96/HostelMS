<%@ page language="java" import="java.sql.*"%>
<%

String u	= request.getParameter("uname");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
PreparedStatement ps = con.prepareStatement("DELETE FROM user WHERE Name=?");
ps.setString(1, u);
ps.executeUpdate();
response.sendRedirect("admin_dashboard.jsp");

%>