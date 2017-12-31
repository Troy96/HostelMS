<%@page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html> <!--html begins here-->
   	<!--Head section starts here-->
   		<%@ include file="includes/external.jsp" %>
   	<!--Head section code ends here-->
    
    <body style="padding-top: 60px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
	     <head>
	     	<title>Seemilar | Admin Settings</title>
	     	<style>
	     		.space1{
	     			margin-top: 0.1%;
	     		}
	     	</style>
	     </head>	
	     	<%@ include file="includes/admin_header.jsp" %>


	     	<div class="container-fluid decor_bg" id="content">
            <div class="container">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
					<h3><center>Change Admin's Password</center></h3>
						<form action="admin_settings_back.jsp" method="POST">
							<div class="form-group">
								<input type="password" class="form-control" name="old-password" placeholder="Old Password" required="true">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password" placeholder="New Password" required="true">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" name="password1" placeholder="Re-type New Password" required="true">
							</div>
							
                             	<button type="submit" class="btn btn-danger">Change</button>						
						</form>
						<hr>
						<h3><center>Add Admin</center></h3>
						<form action="admin_settings_addadmin.jsp" method="POST">
							<div class="form-group">
								<input type="text" class="form-control" name="addname" placeholder="Admin's name" required="true">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="addpass" placeholder="Admin's Password" required="true">
							</div>
							<button type="submit" class="btn btn-danger">Add</button>						
						</form><hr>
						<h3><center>Remove User's Hostel</center></h3>
						<form action="admin_settings_delroom.jsp" method="POST">
							<div class="form-group">
								<input type="text" class="form-control" name="uroom" placeholder="User's Name" required="true">
							</div>
							
                             	<button type="submit" class="btn btn-danger">Remove Room</button>						
						</form>
						<h3><center>Delete User</center></h3>
						<form action="admin_settings_deluser.jsp" method="POST">
							<div class="form-group">
								<input type="text" class="form-control" name="uname" placeholder="User's name" required="true">
							</div>
							<button type="submit" class="btn btn-danger">Delete</button>						
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
