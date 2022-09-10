<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Provisio About Us</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
<jsp:include page="Header.jsp" /> 
<div id="header">
<h1>Welcome to Provisio!</h1>
</div>
<div class="mission">
	<h1 id="missionTitle">Our Mission</h1>	
	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac enim nec ipsum rhoncus euismod quis vel dui. 
	Aliquam nec efficitur sapien, quis laoreet eros. Donec aliquam neque et suscipit vulputate. Maecenas ornare dignissim elementum. 
	Donec eget ante sed massa scelerisque aliquet. Morbi viverra sodales magna at bibendum. Donec sem eros, tincidunt sit amet 
	imperdiet in, aliquam vel sem. Phasellus quis urna at odio viverra egestas luctus sed erat. </p>
	
</div>
<div class="image1"><img src="images/happy-images.jpg" width = 90%></div>

<div class="enjoy">
	<h1 id="enjoyTitle">Enjoy Your Stay</h1>	
	<p>Maecenas in tempor augue, at lobortis velit. Sed tincidunt nunc non sollicitudin fermentum. Aliquam mauris libero, viverra id pulvinar 
	at, consectetur id nibh. In nec consequat velit. Mauris porta id nunc ac congue. Etiam id orci nec tortor vulputate facilisis. Ut diam dolor,
	efficitur sit amet mauris vel, faucibus pretium eros. </p>
	
</div>

<div class="image2"><img src="images/stay-image.jpg" width = 100%></div>

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
                        <td><input type="text" name="username" id="submit" required/></td>
                    </tr>
                    <tr>
                        <td>Question:</td>
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
</body>
</html>


<style type="text/css">
body {
  background-color: #F7F4EA;
}
.mission {
  color: black;  
  background-color: #80A1D4;
  border-radius: 30px;
  border: 2px solid black;
  width: 550px;
  height: 250px;
  left: 500px;
  top: 400px;
  position: absolute;
  margin: auto;
  padding: 16px;
  font-type: Georgia;
}
.image2 {
  width: 550px;
  height: 250px;
  left: 500px;
  bottom: 100px;
  position: absolute;
  margin: auto;
  padding: 16px;
}
.image1 {
  width: 550px;
  height: 250px;
  right: 700px;
  top: 400px;
  position: absolute;
  margin: auto;
  padding: 16px;
  
}
.contact{
    padding: 0px 30px 30px 30px;
    padding-top: 250px;
    font-type: Georgia;
    bottom: 0px;
    
}
.contactUs{
    padding: 0px 30px 30px 30px;
    margin-left: 1000px;
    margin-top: 1000px;
    font-type: Georgia;
    float: bottom;
    display: flex;
}
#header {
  text-align: center;
  color: #F7F4EA;  
  background-color: #C0B9DD;
  border-radius: 30px;
  border: 2px solid black;
  width: 1700px;
  height: 100px;
  font-size: 35px;
  margin: auto;
  width: 50%;
  top: 800px;
  font-type: Georgia;
  padding-top: 10px;
}
#missionTitle {
  text-align: center;
  font-type: Georgia;
}
.enjoy {
  color: black;  
  background-color: #80A1D4;
  border-radius: 30px;
  border: 2px solid black;
  width: 550px;
  height: 250px;
  right: 700px;
  bottom: 100px;
  position: absolute;
  margin: auto;
  padding: 16px;
  font-type: Georgia;
}
#enjoyTitle {
text-align: center;
font-type: Georgia;
}