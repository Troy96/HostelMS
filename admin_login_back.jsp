<%@ page language="java" import="java.sql.*,java.io.*,java.servlet.*,java.util.*"%>
<%
    String name1 = request.getParameter("username");
    String pass1 = request.getParameter("password");
   String name2=" ";
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
        PreparedStatement ps = con.prepareStatement("select * from `admin1` where `AdminName`=? and `AdminPass`=?");
        ps.setString(1, name1);
        ps.setString(2, pass1);
        ResultSet rs = ps.executeQuery();
        int x = 0;
        while (rs.next()) {
            if (rs.getString(1).equals(name1) && rs.getString(2).equals(pass1)) {
                x = 1;
            } else {
                x = 2;
            }
        }
        
       ResultSet r = ps.executeQuery();
        while(r.next()){
         name2=r.getString(1);
            }
            session.setAttribute("adminSession",name2);
            
            
         

        if (x == 1) {
            
            response.sendRedirect("admin_dashboard.jsp");          
    } else {
    out.println("<center>" + "<b>You entered an incorrect password or email. Try again</b>");
}%>
<jsp:include page="admin_login.jsp"/>
<%
 
    } catch (Exception ex) {
        out.println(ex);
    } 
%>