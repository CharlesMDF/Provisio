<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loyalty Points</title>
</head>
<body>
<jsp:include page="Header.jsp" />
<link rel="stylesheet" type="text/css" href="main.css" />
<table id="title">
	<tr>
	  <td><h1>Loyalty Points</h1></td>
	</tr>
</table>
<table id="earned">
<tr>
  <td><h1>Total Points Earned:</h1></td>
  <td><h1>XXXX</h1></td>
</tr>
<table id="records">
	<tr id="header">
	  <td>Reservation ID</td>
	  <td>Location</td>
	  <td>Check-in Date</td>
	  <td>Check-out Date</td>
	  <td>Points Earned</td>
	</tr>
	<tr id="data">
	  <td>xxxx</td>
	  <td>xxxx</td>
	  <td>xxxx</td>
	  <td>xxxx</td>
	  <td>xxxx</td>
	</tr>
</table>

</body>
</html>

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