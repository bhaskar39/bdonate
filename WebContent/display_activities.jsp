<%@page import="bos.User"%>
<%@page import="bos.Requestobj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<style>
.icon-checkmark{
	color:green;
	cursor:pointer;
}
.icon-cross{
	color:red;
	cursor:pointer;
}
</style>
<span class='pull-right icon-cross' onclick='$("#fade_black").hide()' style='cursor:pointer;color:rgb(165, 39, 19)'></span>
<h3 align=center>Give your Confirmation for below Donations</h3></br>
<div style="max-width:70%;margin-left:auto;margin-right:auto;">
<table class="table table-hover">
<%
ArrayList<Requestobj> obs = (ArrayList<Requestobj>) request.getAttribute("objectsValue");
if (obs.size()>0){
%>
	<thead>
		<tr><th>Date</th>
		<th>Location</th>
		<th>Patient Name</th>
		<th>Donated</th>
		<th>Not Donated</th>
		</tr>
	</thead>
<% 
int i=-1;
User user= (User)session.getAttribute("user");
String email = (String)user.getEmail();
for(Requestobj req : obs){
	i++;
	%>
		<tr id="row<%=i%>">
			<td><%=req.getDate() %></td>
			<td><%=req.getLocation() %></td>
			<td><%=req.getPatientname() %></td>
			<td onclick="action('donated','<%=req.getReq_id()%>','<%=i%>','<%=email%>')"><span class="icon-checkmark"></span></td>
			<td  onclick="action('notdonated','<%=req.getReq_id()%>','<%=i%>','<%=email%>')"><span class="icon-cross"></span></td>
		</tr>
		<tr></tr>
	<%
}
}
%>
</table>
</div>
<script type="text/javascript">
function action(act,re,i,em){
	params={"reqIdValue":re,"emailValue":em,"action":act};
	$.post("RequestUpdateController",params,function(data)
   	{
  		$("#row"+i).html(data); 
    });
	
}
</script>