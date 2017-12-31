
<%@ page language="java" import="java.sql.*"%>
<div class="navbar navbar-inverse navbar-fixed-top"> 
	<div class="container"> 
		<div class="navbar-header"> 
			<a class="navbar-brand" href="index.jsp">Seemilar</a> </div> 
			<div class="collapse navbar-collapse" id="myNavbar"> 
				<ul class="nav navbar-nav navbar-right">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> Home</a></li> 
				
				

				<%
    			String sessionUser=(String) session.getAttribute("sessionCheck");
    			if(sessionUser==null){
    			%> 
    			<li><a href="signup.jsp"><span class="glyphicon glyphicon-user"></span> Register</a></li> 
				<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				<% } else { %>

				
				
				<li><a href="dashboard.jsp"><span class="glyphicon glyphicon-user"></span> Dashboard (<%=sessionUser%>)</a></li> 
				<li><a href="user_settings.jsp"><span class="glyphicon glyphicon-tasks"></span>Settings</a></li>
				<li><a href="attendance.jsp"><span class="glyphicon glyphicon-tasks"></span>Attendance</a></li>
				<li><a href="room_book.jsp"><span class="glyphicon glyphicon-bed"></span>  Rooms</a></li>
				<li><a href="access_time.jsp"><span class="glyphicon glyphicon-file"></span>  Access Logs</a></li>
				<li><a href="logoutprocess.jsp"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>

				<% } %>
		 

			</div>
		</div>
	</div>

						

