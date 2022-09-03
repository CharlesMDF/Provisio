<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Provisio Login</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
 <form method="post">
	<div class="container" id="login" align=center>
           <div class="card-login"> 
            <table border="0" cellpadding="5" cellspacing="2" >
                <thead>
                    <tr>
                        <th colspan="2">Login </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Email Address</td>
                        <td><input type="text" name="username" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" value="Submit"/>
                            &nbsp;&nbsp;
                           
                        </td>                        
                    </tr>                    
                </tbody>
            </table>            
        </form>
        </div>
	</div>
<!-- NOTE: use userBean to get user account information by email and use the authorization bean to verify user password. 
		   you will need to get the encrypted password and salt from the database for comparison using Authorization.verifyPassword method-->
	<!-- Sample Code for Getting a User and verifying them-->
	<%@ page import="Objects.User" %>
	<jsp:useBean id="userBean" class="dbBeans.UserBean" />
	<jsp:useBean id="authBean" class="dbBeans.AuthorizationBean" />
	<%
	try {
	if (request.getMethod().equals("POST")){
	String username = request.getParameter("username");   
    String password = request.getParameter("password");
    
		User user = userBean.getUser(username);
		
		
		boolean verified = authBean.verifyPassword(user.password, user.password_salt, password);
		out.print(verified + "<br />");
	}
	}
	
	catch(Exception e){       
	       out.println("Something went wrong !! Please try again");       
	   }    
		
	%>

</body>
</html>