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
<jsp:useBean id = "holidayBean" class = "dbBeans.HolidayBean"/>

	<%if (request.getMethod().equals("POST")){	%>
	
	<form method="post" class="conatiner" action="../reservation_submission.jsp">
		<%
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date checkin = format.parse(request.getParameter("check_in"));
		Date checkout = format.parse(request.getParameter("check_out"));
		long timeDiff = checkout.getTime() - checkin.getTime();
		long dayDiff = TimeUnit.DAYS.convert(timeDiff,TimeUnit.MILLISECONDS);
		
		int holidayCount = holidayBean.getHolidaycount(checkin, checkout);
		
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
						<td>Number of Nights:  <%out.print(dayDiff);%></td>
					</tr>
					<tr>
						<td>Location:  <%out.print(request.getParameter("location_name"));%></td>
					</tr>
					<tr>
						<%	
							Room selectedRoom = roomBean.getRoomById(request.getParameter("room-size"));
							long remainingDays = dayDiff - holidayCount;
							totalCost += ((selectedRoom.cost * 0.05) + selectedRoom.cost) * holidayCount;
							totalCost += selectedRoom.cost * remainingDays;
							selectedRoom.size = selectedRoom.size.replace("_", " ");
						%>
						<td>Room size:  <%out.print(selectedRoom.size);%></td>
					</tr>
					<tr>
						<%String roomCost = String.format("$%.2f",totalCost); %>
						<td>Room Cost:  <%out.print(roomCost);
						if(holidayCount > 0){
							out.print(" (%5 Holiday Charge) ");
						}%></td>
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
						<td>Selected Amenities
						<% 
						int selectedAmenitise = 0;
						if(request.getParameter("amenity1") != null){
							selectedAmenitise++;
							totalCost += 8.99 * dayDiff;
							out.print("<br/> &nbsp;&nbsp;" + request.getParameter("amenity1") + ": &nbsp;&nbsp;$" + (8.99 * dayDiff));
							%><input type="hidden" name="amenity1" value="1" /><% 
						}%>
						<% if(request.getParameter("amenity2") != null){
							selectedAmenitise++;
							totalCost += 19.99 * dayDiff;
							out.print("<br/> &nbsp;&nbsp;" + request.getParameter("amenity2")  + ": &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$" + (19.99 * dayDiff));
							%><input type="hidden" name="amenity2" value="2" /><%
						}%>
						<% if(request.getParameter("amenity3") != null){
							selectedAmenitise++;
							totalCost += 12.99;
							out.print("<br/> &nbsp;&nbsp;" + request.getParameter("amenity3") + ": &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$12.99");
							%><input type="hidden" name="amenity3" value="3" /><%
						}
						if(selectedAmenitise == 0){
							out.print(": None");
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
		<input type="hidden" name="guest_name" value="<%=request.getParameter("guest_name")%>" />
		<input type="hidden" name="location_name" value="<%=request.getParameter("location_name")%>" />
		<input type="hidden" name="room_id" value="<%=request.getParameter("room-size")%>" />
		<input type="hidden" name="number_of_guests" value="<%=request.getParameter("number_of_guests")%>" />
		<input type="hidden" name="check_in" value="<%=request.getParameter("check_in")%>" />
		<input type="hidden" name="check_out" value="<%=request.getParameter("check_out")%>" />
		<input type="hidden" name="loyalty_points" value="<%=points%>" />
		<input type="hidden" name="user_id" value="<%=session.getAttribute("user_id")%>" />
		
		<div class="subContainer">
	        <button name="submit" type="submit" class="button" value="submit">Submit</button>
	        <a href="../booking" class="button">Cancel</a>
	    </div>
	</form>
	
	<%
	
	}
	else{
		response.sendRedirect("/Provisio");
	}%>
  <jsp:include page="../Footer.jsp"/>
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


.button {

  max-width: 200px;
  margin: 10px 75px;
  cursor: pointer;
  
}

</style>
</html>