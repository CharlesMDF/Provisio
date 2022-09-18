<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Provisio Login</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
<jsp:include page="Header.jsp" /> 
<%@ page import ="java.sql.*" %>
 <form method="post">
	<div class="container-login" id="login" align=center>
		<div class="card-login"> 
            <table border="0" cellpadding="5" cellspacing="2" >
                <thead>
                    <tr>
                        <th colspan="2"><div  class="underline-header">Login</div> </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Email Address</td>
                        <td><input type="text" name="username" id="submit" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" id="submit" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                        	<input class="button" type="submit" value="Submit"/>
                        </td>                        
                    </tr>                    
                </tbody>
            </table>
            </div>
	</div>          
    </form>
    <%@ page import="Objects.User" %>
		<jsp:useBean id="userBean" class="dbBeans.UserBean" />
		<jsp:useBean id="authBean" class="dbBeans.AuthorizationBean" />
	<%
		try {
			if (request.getMethod().equals("POST")){
				String username = request.getParameter("username");   //gets entered username
			   	String password = request.getParameter("password");   //gets entered password
			   
				User user = userBean.getUser(username);  //goes to user.java to compare to database info

				boolean verified = authBean.verifyPassword(user.password, user.password_salt, password); //verify login info
				session.setAttribute("user_id", user.id);
				response.sendRedirect("/Provisio");
			}
		}
		catch(Exception e){
			%><div class='error'><%
		     out.println("<body class='error'>Something went wrong!! Please try again");//if login info is not valid, error message
		%></div><%   
		}    
	%>
</body>

<jsp:include page="Footer.jsp"/>

<style type="text/css">
	.container-login {
	  color: black;  
	  background-color: #C0B9DD;
	  border-radius: 30px;
	  border: 2px solid black;
	  width: 550px;
	  height: 250px;
	  position: absolute;
	  top:0;
	  bottom: 0;
	  left: 0;
	  right: 0;
	  margin: auto;
	  padding: 8px
	}
	
	body {
	  background-color: #F7F4EA;
	}
	
	th{
	  font-size: 55px;
	}
	
	td{
	  font-size: 25px;
	  padding: 8px
	}
	
	.error{
		color: red;
		font-size: 20px;
	}
	
	.underline-header{
		border-bottom: solid grey 1px;
		font-size: 50px
	}
</style>
</html>