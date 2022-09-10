<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
	<div id = "navbar"> 
    	<a href = "/Provisio">Home</a>
        <a href = "about_us.jsp">About Us</a>
        <a href = "#contact">Contact Us</a>
        <a href = "#locations">Locations</a>
        <% 
        	if(session.getAttribute("loggedInUser") == null){
        		%>
	        		<a href = "login">Login</a>
	        		<a href = "register">Create Account</a>
        		<%
        	} else{
        		%>
        			<a href = "#loyalty">Loyalty Points</a>
        		<%
        	}
        %>
        <a href = "#bookroom">Book Room</a>
    </div>
</body>
</html>

<style type="text/css">
#navbar {
    z-index: 1; 
    top: 0;
    padding:10px;
    overflow: hidden;
    background-color: #80A1D4;
    width:100%;
    display: flex; 
    justify-content: center
}

#navbar a {
    margin:20px;
    float: none;
    color: #F7F4EA;
    text-align: center;
    text-decoration: none;
    font-size: 25px;
}

#navbar a:hover {
    color:#C0B9DD;
}
</style>
