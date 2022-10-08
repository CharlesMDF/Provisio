<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="main.css" />
	<meta charset="UTF-8">
	<title>Registration</title>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<%@ page import="java.util.*" %>
	<%@ page import="java.sql.*" %>
	<!-- NOTE: use UserBean.CreateUser to create new user accounts. Handle exceptions by displaying error messages to the user -->
	<jsp:useBean id = "userBean" class = "dbBeans.UserBean"/>
	
	<div class = "container-Registration" id = "Registration" align="center">
	<h2 class="underline-header" >Create an Account</h2>
	<form method="post">
				<table style="with: 50%">
					<tr>
						<td>First Name:</td>
						<td><input type="text" name="first_name" maxlength="25" required/></td>
					</tr>
					<tr>
						<td>Last Name:</td>
						<td><input type="text" name="last_name" maxlength="25" required/></td>
					</tr>
					<tr>
						<td>Phone Number:</td>
						<td><input type="tel" name="phone_number"  pattern="[0-9]{7}" required/></td>
					</tr>
					<tr>
						<td>Email Address:</td>
						<td><input type="text" name="email_address" maxlength="50" required /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password" pattern="(?=.*[a-z])(?=.*[A-Z]).{8,}"  min="8" maxlength="50" required></td>
					</tr>
					<tr>
						<td class="requirement-text" colspan="2">Password must be at least 8 characters long and contain a lower and upper case letter </td>
					</tr>
					</table>
				<input class="button" type="submit" id ="create" value="Submit" />
				
		</form>
		<% if (request.getMethod().equals("POST")){
			
			try{
				int userId = userBean.CreateUser(
						request.getParameter("first_name"), 
						request.getParameter("last_name"), 
						request.getParameter("email_address"), 
						Integer.parseInt(request.getParameter("phone_number")), 
						request.getParameter("password"));
				session.setAttribute("user_id", userId);
				response.sendRedirect("index.jsp"); 
			}
			catch(Exception e){
				%><div class='error'><%
					//if registration info is not valid, error message
			       	System.out.print(e);
					out.println("<p class='error'>Something went wrong!! Please try again </p>");       
				%></div><%   
			}
		}  %>
		</div>
	
				
	
	<jsp:include page="Footer.jsp"/>
</body>

<style type="text/css">
	.container-Registration {
	  color: black;  
	  background-color: #C0B9DD;
	  border: 1px solid black;
	  width: 550px;
	  height: 350px;
	  position: absolute;
	  padding: 35px;
	  top:0;
	  bottom: 0;
	  left: 0;
	  right: 0;
	  border-radius: 30px;
  	  border: 2px solid black;
	  margin: auto;
	}
	body {
	  background-color: #F7F4EA;
	}
	th{
	  font-size: 55px;
	}
	td{
	  font-size: 25px;
	  padding: 4px;
	}
	.requirement-text{
		font-size: 12px;
	}
	.underline-header{
		border-bottom: solid grey 1px;
		font-size: 50px
	}
	.error{
	color: red;
	font-size: 20px;
	}
</style>

</html>