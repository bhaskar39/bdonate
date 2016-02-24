<%@page import="bos.Requestobj"%>
<%@page import="models.Notification"%>
<%@page import="bos.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donar Dashboard</title>
</head>
<style>
#suggest_notifications div{
width:100%;
}
</style>
<body>
<%
String name="";
String available=null;
try 
 {
	User profileObject = (User)request.getAttribute("user");
	name=profileObject.getName();
	available=(String)profileObject.getAvailability();
 }
catch(Exception e){}
%>
<div  style="margin-right:5%;width:30%;" class="pull-right">
 <h3>Welcome <span class="icon-user"></span> <%=name %></h3></br>
 <div style="margin-left:5%;">
<table class="table table-hover" style="width:inherit">
<tr><td>No.of Donations</td>
	<td>:</td><td>10</td>
</tr>
<tr>
 	<td>Availability</td><td>:</td><td> <%if(available.equals("true")){%><span class='badge badge-success'>&nbsp;</span><%}else{ %><span class='badge badge-important'>&nbsp;</span><%} %></td>
</tr>
<tr><td colspan="3" align="center"><button type="submit">Update Profile</button></td></tr>
 	</table>
</div>
<div  style="margin-right:5%;width:100%;" id="suggest_notifications">
</div>
</div>
<script type="text/javascript">
$.get("NotificationController",{"bloodGroupValue":"SA+"},function(data){
	$("#suggest_notification").html(data);
});
</script>
</body>
</html>