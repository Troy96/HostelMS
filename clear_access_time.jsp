<%@ page language="java" import="java.sql.*"%>


<%		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");


		PreparedStatement ps = con.prepareStatement("TRUNCATE TABLE login_access");
		ps.executeUpdate();
		response.sendRedirect("admin_access_time.jsp");

%>