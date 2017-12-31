<%@page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html> <!--html begins here-->
   <!--Header section code starts here-->
   <head>
   	<%@ include file="includes/external.jsp" %>
   <!--Header section code endsa here-->
   <style>
   #content{
   	padding-right: 0px;
   	padding-left: 0px;
   }
   </style>
   </head> 
    <body style="padding-top: 90px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
	     	<title>Seemilar | Login</title>
	     	<%@ include file="includes/admin_header.jsp" %>
	     <!--Header section code ends here-->
	     
			<div class="container-fluid decor_bg" id="login-panel">
				<div class="row" id="content">
					<div class="col-md-4 col-md-offset-4">
						<div class="panel panel-danger">
							<div class="panel-heading">
								<h4>ADMINISTRATIVE LOGIN</h4>
							</div>
							<div class="panel-body">
								<form action="admin_login_back.jsp" method="POST">
									<div class="form-group">
										<input type="text" class="form-control" name="username" placeholder="Username">
									</div>
									<div class="form-group">
										<input type="password" class="form-control" name="password" placeholder="Password">
									</div>
									<button class="btn btn-danger">Login</button></form></br>

									
								</form></br>	

							
							
						</div>
					</div> 
				</div>
			</div>
			<!--Footer section starts here-->
				<%@ include file="includes/footer.jsp" %>
			<!--Footer section code ends here-->	
	</body>
</html>		 