<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*, java.util.*"%>
<! DOCTYPE html>

<html> <!--html begins here-->
   	<!--Head section code starts here-->
   		<%@ include file="includes/external.jsp" %>
   		<head>
   		</head>
   			<style>
   				.backimage {
   				margin-top:50%;
				padding-top: 15px;
				padding-bottom: 50px;
				text-align: center;
				color: #f8f8f8;
				background: url(images/gang.jpeg);
				background-size: cover;}
				.space{
					margin-top:50%;
				}
				.thumbnail{
					background-color: grey;
				}
   			</style>

   		</head>
   		<title>Seemilar | Profile | Seemilar Profiles</title>
   	<!--Head section code ends here-->
    
    	 <body style="padding-top: 70px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
			<%@ include file="includes/header.jsp" %>

			<%
			String s0 =" ",s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ";
			String req = request.getParameter("search");
			Class.forName("com.mysql.jdbc.Driver");
      		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/seemilar","root",""); 
      		PreparedStatement ps = con.prepareStatement("select * from user where Name=? or gender=? or course=? or ptype=?");
      		ps.setString(1,req);
      		ps.setString(2,req);
      		ps.setString(3,req);
      		ps.setString(4,req);
      		ResultSet rs = ps.executeQuery(); %>
      		
      		<%
      		while(rs.next()){
      		 s0=rs.getString(1);
      		 s1=rs.getString(2);
      		 s2=rs.getString(3);
      		 s3=rs.getString(4);
      		 s5=rs.getString(6);
      		 s6=rs.getString(7); %>

      		 
      		<div class="col-md-3 col-sm-6 home-feature">
      		<div class="thumbnail">
			<div class="profilebanner">
			<p>Name :  <%=s0%></p>
			<p>Email :  <%=s1%></p>
			<p>Age :  <%=s2%></p>
			<p>Gender :  <%=s3%></p>
			<p>Course:  <%=s5%></p>
			<p>Personality Type:  <%=s6%></p>
			</div>
			</div>
			</div> 
		
      <%	}
    		  %>
    		
    	<div class="space">
			<%@ include file="includes/footer.jsp" %>
		</div>
	</body>
</html>		