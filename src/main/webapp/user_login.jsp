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
	<div class="container-login" id="login" align=center>
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
                        <td><input type="text" name="username" id="submit" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" id="submit" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" id="submit" value="Submit"/>
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
	String username = request.getParameter("username");   //gets entered username
    String password = request.getParameter("password");   //gets entered password
    
		User user = userBean.getUser(username);  //goes to user.java to compare to database info
		
		
		boolean verified = authBean.verifyPassword(user.password, user.password_salt, password); //verify login info
		out.print(verified + "<br />");
		response.sendRedirect("index.jsp");
	}
	}
	
	catch(Exception e){       
	       out.println("Something went wrong !! Please try again");       //if login info is not valid, error message
	   }    
		
	%>
<style type="text/css">
.container-login {
  color: black;  
  background-color: #C0B9DD;
  border: 1px solid black;
  width: 550px;
  height: 225px;
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
#submit {
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