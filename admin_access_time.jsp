<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*, java.util.*"%>

<! DOCTYPE html>

<html> <!--html begins here-->
    <!--Head section code starts here-->
      <%@ include file="includes/external.jsp" %>

      <head>
      <style>#fstyle{
          font-family: "Lato","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;

        }
          .down{
           
            margin-top: 60%;

          }
          .scroll{
            overflow:scroll;
          }

        </style>
      <title>Seemilar | Admin Dashboard | Access Logs</title>

      </head>
<body style="padding-top: 100px;"> <!--body begins here-->
     
       <!--Header section code goes here-->
      <%@ include file="includes/admin_header.jsp" %>
                <div class="scroll">
                <div class="col-md-6 col-md-offset-3">
                    <h3><center><u>Access Logs</u></center></h3>
                    <table class="table table-striped">
                      <thead>
                                <tr>
                                    <th>User Name</th>
                                    <th>Last Login Time</th>
                                </tr>
                      </thead>          
<%   String accUser1=(String) session.getAttribute("adminSession");
      String allLogins1=" ",sno1=" ";
       Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
        PreparedStatement ps = con.prepareStatement("SELECT Name,max(Login_Time) FROM login_access GROUP BY Name");
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
          sno1 = rs.getString(1);
          allLogins1 = rs.getTimestamp(2).toString();%>

          <tbody id="fstyle">
                  <tr>

                              <td><%=sno1%></td><td><%=allLogins1%></td>
                  </tr> 

          </tbody>
          <% } %>

           </table>
           <a href="clear_access_time.jsp" class="btn btn-danger" role="button">Clear All Logs</a>  
           </div>
           </div>

       

          <div class="down">
      <%@ include file="includes/footer.jsp" %>
    <!--Footer section code ends here-->
      </div>
   

</body>
</html>



      