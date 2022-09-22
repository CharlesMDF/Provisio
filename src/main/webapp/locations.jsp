<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Provisio Locations</title>
<link rel="stylesheet" type="text/css" href="main.css" />
</head>
<body>
<jsp:include page="Header.jsp" /> 

<div class="main">
	<div id="header"><h1 >Our Locations</h1></div>
<div id="locations-gallery">
 <div id="locations-gallery1">
                <div id="Chicago">
                    <h1>Visit us in Chicago!</h1>            
                <figure>
                    <img class="image" src="images/chicago.jpg" alt="Chicago">
                    <figcaption class="text"><h2>Activities in Chicago:</h2>
                    <ul class="list">
                    <li>Architectural boat tour</li>
                    <li>Visit the Willis Tower top floor</li>
                    <li>The Original Chicago Hauntings Ghost Tour</li> 
                    <li>360 Observance Deck at the John Hancock Center</li> 
                    </ul>                  
                    </figcaption>
                </figure>
                </div>
               </div>
 <div id="locations-gallery2">
                <div id="Orlando">
                    <h1>Visit us in Orlando!</h1>            
                <figure>
                    <img class="image" src="images/orlando.jpg" alt="Orlando">
                    <figcaption class="text"><h2>Activities Orlando:</h2>
                    <ul class="list">
                    <li>Disney World tickets</li>
                    <li>Universal Studios tickets</li>
                    <li>Indoor Skydiving</li>
                    <li>Paddleboarding or Kayak with bunny and pups in paradise</li> 
                    </ul>
                    </figcaption>
                </figure>
                </div>
               </div>
 <div  id="locations-gallery3">
                <div id="Minneapolis">
                    <h1>Visit us in Minneapolis!</h1>            
                <figure>
                    <img class="image" src="images/minneapolis.jpg" alt="Minneapolis">
                    <figcaption class="text"><h2>Activities in Minneapolis:</h2>
                    <ul class="list">	
                    <li>Mall of America</li>
                    <li>Minneapolis Institute of Art</li>
                    <li>All Inclusive 3hr Craft Brewery Tour</li> 
                    <li>Tour Prince's home at Paisley Park</li> 
                    </ul>
                    </figcaption>
                </figure>
                </div>
               </div> 


	</div>
</div>
<jsp:include page="Footer.jsp"/>

<style type="text/css">
body {
	 background-color: #F7F4EA;
}
#header {
	 text-align: center;
	 color: #F7F4EA;  
	 background-color: #C0B9DD;
	 border-radius: 30px;
     border: 2px solid black;
     width: 1000px;
	 height: 100px;
	 font-size: 35px;
	 padding: 10px;
	 margin: 15px;
}
.main{
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
#locations-gallery {
  padding: 75px;
  display: grid;
  column-gap: 30px;
  grid-template-columns: auto auto auto;
  justify-content: space-evenly;
  align-content: center;
}
.image{
	 width: 575px;
	 height: 275px;
	 border: 2px solid black;
	 object-fit: cover;
}
.text{
	 border: 2px solid black;
	 object-fit: cover;
	 background-color: #80A1D4;
	 font-size: 20px;
	 padding: 10px;
}
h1, h2{
text-align:center;
}
.list{
	list-style-position: inside;	
}

</body>
</html>