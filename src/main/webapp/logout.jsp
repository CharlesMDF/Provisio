<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id = "resBean" class = "dbBeans.ReservationBean"/>
<%
	session.invalidate();	
	response.sendRedirect("/Provisio");
%>