<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Objects.Reservation" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Lookup</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<jsp:useBean id = "reservationBean" class = "dbBeans.ReservationBean"/>
	
	<jsp:include page="Header.jsp" /> 
	<%
		if(session.getAttribute("user_id") == null){
			response.sendRedirect("login");
		}
	%>
	<h1 id="title">Reservation Lookup</h1>
	
	<form method="post">
		<div id="lookup">
			<table>
				<tr>
				  <td><input type="number" name="reservationID" id="reservationID" required/></td>
				  <td><input class="button" type="submit" value="Submit"/></td>
				</tr>
			</table>
		</div>
	</form>

	
	
	<%if (request.getMethod().equals("POST")){
		
		try{
			Reservation res = reservationBean.getReservationById(request.getParameter("reservationID"), session.getAttribute("user_id").toString()); 
			
			%>
			
			<div id="reservationData">
				<table id="displayData">
				<tr>
				  <td id="displayData">Reservation ID</td>
				  <td id="displayData"><% out.print(res.reservation_id); %></td>
				</tr>
				<tr id="displayData">
				  <td id="displayData">Check-In Date</td>
				  <td id="displayData"><% out.print(res.check_in); %></td>
				</tr>
				<tr id="displayData">
				  <td id="displayData">Check-Out Date</td>
				  <td id="displayData"><% out.print(res.check_out); %></td>
				</tr>
				<tr>
				  <td id="displayData">Location</td>
				  <td id="displayData">Chicago</td>
				</tr>
				<tr id="displayData">
				  <td id="displayData">Room Size</td>
				  <td id="displayData">King</td>
				</tr>
				<tr id="displayData">
				  <td id="displayData">Number of Guests</td>
				  <td id="displayData">2</td>
				</tr>
				<tr id="displayData">
				  <td id="displayData">Wifi</td>
				  <td id="displayData">Y</td>
				</tr>
				<tr id="displayData">
				  <td id="displayData">Breakfast</td>
				  <td id="displayData">N</td>
				</tr>
				<tr id="displayData">
				  <td id="displayData">Parking</td>
				  <td id="displayData">Y</td>
				</tr>
				</table>
				
				<div id="arrows">
					<table>
					<tr>
					  <td><input id="previous" class="button" type="submit" value="Previous"/></td>
					  <td><input id="next" class="button" type="submit" value="Next"/></td>
					</tr>
					    
					</table>
				</div>
			</div>
		<% 
		}
		catch(Exception e){
			%>
			<h1 id="title">No Results</h1>
			<%
		}
			
	}%>

</body>
<style type="text/css">
	body {
		  background-color: #C0B9DD;
		}
		
	#title{
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		margin-top: 25px;
	}	
	#lookup{
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;
		margin-top: 25px;
		
	}
	#reservationData{
		display: flex;
		flex-direction: column;
		justify-content: center;
		align-items: center;	
	}	
		
		
	#displayData{
	  border: 1px solid;
	  background-color: #F7F4EA;
	  width: 700px;
	  height: 75px;
	  margin-top: 25px;
	  text-align: center;
	  font-size: 25px;
	}
	#reservationID{
		background-color: #F7F4EA;
		width: 200px;
		border: 2px solid #80A1D4;
		width: 250px;
		height: 35px;
	}
	#arrows{
		padding: 25px;
	}
</style>
</html>





	
	
	