<%@page contentType="text/html" pageEncoding="UTF-8"%>
<! DOCTYPE html>
<html> <!--html begins here-->
   	<!--Head section starts here-->
   		<%@ include file="includes/external.jsp" %>
   	<!--Head section code ends here-->
    
    <body style="padding-top: 50px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
	     	<title>Seemilar | SignUp</title>
	     	<%@ include file="includes/user_header.jsp" %>

	     <!--Header section code ends here-->
	     

			<div class="container-fluid decor_bg" id="content">
            <div class="container">
                <div class="col-lg-4 col-lg-offset-4 col-md-6 col-md-offset-3">
					<h2>REGISTRATION</h2>
						<form action="signup_back.jsp" method="POST">
							<div class="form-group">
								<input type="text" class="form-control" name="name" placeholder="Name" required="true" >
							</div>

							<div class="form-group">
								<input type="text" class="form-control" name="email" placeholder="E-mail" required="true" >
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="mobile" placeholder="Mobile No." required="true" >
							</div>
							<div class="form-group">
								<input type="date" class="form-control" name="joiningDate" placeholder="Book Hostel from..." required="true" >
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="duration" placeholder="Duration of stay (No. of months)" required="true" >
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="age" placeholder="Age" required="true"><br>
							<div class="form-group" id="form-extra2">
							 	<input type="radio" name="gender" value="Male"> Male
							 	<input type="radio" name="gender" value="Female"> Female
							 	<br>
							
							</div>
							<div class="form-group">
								<input type="text" class="form-control" required="true" name="password" placeholder="Password" pattern=".{6,}">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" required="true" name="course" placeholder="Course">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" required="true" name="gname" placeholder="Guardian's Name">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" required="true" name="gno" placeholder="Guardian's Number">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" required="true" name="Address" placeholder="Address">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="hobby" placeholder="Your Hobby">
							</div>
							<button type="submit" name="submit" class="btn btn-primary">Submit</button>
						</form>
				</div>
			</div>
		</div>

			<%@ include file="includes/footer.jsp" %>
		<!--Footer section code ends here-->


			
	</body>
</html>		 