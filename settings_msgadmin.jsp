<%@ page language="java" import="java.sql.*"%>
<%


String msgAdmin	= request.getParameter("msgadmin");
String uPass	= request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
PreparedStatement ps = con.prepareStatement("UPDATE `user` SET `admin_message`=? WHERE user.password=?");
ps.setString(1,msgAdmin);
ps.setString(2,uPass);

ps.executeUpdate();
response.sendRedirect("dashboard.jsp");

%>