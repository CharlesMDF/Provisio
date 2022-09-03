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

<%  %>
<div align="center">
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
			<input type="submit" value="Create Account" />
			</form>
			</div>
			<% if (request.getMethod().equals("POST")){
				response.sendRedirect("index.jsp");
			} %>
</body>
</html>