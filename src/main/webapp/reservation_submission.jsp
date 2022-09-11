<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "resBean" class = "dbBeans.ReservationBean"/>
<%if (request.getMethod().equals("POST")){	
	
	try{
		int resId = resBean.CreateReservation(request.getParameter("check_in"),
				request.getParameter("check_out"), 
				request.getParameter("guest_name"), 
				request.getParameter("location_name"), 
				request.getParameter("number_of_guests"), 
				request.getParameter("loyalty_points"), 
				request.getParameter("user_id"), 
				request.getParameter("room_id"));
				response.sendRedirect("/Provisio");
		if(request.getParameter("amenity1") != null){
			System.out.println(request.getParameter("amenity1"));
			resBean.LinkAmenitiesReservation(1, resId);
		}	
		if(request.getParameter("amenity2") != null){
			System.out.println(request.getParameter("amenity2"));
			resBean.LinkAmenitiesReservation(2, resId);
		}
		if(request.getParameter("amenity3") != null){
			System.out.println(request.getParameter("amenity3"));
			resBean.LinkAmenitiesReservation(3, resId);
		}
	}catch(Exception e){
		System.out.print(e);
		response.sendRedirect("/Provisio/booking");
	}
} else{
	response.sendRedirect("/Provisio");
}%>