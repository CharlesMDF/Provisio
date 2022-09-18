<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Provisio About Us</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<jsp:include page="Header.jsp" /> 
<body>
	
	<div class="main">
		<div id="header"><h1 >Welcome to Provisio!</h1></div>
	
		<div class="subContainer">
			<div class="text-block">
				<h1 class="subHeader">Our Mission</h1>	
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac enim nec ipsum rhoncus euismod quis vel dui. 
				Aliquam nec efficitur sapien, quis laoreet eros. Donec aliquam neque et suscipit vulputate. Maecenas ornare dignissim elementum. 
				Donec eget ante sed massa scelerisque aliquet. Morbi viverra sodales magna at bibendum. Donec sem eros, tincidunt sit amet 
				imperdiet in, aliquam vel sem. Phasellus quis urna at odio viverra egestas luctus sed erat. </p>
				
			</div>
			<img class="image" src="images/happy-images.jpg" >
		</div>
	
		<div class="subContainer">
			<img class="image" src="images/stay-image.jpg">
			<div class="text-block">
				<h1 class="subHeader">Enjoy Your Stay</h1>	
				<p>Maecenas in tempor augue, at lobortis velit. Sed tincidunt nunc non sollicitudin fermentum. Aliquam mauris libero, viverra id pulvinar 
				at, consectetur id nibh. In nec consequat velit. Mauris porta id nunc ac congue. Etiam id orci nec tortor vulputate facilisis. Ut diam dolor,
				efficitur sit amet mauris vel, faucibus pretium eros. </p>
			</div>
			
		</div>
		
		<div class="contact">
		        <div class="contactUs">
		             <table border="0" cellpadding="5" cellspacing="2" >
		                <thead>
		                    <tr>
		                        <th colspan="2"><div  class="underline-header">Contact Us</div> </th>
		                    </tr>
		                </thead>
		                <tbody>
		                <tr>
		                        <td>Phone: 555-555-5555</td>
		                    </tr>
		                    <tr>
		                 <tr>
		                 <tr>
		                        <td>Email: support@provisio.com</td>
		                    </tr>
		                    <tr>
		                 <tr>
		                 <tr>
		                        <td>Or send us a message!</td>
		                    </tr>
		                    <tr>
		                 <tr>                     
		                        <td>Name:</td>
		                        <td><input type="text" name="username" id="submit" required/></td>
		                    </tr>
		                    <tr>
		                        <td>Email Address:</td>
		                        <td><input type="text" name="email" id="submit" required/></td>
		                    </tr>
		                    <tr>
		                        <td>Question:</td>
		                        <td><input type="text" name="question" id="submit" required/></td>
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
	</div>
</body>

<jsp:include page="Footer.jsp"/>

<style type="text/css">
	body {
	  background-color: #F7F4EA;
	}
	
	.main{
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
	
	.subContainer{
		width: 1200px;
		display: flex;
		justify-content: space-between;
		align-items: center;
		margin: 20px;
	}
	
	.text-block {
	  color: black;  
	  background-color: #80A1D4;
	  border-radius: 30px;
	  border: 2px solid black;
	  width: 550px;
	  height: 250px;
	  padding: 15px;
	}
	
	.image{
	  width: 575px;
	  height: 275px;
	  border: 2px solid black;
	  object-fit: cover;
	}

	.contact .contactUs{
	    padding: 0px 30px 30px 30px;
	}
	
	#header {
	  text-align: center;
	  color: #F7F4EA;  
	  background-color: #C0B9DD;
	  border-radius: 30px;
	  border: 2px solid black;
	  width: 1000px;
	  height: 100px;
	  font-size: 35px;
	  padding: 10px;
	  margin: 15px;
	}
	
	.subHeader {
	  text-align: center;
	  margin: 5px;
	}
</style>
</html>