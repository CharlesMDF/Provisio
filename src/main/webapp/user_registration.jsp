<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
<!-- NOTE: use UserBean.CreateUser to create new user accounts. Handle exceptions by displaying error messages to the user -->
<jsp:useBean id = "userBean" class = "dbBeans.UserBean"/>

<div class = "container-Registration" id = "Registration" align="center">
<h2>Create an Account</h2>
<form action="Create Account" method="post">
			<table style="with: 50%">
				<tr>
					<td>First Name:</td>
					<td><input type="text" name="first_name" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="last_name" /></td>
				</tr>
				<tr>
					<td>Phone Number:</td>
					<td><input type="text" name="phone_number" /></td>
				</tr>
				<tr>
					<td>Email Address:</td>
					<td><input type="text" name="email_address" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password" /></td>
				</tr></table>
			<input type="submit" id ="create" value="Create Account" />
			</form>
			</div>
			<% if (request.getMethod().equals("POST")){
				response.sendRedirect("index.jsp");
			} %>
			<style type="text/css">
.container-Registration {
  color: black;  
  background-color: #C0B9DD;
  border: 1px solid black;
  width: 550px;
  height: 275px;
  position: absolute;
  top:0;
  bottom: 0;
  left: 0;
  right: 0;
    
    margin: auto;
}
body {
  background-color: #F7F4EA;
}
#create {
  background-color: #F7F4EA;
  border: 1.5px solid black;
  font-size: 20px; 
}
th{
  font-size: 55px;
}
td{
  font-size: 25px;
}
</style>
</body>
</html>