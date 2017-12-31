<<%@ page language="java" import="java.sql.*"%>

<%

String name 	= request.getParameter("name");
String email	= request.getParameter("email");
String age		= request.getParameter("age");
String gender 	= request.getParameter("gender");
String password = request.getParameter("password");
String course 	= request.getParameter("course");
String mob 		= request.getParameter("mobile");
String hob		= request.getParameter("hobby");
String jDate	=request.getParameter("joiningDate");
String dStay	=request.getParameter("duration");
String add		=request.getParameter("Address");
String gName	=request.getParameter("gname");
String gNo		=request.getParameter("gno");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
PreparedStatement ps = con.prepareStatement("INSERT INTO user VALUES(?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP,?,?,?,?,?,'0','No message')");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,age);
ps.setString(4,gender);
ps.setString(5,password);
ps.setString(6,course);
ps.setString(7,mob);
ps.setString(8,hob);
ps.setString(9,jDate);
ps.setString(10,dStay);
ps.setString(11,add);
ps.setString(12,gName);
ps.setString(13,gNo);
ps.executeUpdate();
response.sendRedirect("user_login.jsp");

%>
