<%@ page language="java" import="java.sql.*"%>


<%		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");

		String msg="No message";
		PreparedStatement ps = con.prepareStatement("UPDATE `user` SET `admin_message`=?");
		ps.setString(1,msg);
		ps.executeUpdate();
		response.sendRedirect("admin_notifs.jsp");

%>