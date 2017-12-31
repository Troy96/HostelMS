<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*, java.util.*"%>


<! DOCTYPE html>

<html> <!--html begins here-->
   	<!--Head section code starts here-->
   		<%@ include file="includes/external.jsp" %>

   		<head>
   		
   		<title>Seemilar | Profile | Book Your Room</title>
   	<!--Head section code ends here-->
   		<style>

            .banner_image{
                padding-top: 75px;
                padding-bottom: 50px;
                text-align: center;
                color: #f8f8f8;
                background: url(images/IU-4.jpg) no-repeat center center;
                background-size: cover;
}
  
     
   				.space{
					margin-top:17%;
				}
				#fstyle{
					font-family: "Lato","Helvetica Neue",Helvetica,Arial,sans-serif;
    font-weight: 700;
				}
				#rightalign{
					margin-left:50%;
				}
   		</style>
    	</head>
    	 <body style="padding-top: 100px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
			<%@ include file="includes/user_header.jsp" %>


      
			<div class="row decor_bg">
                <div class="col-md-6 col-md-offset-3">
                    <h3><center>Room Specifications</center></h3><hr>
                    
                    <table class="table table-striped">
                    	<thead>
                                <tr>
                                    <th>S.No.</th>
                                    <th>Room Specs</th>
                                    <th>Amount (Rs)</th>
                                 
                                   
                                </tr>
                        </thead>
                        <tbody id="fstyle">
                        	<tr>
                          <form action=room_book_back.jsp method=POST>
                        		<td>1</td><td>Single Room</td><td>4500</td>
                        		<td>
                          <div class="form-group" id="form-extra2">
                              <input type="radio" name="BookOption" value="1"><td>Book</td></td></tr></div>
                        	<tr>
                        		<td>2</td><td>Double Room</td><td>5500</td><td>
                            <div class="form-group" id="form-extra2">
                            <input type="radio" name="BookOption" value="2"><td>Book</td></td></tr></div>
                        	
                        	<tr>
                        		<td>3</td><td>Triple Seater</td><td>6200</td>
                        	<td>
                          <div class="form-group" id="form-extra2">
                          <input type="radio" name="BookOption" value="3"><td>Book</td></td></tr>
                        	</div>
                          <div id="rightalign">
                          <%
                          String disp1=(String) session.getAttribute("sessionCheck"); String status=" ";
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root","");
                          PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE user.Name=?");
                          ps.setString(1,disp1);
                          ResultSet rs=ps.executeQuery();
                          while(rs.next()){
                            status=rs.getString(15);
                          }
                          if(status.equals("0")){
                          %>
                          
                          <tr><td><button type="submit" name="submit" class="btn btn-primary">Confirm Booking</button></td></tr>
                         
                          <% } else { %>

                          <tr><td><button type="submit" name="submit" class="btn btn-primary" disabled="disabled">Hostel Booked already</button></td></tr>

                          <% } %>


                          </div>
                          </form>
                          
                         

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