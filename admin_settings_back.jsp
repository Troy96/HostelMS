<%@ page language="java" import="java.sql.*"%>
<%
String username=(String) session.getAttribute("adminSession");
String pass1	= request.getParameter("old-password");
String pass2	= request.getParameter("password");
String pass3	= request.getParameter("password1"); String op= " ";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
PreparedStatement ps = con.prepareStatement("SELECT * FROM admin1 where AdminName=?");
ps.setString(1, username);
ResultSet rs = ps.executeQuery();
while(rs.next()){
	op=rs.getString(2);
	}
if(!pass2.equals(pass3)){
	out.println("<center>" + "<b>You entered an incorrect password. Try again</b>");
}
else{
if(pass1.equals(op)){
PreparedStatement ps2 = con.prepareStatement("UPDATE admin1  SET AdminPass=? where AdminName=?");
ps2.setString(1,pass2);
ps2.setString(2,username);
ps2.executeUpdate();
response.sendRedirect("admin_dashboard.jsp");
}
else{
	out.println("<center>" + "<b>You entered an incorrect old password. Try again</b>");
}
}
%>