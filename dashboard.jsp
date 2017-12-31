<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*, java.util.*"%>
<! DOCTYPE html>

<html> <!--html begins here-->
   	<!--Head section code starts here-->
   		<%@ include file="includes/external.jsp" %>
   		<head>
   			<script>
function date_time(id)
{
        date = new Date;
        year = date.getFullYear();
        month = date.getMonth();
        months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'Jully', 'August', 'September', 'October', 'November', 'December');
        d = date.getDate();
        day = date.getDay();
        days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
        h = date.getHours();
        if(h<10)
        {
                h = "0"+h;
        }
        m = date.getMinutes();
        if(m<10)
        {
                m = "0"+m;
        }
        s = date.getSeconds();
        if(s<10)
        {
                s = "0"+s;
        }
        result = ''+days[day]+' '+months[month]+' '+d+' '+year+' '+h+':'+m+':'+s;
        document.getElementById(id).innerHTML = result;
        setTimeout('date_time("'+id+'");','1000');
        return true;
}
</script>

   			<style>
   			.space2{
   				
   				margin-top: 0px;


   			}
   			.backimage {
				padding-top: 100px;
				padding-bottom: 100px;
				text-align: center;
				color: #f8f8f8;
				background: url(images/IU-5.jpg) no-repeat center center;
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
				.form-group{
					padding-left:35%;
					padding-right:35%;

				}
			
</style>

   		</head>
   		<title>Seemilar | Profile</title>
   	<!--Head section code ends here-->
    
    	<body style="padding-top: 30px;"> <!--body begins here-->
     
	     <!--Header section code goes here-->
			<%@ include file="includes/user_header.jsp" %>


	     <!--Header section ends here-->

	     <%	int c=0;String s1=" ",s2=" ",s3=" ",s4=" ",s5=" ",s6=" ",s7=" ";
    		String uname3=(String) session.getAttribute("sessionCheck");
    		if(uname3==null) uname3="";
    		for(int i=0;i<uname3.length();i++)
    		{
    		if(uname3.charAt(i)!=' ')
    		c++;
    		else
    		break;}
    		String uname4=uname3.substring(0,c); %>


	    <div class="backimage">
	    	<div class="profilebanner">
	    		<h3>Welcome , <%=uname4%></h3> 
			             <span id="date_time"></span>
			             <script type="text/javascript">window.onload = date_time('date_time');</script><hr></br>

			             <form action="profile.jsp">	
			             <button type="submit" class="btn btn-primary"><a href="profile.jsp"></a>Go to My Profile</button> 
			             </form>	
	    	</div>
	    </div>


		<div class="space2">
	    <!--Footer section starts here-->
			<%@ include file="includes/footer.jsp" %>
		<!--Footer section ends here-->	
		</div>
	</body>
</html>		