
<! DOCTYPE html>
<html> <!--html begins here-->
   <!--Header section code starts here-->
   <head>
   	<%@ include file="includes/external.jsp" %>
   	<style>
   		#space{
   			margin-top:0px;
   		}
   		.loginoptions{
   			margin-top: 200px;
   		}
   		 .banner_image{
                padding-top: 0px;
                padding-bottom: 50px;
                text-align: center;
                color: #f8f8f8;
                background: url(images/IU-6.jpg) no-repeat center center;
                background-size: cover;
   		}
   	</style>
   <!--Header section code endsa here-->
    </head>
    <body style="padding-top: 45px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
	     	<title>Seemilar | Login</title>
	     	<%@ include file="includes/user_header.jsp" %>
	     <!--Header section code ends here-->
	     <div class="banner_image">
		<div class="container">
	    
				<div class="row" id="content">
					<div class="col-md-4 col-md-offset-4">
					<div class="loginoptions">
					<center>
						<a href="admin_login.jsp" class="btn btn-danger btn-lg" role="button">Click for Admin Login</a><hr>
						<a href="user_login.jsp" class="btn btn-primary btn-lg" role="button">Click for User Login</a>
					</center>
					</div>	





					
					</div>
					</div>
					</div>
					</div>




				

				<div id="space">	
				<%@ include file="includes/footer.jsp" %>
				</div>
	</body>
</html>		 