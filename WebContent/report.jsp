<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<%
String email="sravanaganga.kudaravalli@gmail.com";  //Provide the username here....
%>
<script type="text/javascript">
var email=  "<%=email%>";
$(document).ready(function()
{  
    $('#ReportForm').on('submit',function(event)
      {

       params={"emailValue":email};
	    $.post("ReportController",params,function(data){
	        alert(data);
	  		$("#ReportDivision").html(data); 
	   	});
      });
});
</script>
</head>
<body>
<div id="ReportDivision">
<form id="ReportForm" action="ReportController" method="post">
  <input type="submit"  value="View Reports">
</form>
</div>
</body>
</html>