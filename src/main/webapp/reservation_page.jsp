<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.Date" %>
    <%@ page import ="java.text.SimpleDateFormat"%>
    <%@ page import ="java.util.concurrent.TimeUnit"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Provisio Home</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
	<jsp:useBean id = "reservationBean" class = "dbBeans.ReservationBean"/>
	<jsp:include page="Header.jsp" />
	<img src="images/reservation.jpg" width = 100%>
	<h1 id = "title">Book Your Vacation</h1>
	<hr>
		<form method="post" action="booking/summary">
			<div id = "reservation">
			<table id = "userInputs">
				<tr>
					<td>Name:</td>
					<td><input class = "text_input" type="text" name="guest_name" maxlength="50" required/></td>
				</tr>
				<tr>
					<td>Location:</td>
						<td><select id="selectLocation" name = "location_name">
							<option value="Chicago">Chicago</option>
							<option value="Orlando">Orlando</option>
							<option value="Minneapolis">Minneapolis</option>
						</select></td>
				</tr>
				<tr>
					<td>Room Size:</td>
					
						<td><select id="selectRoomSize" name = "room-size">
							<option value="1">Double</option>
							<option value="2">Queen</option>
							<option value="3">Double Queen</option>
							<option value="4">King</option>
						</select></td>
				</tr>
				<tr>
					<td>Number of Guests:</td>
						<td>
							<select id="selectNumberOfGuests" name ="number_of_guests">
								<option value="1">One</option>
								<option value="2">Two</option>
								<option value="3">Three</option>
								<option value="4">Four</option>
								<option value="5">Five</option>
							</select>
						</td>
				</tr>
				<tr>
					<td>Check-in Date:</td>
					<td><input class = "text_input" type="date" name="check_in" required></td>
				</tr>
				<tr>
					<td>Check-out Date:</td>
				<td><input class = "text_input" type="date" name="check_out" required></td>
				</tr>
			</table>
			<div class = "amenities_container">	
				<h2 id = "title2">Optional Amenities</h2>
	
				<div class = "checkbox_container">
				<div>
				<input type="checkbox" id="amenity1" name="amenity1" value="Breakfast">
			  	<label for="amenity1"> Breakfast </label>
				</div>
				<p>$8.99 per night</p>
				</div>
				
				<div class = "checkbox_container">
				<div>
				<input type="checkbox" id="amenity2" name="amenity2" value="Parking">
			  	<label for="amenity2"> Parking &nbsp;&nbsp;&nbsp;&nbsp;</label>
			  	</div>
			  	<p>$19.99 per night</p>
				</div>
				
				<div class = "checkbox_container">
				<div>
				<input type="checkbox" id="amenity3" name="amenity3" value="WiFi">
				<label for="amenity3"> WiFi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				</div>
				<p>$12.99 flat fee</p>
				</div>
				
			</div>
			</div>
			<table id = "review">
				<tr>
					<td>
						<input type="submit" value="Review" class="button"/>
					</td>
				</tr>	
			</table>
		</form>
				
		<%
			if(session.getAttribute("user_id") == null){
				response.sendRedirect("login");
			}
		%>
	<jsp:include page="Footer.jsp"/>
</body>



<style type="text/css">

hr {
	width: 75%;
	height: 5px;
	background-color: black;
	margin-right: auto;
	margin-left: auto;
	margin-top: 5px;
	margin-bottom: 25px;
}

#title{
	text-align: center;
	margin-top:25px;
	margin-bottom:25px;
	margin-bottom:25px;
	font-size: 55px;
}

#title2{
	font-size: 35px;
	margin: 20px 0;
}

.text_input{
	background-color: #F7F4EA;
	border: 1px solid black;
	padding: 6px;
	width:300px;
	margin:10px;
}

select{
	background-color: #F7F4EA;
	border: 1px solid black;
	padding: 6px;
	width:300px;
	margin:10px;
}

* {
  box-sizing: border-box;
}

body{
	background-color: #C0B9DD;
}

#reservation{
	width: 100%;
  	display: grid;
  	column-gap: 30px;
  	grid-template-columns: 500px 500px;
  	justify-content: space-evenly;
}

#userInputs {
	padding: 25px;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
	width: 30%; float: left; 
}

#review{
	width: 100%; 
	display: flex;
	justify-content: center;
}
.amenities_container{
	display: flex;
	flex-direction: column;
	align-items: center;
}

.checkbox_container{
	display: grid;
	align-items: left;
	grid-template-columns: auto auto;
	font-size: 25px;
	width: 100%;
	margin: 20px 0;
}
	
th{
	font-size: 55px;
}
	
td{
	font-size: 25px;
	padding: 4px;
}

</style>
</html>
