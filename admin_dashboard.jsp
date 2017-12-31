<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*, java.util.*"%>
<! DOCTYPE html>

<html> <!--html begins here-->
   	<!--Head section code starts here-->
   		<%@ include file="includes/external.jsp" %>
   		<head>
   			

   			<style>
   			.space2{
   				
   				margin-top: 0px;


   			}
   			.form-control{
   				width:35%;
   			}
   			.backimage {
				padding-top: 148px;
				padding-bottom: 100px;
				text-align: center;
				color: #f8f8f8;
				background: url(images/IU-9.JPG) no-repeat center center;
				background-size: cover;}

				.profilebanner {
			    
    			padding-top: 1%;
				padding-bottom: 1%;
				margin-top: 9%;
				margin-bottom: 9.4%;
				margin-left: 27%;
				background-color: rgba(0, 0, 0, 0.7);
				max-width: 590px;
				}
				
				
</style>

   		</head>
   		<title>Seemilar | Profile</title>
   	<!--Head section code ends here-->
    
    	<body style="padding-top: 50px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
			<%@ include file="includes/admin_header.jsp" %>


	     <!--Header section ends here-->

	     <%	
    		String adminIn=(String) session.getAttribute("adminSession");
    		 %>


	    <div class="backimage">
	    	<div class="profilebanner">
	    	<center>
	    		<h3>Welcome , <%=adminIn%></h3> 
			             
	    			
			            <form action="admin_search_user.jsp" method="POST">
									<div class="form-group">
										<input type="text" class="form-control"name="sUser" placeholder="Search for User">
									</div>
			             			<button type="submit" class="btn btn-danger"><a href="profile.jsp"></a>Get Details</button> 
			            </form>
			   </center>         

	    	</div>
	    </div>


		<div class="space2">
	    <!--Footer section starts here-->
			<%@ include file="includes/footer.jsp" %>
		<!--Footer section ends here-->	
		</div>
	</body>
</html>		