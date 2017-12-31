<%@page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html> <!--html begins here-->
   <!--Header section code starts here-->
   	<%@ include file="includes/external.jsp" %>
   <!--Header section code endsa here-->
    
    <body style="padding-top: 90px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
	     	<title>Seemilar | Forgot Password</title>
	     	<%@ include file="includes/admin_header.jsp" %>
	     <!--Header section code ends here-->
	     
			<div class="container-fluid decor_bg" id="login-panel">
				<div class="row" id="content">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-danger">
							<div class="panel-heading">
								<h4>FORGOT PASSWORD</h4>
							</div>
							<div class="panel-body">
								<form action="forgot_password_back.jsp" method="POST">
									<div class="form-group">
										<input type="email" class="form-control" name="email" placeholder="Email">
									</div>
									<div class="form-group">
										<input type="text" class="form-control" name="phone" placeholder="Mobile No.">
									</div>
									<button class="btn btn-danger">Fetch Password</button><hr>
									<p><a href="admin_login.jsp">Go back to Login</a></p>	

								
									
								</form></br>								
							</div>
							
						</div>
					</div> 
				</div>
			</div>
			<!--Footer section starts here-->
				<%@ include file="includes/footer.jsp" %>
			<!--Footer section code ends here-->	
	</body>
</html>		 