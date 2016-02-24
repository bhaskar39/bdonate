<%@page import="bos.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donar Dashboard</title>
</head>
<body>
<%
User user = (User)session.getAttribute("user");
 String bloodGroup=user.getBloodgroup(); //Provide bloodgroup of the User
 RequestDispatcher rd = request.getRequestDispatcher("NotificationController");
 request.setAttribute("bloodGroupValue",bloodGroup);
 rd.forward(request, response);
%>
</body>
</html>