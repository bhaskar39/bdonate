<%@page import="java.util.*"%>
<%@page import="bos.Requestobj"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" %>
   
<div style="margin-top:5%;width:70%">
<h3>Your Donation Reports</h3></br>
<style>
blockquote{
	margin-top:0px;
	margin:0px 0px 10px;
}
</style>
<%
ArrayList<Requestobj> reportObjects = (ArrayList<Requestobj>) request.getAttribute("reportObjectsValues");
for (Requestobj report: reportObjects)
 {
%>
		<blockquote>
           <p>Donated to: <%= report.getPatientname()%> on: <%=report.getDate()%></p>
           <small>at <%=report.getLocation() %></small>
        </blockquote>
 
<%
 }
%>
</div>