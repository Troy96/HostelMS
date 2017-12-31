<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.io.*,java.sql.*, java.util.*"%>
<! DOCTYPE html>
<html> <!--html begins here-->
			



<head> <!--head begins here-->
	<title>Welcome | Seemilar | Home</title>
	
         
         <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
         <title>Seemilar | Home </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >


        <!--jQuery library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


        <!--Latest compiled and minified JavaScript--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
       
    <!--External css--> 
     <link rel="stylesheet" types="text/css" href="styles.css">
     <style>
            .banner_image{
                padding-top: 75px;
                padding-bottom: 50px;
                text-align: center;
                color: #f8f8f8;
                background: url(images/IU-4.jpg) no-repeat center center;
                background-size: cover;
}
            #loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  width: 120px;
  height: 120px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}

#myDiv {
  display: none;
  text-align: center;
     </style>
     
    
</head> <!--head closes here-->
<!--Head section code ends here-->   

    <body onload="myFunction()" style="margin:0;" style="padding-top": 50px;> <!--body begins here-->
     <div id="loader"></div>

      <div style="display:none;" id="myDiv" class="animate-bottom">
	     <!--Header section code goes here-->
	     <%@ include file="includes/admin_header.jsp" %>

	     <!--Header section ends here-->
			


			<div class="content"> 
			<div class="banner_image">
				<div class="container">
					<center>
						<div class="banner_content">
			                <h1>Welcome to Seemilar</h1>
                            <p>A Hostel Management System</p><br>
							<a href="signup.jsp" class="btn btn-danger btn-lg active">Register</a>
						</div>
					</center> 
				</div>
			</div>
		</div>

			
			
		 <!--footer section starts here-->
			
	<%int status=0; 
   try{
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYDB","root",""); 
      PreparedStatement ps =con.prepareStatement("SELECT counter FROM HITSCOUNTER");
      ResultSet rs =ps.executeQuery();
      while(rs.next()){
      status =rs.getInt(1);
      }
      
   }catch(Exception e){
      System.out.println(e);
   }
    
    Integer hitsCount = (Integer)application.getAttribute("hitCounter");

         if( hitsCount ==null || hitsCount == 0 ) {
    hitsCount = status;
    hitsCount++;
    }else{%>
         
    <% 
    
    hitsCount=status;
    status =hitsCount++;
    }

    application.setAttribute("hitCounter", status);

   %>
   <%try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYDB","root",""); 
      PreparedStatement ps = con.prepareStatement("UPDATE `HITSCOUNTER` SET `counter`="+hitsCount+";");
      status = ps.executeUpdate();
      if(status!=0){%>
      	<footer>
			<div class="container"> 
				<center> <p>The page has <%=hitsCount%> hits.</p> 
			</center> 
			</div>
		</footer>
      <%} else {
      %>

      <%con.close();
   }
   }catch (Exception e) {
      System.out.println(e);     
   }

   %>
		 <!--footer section ends here-->
     <script>
var myVar;

function myFunction() {
    myVar = setTimeout(showPage, 3000);
}

function showPage() {
  document.getElementById("loader").style.display = "none";
  document.getElementById("myDiv").style.display = "block";
}
</script>


	</body>
</html>		 