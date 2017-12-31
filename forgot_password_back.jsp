<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*, java.util.*"%>
<%
    String email = request.getParameter("email");
    String mobile = request.getParameter("phone");
    String s1= " ";
   
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
        PreparedStatement ps = con.prepareStatement("select * from `user` where `mob`=?");
        
        ps.setString(1, mobile);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
        	 s1=rs.getString(5);
        }
        out.println("<center>"+"Your password is :");
        %>
        <center><p><%=s1%></p></center>
        <jsp:include page="forgot_password.jsp"/>

       
