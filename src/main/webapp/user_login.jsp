<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- NOTE: use userBean to get user account information by email and use the authorization bean to verify user password. 
		   you will need to get the encrypted password and salt from the database for comparison using Authorization.verifyPassword method-->
	<!-- Sample Code for Getting a User and verifying them-->
	<%@ page import="Objects.User" %>
	<jsp:useBean id="userBean" class="dbBeans.UserBean" />
	<jsp:useBean id="authBean" class="dbBeans.AuthorizationBean" />
	<%
		User user = userBean.getUser("Olivia.Doe@email.com");
		//returns true
		boolean verified = authBean.verifyPassword(user.password, user.password_salt, "Password");
		out.print(verified + "<br />");
		//returns false
		verified = authBean.verifyPassword(user.password, user.password_salt, "password");
		out.print(verified + "<br />");
	%>
</body>
</html>