<%@ page language="java" import="java.sql.*"%>
<%

String adminName	= request.getParameter("addname");
String adminPass	= request.getParameter("addpass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
PreparedStatement ps = con.prepareStatement("INSERT INTO admin1 (AdminName,AdminPass) VALUES(?,?)");
ps.setString(1, adminName);
ps.setString(2, adminPass);
ps.executeUpdate();
response.sendRedirect("admin_dashboard.jsp");

%>