<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			<!-- Brittany, you will need this or something similar to calulate loyalty points -->
			<% if (request.getMethod().equals("POST")){
				SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
				Date checkin = format.parse(request.getParameter("check_in"));
				Date checkout = format.parse(request.getParameter("check_out"));
				long timeDiff = checkout.getTime() - checkin.getTime();
				long dayDiff = TimeUnit.DAYS.convert(timeDiff,TimeUnit.MILLISECONDS);
				int points = ((int)dayDiff * 150);
		}  %>
</body>
</html>