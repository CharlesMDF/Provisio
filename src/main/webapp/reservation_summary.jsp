<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.util.concurrent.TimeUnit"%>

<!DOCTYPE html>
<%@ page import="Objects.Room" %>
<%@ page import="java.util.ArrayList" %> 
<jsp:useBean id = "roomBean" class = "dbBeans.RoomBean"/>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Summary</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<%if (request.getMethod().equals("POST")){	%>
	<form action="${pageContext.request.contextPath}reservation_page.jsp">
		<h2>Reservation Summary</h2>
		
		<div id="image"> 
			<img src="images/airline.jpg">
		</div>
		
		<div id="table">
			<table id="summary">
				<tr>
					<td>Name:  <%out.print(request.getParameter("guest_name"));%></td>
				</tr>
				<tr>
					<td>Location:  <%out.print(request.getParameter("location_name"));%></td>
				</tr>
				<tr>
					<td>Room size:  <%out.print(request.getParameter("room-size"));%></td>
				</tr>
				<tr>
					<td>Number of Guests:  <%out.print(request.getParameter("number_of_guests"));%></td>
				</tr>
				<tr>
					<td>Check-in Date:  <%out.print(request.getParameter("check_in"));%></td>
				</tr>
				<tr>
					<td>Check-out Date:  <%out.print(request.getParameter("check_out"));%></td>
				</tr>
				<tr>
					<td>Optional Amenities:
					<%out.print(request.getParameter("amenity1"));%>
					<%out.print(request.getParameter("amenity2"));%>
					<%out.print(request.getParameter("amenity3"));%>
					</td>
				</tr>
				<tr>
					<td>Loyalty Points:</td>
				</tr>
				<tr>
					<td>Total Cost:</td>
				</tr>	
			</table>
		</div>
		<div id="footer">
	        <button type="submit" class="button">Submit</button>
	        <button type="reset" class="button">Cancel</button>
	     </div>
	</form>
	
	<%
	
	}
	else{
		response.sendRedirect("/Provisio");
	}%>
			<%
			/*
				String checkin = String.valueOf(session.getAttribute("check_in"));
				String checkout = String.valueOf(session.getAttribute("check_out"));
				String room = String.valueOf(session.getAttribute("room"));
				Boolean wifi = (Boolean)session.getAttribute("wifi");
				Boolean breakfast = (Boolean)session.getAttribute("breakfast");
				Boolean parking = (Boolean)session.getAttribute("parking");
				int guests = Integer.valueOf((String)session.getAttribute("guests"));
				long timeDiff = checkout.getTime() - checkin.getTime();
				long dayDiff = TimeUnit.DAYS.convert(timeDiff,TimeUnit.MILLISECONDS);
				int points = ((int)dayDiff * 150);
				*/
			%>
			<!-- Brittany, you will need this or something similar to calulate loyalty points 
			<% 
			//if (request.getMethod().equals("POST")){
				//SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				//Date checkin = format.parse(request.getParameter("check_in"));
				//Date checkout = format.parse(request.getParameter("check_out"));
				//long timeDiff = checkout.getTime() - checkin.getTime();
				//long dayDiff = TimeUnit.DAYS.convert(timeDiff,TimeUnit.MILLISECONDS);
				//int points = ((int)dayDiff * 150);
				//}  
			%> -->
			
			<%
				/*ArrayList<Room> rooms = roomBean.getRooms();
				
				for(Room room : rooms){
					out.print("<option value='" + room.id + "'>" + room.size + "</option>");
				}*/
			%>
</body>
<style type="text/css">

body{
	background-color: #C0B9DD;
}
h2{
	text-align: center;
	margin-top:25px;
	margin-bottom:25px;
	margin-bottom:25px;
	font-size: 55px;
}
img { 
	height:750px; 
	width:500px; 
	float: left; 
}	
table{
	background-color: #F7F4EA;
	border-radius: 30px;
	width: 500px;
	border: 2px solid black;
	height: 500px;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto;
	padding: 8px;
	float:right;
}	
	
th{
	font-size: 55px;
}
	
td{
	font-size: 25px;
	padding: 6px;
}
.button {
  font-weight: bolder;
  width: 200px;
  background-color: #F7F4EA;
  border: 2px solid #80A1D4;
  color:#80A1D4;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
div{
margin-top: 4%;
bottom:0;
right: 5%;
position: right;

}

</style>
</html>