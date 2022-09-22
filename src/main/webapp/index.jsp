<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Provisio Home</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>

	<jsp:include page="Header.jsp" /> 
	<div class="container-top">
	  <img src="images/hotel.jpg" width = 100%>
	  <div class="centered">
	      <h1 id = "title">Make Memories with Provisio</h1>    
	      <p id = "hotel-msg">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
	      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
	      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
	      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
	    </p>
	  </div>
	</div>
	
	<div class="container-mid">
		<%
			if(session.getAttribute("user_id") != null){
				%> 
				<div class="column-mid">
	    			<img class="link-image" src="images/login-image.jpg" height = 300px>
	    			<a href="loyalty" class="button">Loyalty Points</a>
	  			</div><%
			} else{
				%>
				<div class="column-mid">
				    <img class="link-image" src="images/login-image.jpg"  height = 300px>
				    <a href="login" class="button">Login</a>
			  	</div>
			  <%
			}
		%>
	  <div class="column-mid">
	    <img class="link-image" src="images/booking-image.jpg"  height = 300px>
	    <a href="booking" class="button">Book Now</a>
	  </div>
	  <div class="column-mid">
	    <img class="link-image" src="images/locations-image.jpg"  height = 300px>
	    <a href="#" class="button">Locations</a>
	  </div>
	</div>
	
	<jsp:include page="Footer.jsp"/>
	
</body>


<style type="text/css">
#welcome {
text-align: center;
}

#hotel-msg{
  margin: 25px;
}

#title{
  font-size: 55px;
}

.container-top {
  position: relative;
  text-align: center;
  color: black;
  min-width: 600px;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: rgba(247, 244, 234, 0.7);
  border: 4px solid black;
}

* {
  box-sizing: border-box;
}

.column-mid {
  width: 450px;
  float: left;
  text-align:center;
}

.container-mid{
  padding: 75px;
  display: grid;
  column-gap: 30px;
  grid-template-columns: auto auto auto;
  justify-content: space-evenly;
  align-content: center;
}

.link-image{
	border: 2px solid black;
}

body{
	background-color: #C0B9DD;
}

</style>
</html>
