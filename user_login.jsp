<%@page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html> <!--html begins here-->
   <!--Header section code starts here-->
   	<%@ include file="includes/external.jsp" %>
   <!--Header section code endsa here-->
    
    <body style="padding-top: 100px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
	     	<title>Seemilar | Login</title>
	     	<%@ include file="includes/user_header.jsp" %>
	     <!--Header section code ends here-->
	     
			<div class="container-fluid decor_bg" id="login-panel">
				<div class="row" id="content">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<h4>USER LOGIN</h4>
							</div>
							<div class="panel-body">
								<form action="user_login_back.jsp" method="POST">
									<div class="form-group">
										<input type="email" class="form-control" name="email" placeholder="Email">
									</div>
									<div class="form-group">
										<input type="password" class="form-control" name="password" placeholder="Password">
									</div>
									<button class="btn btn-primary">Login</button></form></br>

									<p><a href="forgot_password.jsp">Forgot Password?</a></p>
									
								</form></br>								
							</div>
							<div class="panel-footer"><p>Don't have an account?<a href="signup.jsp"> Register</a></p></div>	
						</div>
					</div> 
				</div>
			</div>
			<!--Footer section starts here-->
				<%@ include file="includes/footer.jsp" %>
			<!--Footer section code ends here-->	
	</body>
</html>		 