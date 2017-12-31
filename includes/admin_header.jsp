<div class="navbar navbar-inverse navbar-fixed-top"> 
	<div class="container"> 
		<div class="navbar-header"> 
			<a class="navbar-brand" href="index.jsp">Seemilar</a> </div> 
			<div class="collapse navbar-collapse" id="myNavbar"> 
				<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li> 
				
				

				<%
    			String s=(String) session.getAttribute("adminSession");
    			if(s==null){
    			%> 
    			<li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Register</a></li> 
				<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<% } else { %>

				
				
				<li><a href="admin_dashboard.jsp"><span class="glyphicon glyphicon-user"></span> Dashboard (<%=s%>)</a></li>
				<li><a href="admin_notifs.jsp"><span class="glyphicon glyphicon-tasks"></span>Notifications</a></li> 
				<li><a href="admin_settings.jsp"><span class="glyphicon glyphicon-tasks"></span>Settings</a></li>
				<li><a href="admin_access_time.jsp"><span class="glyphicon glyphicon-file"></span>  Access Logs</a></li>
				<li><a href="logoutprocess.jsp"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>

				<% } %>
		 

			</div>
		</div>
	</div>

						

