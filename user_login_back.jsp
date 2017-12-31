<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<%
    String email = request.getParameter("email");
    String pass = request.getParameter("password");
   String name=" ";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
        PreparedStatement ps = con.prepareStatement("select * from `user` where `email`=? and `password`=?");
        ps.setString(1, email);
        ps.setString(2, pass);
        ResultSet rs = ps.executeQuery();
        int x = 0;
        while (rs.next()) {
            if (rs.getString(2).equals(email) && rs.getString(5).equals(pass)) {
                x = 1;
            } else {
                x = 2;
            }
        }
        ResultSet r = ps.executeQuery();
        while(r.next()){
         name=r.getString(1);
         if(name==null) 
                name="";
            session.setAttribute("sessionCheck",name);
            }

        if (x == 1) {
            PreparedStatement ps5 = con.prepareStatement("INSERT INTO `login_access` (Email,Login_Time,Name)  VALUES(?,CURRENT_TIMESTAMP,?)");
            ps5.setString(1,email);
            ps5.setString(2,name);
            ps5.executeUpdate();
            response.sendRedirect("dashboard.jsp");          
    } else {
    out.println("<center>" + "<b>You entered an incorrect password or email. Try again</b>");
}%>
<jsp:include page="user_login.jsp"/>
<%
 
    } catch (Exception ex) {
        out.println(ex);
    } 
%>