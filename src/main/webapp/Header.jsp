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
        <a href = "/Provisio/about_us">About Us</a>
        <a href = "locations">Locations</a>
        <% 
        	if(session.getAttribute("user_id") == null){
        		%>
	        		<a href = "/Provisio/login">Login</a>
	        		<a href = "/Provisio/register">Create Account</a>
        		<%
        	} else{
        		%>
        			<a href = "/Provisio/previous">Previous Reservations</a>
        			<a href = "/Provisio/loyalty">Loyalty Points</a>
        		<%
        	}
        %>
        <a href = "/Provisio/booking">Book Room</a>
        <%
        if(session.getAttribute("user_id") != null){
        	%>
				<a href = "/Provisio/logout.jsp">Logout</a>
			<%
        }
        %>
    </div>
</body>


<style type="text/css">
#navbar {
    z-index: 1; 
    top: 0;
    padding: 6px 0px;
    overflow: hidden;
    background-color: #80A1D4;
    width:100%;
    display: flex; 
    justify-content: center;
    border-bottom: 2px solid black;
}

#navbar a {
    margin: 10px 30px;
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

</html>
