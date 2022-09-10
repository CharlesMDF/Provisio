<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ page import ="java.util.Date" %>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.util.concurrent.TimeUnit"%>

<%@ page import="Objects.Room" %>
<%@ page import="java.util.ArrayList" %> 
<jsp:useBean id = "roomBean" class = "dbBeans.RoomBean"/>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Summary</title>
</head>
<body>

	<%if (request.getMethod().equals("POST")){
		out.print(request.getParameter("amenity1"));
	%>
	<form action="${pageContext.request.contextPath}reservation_page.jsp">
		<h4>Reservation Summary</h4>
		<table>
			<tr>
				<td>Name:<%out.print(request.getParameter("guest_name"));%></td>
			</tr>
			<tr>
			<td>Location:</td>
			<td>Room size:</td>
			<td>Number of Guests:</td>
			<td>Check-in Date:</td>
			<td>Check-out Date:</td>
			<td>Optional Amenities:</td>
			<td>Loyalty Points:</td>
			<tr>
		</table>
		<div class="form-footer">
	        <button type="submit" class="button btn-primary">Confirm Booking</button>
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
</html>