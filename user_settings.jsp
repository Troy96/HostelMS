<%@page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html> <!--html begins here-->
   	<!--Head section starts here-->
   		<%@ include file="includes/external.jsp" %>
   	<!--Head section code ends here-->
    
    <body style="padding-top: 100px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
	     <head>
	     	<title>Seemilar | SignUp</title>
	     	<style>
	     		.space1{
	     			margin-top: 0.1%;
	     		}
	     	</style>
	     </head>	
	     	<%@ include file="includes/user_header.jsp" %>


	     	<div class="container-fluid decor_bg" id="content">
            <div class="container">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
					<h3><center>Change Password</center></h3>
						<form action="settings_back.jsp" method="POST">
							<div class="form-group">
								<input type="password" class="form-control" name="old-password" placeholder="Old Password" required="true">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password" placeholder="New Password" required="true">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password1" placeholder="Re-type New Password" required="true">
							</div>
							
                             	<button type="submit" class="btn btn-primary">Change</button>						
						</form>
						<hr>
						<h3><center>Message to Admin</center></h3>
						<form action="settings_msgadmin.jsp" method="POST">
							<div class="form-group">
								<input type="password" class="form-control" name="password" placeholder="Your password..." required="true">
							</div>
							<div class="form-group">	
								<input type="text" class="form-control" name="msgadmin" placeholder="Type your message here..." required="true">
							</div>
							<button type="submit" class="btn btn-primary">Send</button>	
							</form>
				</div>
			</div>
		</div>

	    
			<div class="space1">
	    <!--Footer section starts here-->
			<%@ include file="includes/footer.jsp" %>
		<!--Footer section ends here-->
		</div>			
	</body>
</html>		
