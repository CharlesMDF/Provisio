<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.util.concurrent.TimeUnit"%>

<!DOCTYPE html>
<%@ page import="Objects.Room" %>
<%@ page import="java.util.ArrayList" %> 


<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Summary</title>
<link rel="stylesheet" type="text/css" href="../main.css" />
</head>
<jsp:include page="../Header.jsp" />
<body>
<jsp:useBean id = "roomBean" class = "dbBeans.RoomBean"/>

	<%if (request.getMethod().equals("POST")){	%>
	
	<form class="conatiner" action="/Provisio/booking">
		<%
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date checkin = format.parse(request.getParameter("check_in"));
		Date checkout = format.parse(request.getParameter("check_out"));
		long timeDiff = checkout.getTime() - checkin.getTime();
		long dayDiff = TimeUnit.DAYS.convert(timeDiff,TimeUnit.MILLISECONDS);
		
		%>
		<h2>Reservation Summary</h2>
		
		<div class="subContainer">
			<div id="image"> 
				<img src="../images/airline.jpg" width="500px" height="750px">
			</div>
			<% double totalCost = 0; %>
			<div id="table">
				<table id="summary">
					<tr>
						<td>Name:  <%out.print(request.getParameter("guest_name"));%></td>
					</tr>
					<tr>
						<td>Location:  <%out.print(request.getParameter("location_name"));%></td>
					</tr>
					<tr>
						<%	
							Room selectedRoom = roomBean.getRoomById(request.getParameter("room-size"));
							totalCost += selectedRoom.cost * dayDiff;
							selectedRoom.size = selectedRoom.size.replace("_", " ");
						%>
						<td>Room size:  <%out.print(selectedRoom.size);%></td>
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
						<td>Selected Amenities:
						<% if(request.getParameter("amenity1") != null){
							totalCost += 8.99 * dayDiff;
							out.print(request.getParameter("amenity1"));
						}%>
						<% if(request.getParameter("amenity2") != null){
							totalCost += 19.99 * dayDiff;
							out.print(request.getParameter("amenity2"));
						}%>
						<% if(request.getParameter("amenity3") != null){
							totalCost += 12.99;
							out.print(request.getParameter("amenity3"));
						}
						%>
						</td>
					</tr>
					<tr>
						<%
						int points = ((int)dayDiff * 150);
						%>
						<td>Loyalty Points: <% out.print(points); %></td>
					</tr>
					<tr>
						<%String finalCost = String.format("$%.2f",totalCost); %>
						<td>Total Cost: <% out.print(finalCost);%></td>
					</tr>	
				</table>
			</div>
		</div>
		<input type="hidden" name="name" value="<%=request.getParameter("guest_name")%>" />
		<input type="hidden" name="name" value="<%=request.getParameter("location_name")%>" />
		<input type="hidden" name="name" value="<%=request.getParameter("room-size")%>" />
		<input type="hidden" name="name" value="<%=request.getParameter("number_of_guests")%>" />
		<input type="hidden" name="name" value="<%=request.getParameter("check_in")%>" />
		<input type="hidden" name="name" value="<%=request.getParameter("check_out")%>" />
		<input type="hidden" name="name" value="<%=points%>" />
		<input type="hidden" name="name" value="<%=session.getAttribute("user_id")%>" />
		
		<div class="subContainer footer">
	        <button name="submit" type="submit" class="button" value="submit">Submit</button>
	        <button name="submit" type="submit" class="button">Cancel</button>
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
	border: 2px solid black;
	margin: 10px 50px;
}	
#summary{
	background-color: #F7F4EA;
	width: 503px;
	border: 2px solid black;
	height: 753px;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
	padding: 8px;
	float:right;
	margin: 10px 50px;
}	
	
th{
	font-size: 55px;
}
	
td{
	font-size: 25px;
	padding: 6px;
}

.conatiner{
	display: grid;
	grid-template-columns: auto;
	justify-content: space-evenly;
  	align-content: center;
}
.subContainer{
	display: flex;
	justify-content: center;
	width: 1200px;
	margin: 5px;
}

.footer{
	margin: 10px;
	text-align: center;
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
  margin: 10px 75px;
  cursor: pointer;
  
}

</style>
</html>