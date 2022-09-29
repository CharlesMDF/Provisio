<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Objects.Reservation" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<head>
	<title>Loyalty Points</title>
	<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<jsp:useBean id = "reservationBean" class = "dbBeans.ReservationBean"/>
<%
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("login");
	}
	else {
		
	
	ArrayList<Reservation> loyalty = reservationBean.getUserLoyaltyPoints(session.getAttribute("user_id").toString());
	
	int total_loyalty = 0;
	
	for (Reservation res : loyalty){
		total_loyalty += res.loyalty_points;
	}
	
%>
<body>
	<jsp:include page="Header.jsp" />
	<table id="title">
		<tr>
		  <td><h1>Loyalty Points</h1></td>
		</tr>
	</table>
	<table id="earned">
		<tr>
		  <td><h1>Total Points Earned:</h1></td>
		  <td><h1><%out.print(total_loyalty); %></h1></td>
		</tr>
	</table>
	<table id="records">
		<tr id="header">
		  <td>Reservation ID</td>
		  <td>Location</td>
		  <td>Check-in Date</td>
		  <td>Check-out Date</td>
		  <td>Points Earned</td>
		</tr>
		<%
			for (Reservation res : loyalty){
				%>
				<tr id="data">
				  <td><% out.print(res.reservation_id); %></td>
				  <td><% out.print(res.location_name); %></td>
				  <td><% out.print(res.check_in); %></td>
				  <td><% out.print(res.check_out); %></td>
				  <td><% out.print(res.loyalty_points); %></td>
				</tr>
				<%
			}
		%>
		
	</table>
	<jsp:include page="Footer.jsp"/>
</body>


<%}%>
<style>

	body{
		background-color: #F7F4EA;
	}
	
	#title{
		padding:20px;
		background-color: #C0B9DD;
		font-weight: bolder;
		color:#F7F4EA;
		text-align: center;
		margin-top:75px;
		width: 50%;
		margin-left: auto;
	    margin-right: auto;
	    border: 2px solid black;
	    font-size: 22px;
	}
	
	#earned{
		margin-top:50px;
		font-size: 22px;
		margin-left: auto;
	    margin-right: auto;
	}
	
	#records{
		margin-top:25px;
		margin-left: auto;
	    margin-right: auto;
	    text-align: center;
	    background-color: black;
	    width: 50%;
	    height:150px;
	}
	
	#header{
		background-color: #80A1D4;
		font-size: 22px;
		font-weight: bolder;
	}
	
	#data{
		background-color: #C0B9DD;
		font-size: 22px;
	}

</style>
</html>