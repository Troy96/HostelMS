<%@ page language="java" import="java.sql.*"%>
<html> <!--html begins here-->
   	<!--Head section code starts here-->
   		<%@ include file="includes/external.jsp" %>

   		<head>
   		
   		<title>Seemilar | Search users</title>
   	<!--Head section code ends here-->
   		</head>
    	 <body style="padding-top: 100px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
			<%@ include file="includes/admin_header.jsp" %>


<% 
  String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ",s7=" ",s8=" ",s9=" ",s10=" ",s11=" ",s12=" "; int n1=0,n2=0,calc=0; 
	String query = request.getParameter("sUser");	

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");

	PreparedStatement ps = con.prepareStatement("SELECT `course`,`gender`,`age`,`log`,`hobby`,`Amount`,`join_date`,`duration`,`address`,`guardian_name`,`guardian_no` FROM `user`,`room_details`,`login_access` WHERE user.Name=? AND login_access.Name=? AND room_details.Name=?");
        ps.setString(1,query);
        ps.setString(2,query);
        ps.setString(3,query);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            s1=rs.getString(1);
            s2=rs.getString(2);
            s3=rs.getString(3);
            s4=rs.getString(4);
            s5=rs.getString(5);
            s6=rs.getString(6);
            s7=rs.getString(7);
            s8=rs.getString(8);
            s10=rs.getString(9);
            s11=rs.getString(10);
            s12=rs.getString(11);
          

            

      }  
      
      try{
      n1=Integer.parseInt(s8);
      n2=Integer.parseInt(s6);
      calc=n1*n2;
      s9=Integer.toString(calc);  
      }catch(NumberFormatException e){
      out.println("<center>"+"HOSTEL NOT BOOKED YET"+"</center>");
    }      
        %>
      

      
      <div class="row decor_bg">
                <div class="col-md-6 col-md-offset-3">
                    <h3><center><u><%=query%>'s Profile</u></center></h3><hr>
                    
                    <table class="table table-striped">
                      <thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Particulars</th>
                                    <th>Description</th>
                                    
                                 
                                   
                                </tr>
                        </thead>
                       <tbody id="fstyle">
                          <tr>
                              <td>1</td><td><b>Full Name</b></td><td><%=query%></td>
                          </tr>
                          <tr>
                              <td>2</td><td><b>Course</b></td><td><%=s1%>
                          </tr>
                          <tr>
                              <td>3</td><td><b>Gender</b></td><td><%=s2%></td>
                          </tr>
                          <tr>
                              <td>4</td><td><b>Age</b></td><td><%=s3%></td>
                          </tr>
                          <tr>
                              <td>5</td><td><b>Guardian's Name</b></td><td><%=s11%></td>
                          </tr>
                          <tr>
                              <td>6</td><td><b>Guardian's Number</b></td><td><%=s12%></td>
                          </tr>
                          <tr>
                              <td>7</td><td><b>Permanent/Residential Address</b></td><td><%=s10%></td>
                          </tr>

                          <tr>
                              <td>8</td><td><b>Registration Date and Time</b></td><td><%=s4%></td>
                          </tr>
                          <tr>
                              <td>9</td><td><b>Hobby</b></td><td><%=s5%></td>
                          </tr>
                          <tr>
                              <td>10</td><td><b>Hostel Fees</b></td><td><%=s9%></td>
                          </tr>
                          <tr>
                              <td>11</td><td><b>Date of Joining Hostel</b></td><td><%=s7%></td>
                          </tr>
                          <tr>
                              <td>12</td><td><b>Stay in Hostel</b></td><td><%=s8%> months</td>
                          </tr>

                         
                                         

                        </tbody>
                  </table>
                  
                </div>            
            </div>
      
       <!--Footer section starts here-->
  <div class="space">
			<%@ include file="includes/footer.jsp" %>
</div>		<!--Footer section ends here-->			
	</body>
</html>		
