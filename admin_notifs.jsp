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
      <title>Seemilar | Admin Dashboard | Notifs</title>

      </head>
<body style="padding-top: 100px;"> <!--body begins here-->
     
       <!--Header section code goes here-->
      <%@ include file="includes/admin_header.jsp" %>
                <div class="scroll">
                <div class="col-md-6 col-md-offset-3">
                    <h3><center><u>Notifications</u></center></h3>
                    <table class="table table-striped">
                      <thead>
                                <tr>
                                    <th>Message From</th>
                                    <th>Message Details</th>
                                </tr>
                      </thead>          
<%   String accUser1=(String) session.getAttribute("adminSession");
      String userMessage=" ",userName=" ";
       Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
        PreparedStatement ps = con.prepareStatement("SELECT * FROM user GROUP BY Name");
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
          userName = rs.getString(1);
         userMessage = rs.getString(16);%>

          <tbody id="fstyle">
                  <tr>

                              <td><%=userName%></td><td><%=userMessage%></td>
                  </tr> 

          </tbody>
          <% } %>

           </table>
           <a href="clear_usrmsg.jsp" class="btn btn-danger" role="button">Clear All Messages</a>  
           </div>
           </div>

       

          <div class="down">
      <%@ include file="includes/footer.jsp" %>
    <!--Footer section code ends here-->
      </div>
   

</body>
</html>



      