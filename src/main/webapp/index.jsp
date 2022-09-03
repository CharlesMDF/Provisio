<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
  
<div class="container-top">
  <img src="images/hotel.jpg" width = 100%>
  <div class="centered">
      <h1 id = "title">Make Memories with Provisio</h1>    
      <p id = "hotel-msg">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
      Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. 
      Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </p>
  </div>
</div>

<div class="container-mid">
  <div class="column-mid">
    <img src="images/login-image.jpg" width = 100% height = 300px>
    <a href="#" class="button">Login</a>
  </div>
  <div class="column-mid">
    <img src="images/booking-image.jpg" width = 100% height = 300px>
    <a href="#" class="button">Book Now</a>
  </div>
  <div class="column-mid">
    <img src="images/locations-image.jpg" width = 100% height = 300px>
    <a href="#" class="button">Locations</a>
  </div>
</div>

<style type="text/css">
#welcome {
text-align: center;
}

#hotel-msg{
  margin: 25px;
}

#title{
  font-size: 55px;
}

.container-top {
  position: relative;
  text-align: center;
  color: black;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: rgba(247, 244, 234, 0.7);
  border: 4px solid black;
}

* {
  box-sizing: border-box;
}

.column-mid {
  float: left;
  width: 33.33%;
  padding: 75px;
  text-align:center;
}

.button {
  font-weight: bolder;
  width: 150px;
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

</style>
