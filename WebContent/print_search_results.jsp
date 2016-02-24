<%@page import="java.util.ArrayList"%>
<%@page import="bos.User" %>



<%
ArrayList<User> list = (ArrayList<User>) request.getAttribute("objects");
if(list.size()>0){
%>
<table class="table table-hover" style="width:70%;margin-left:auto;margin-right:auto;" >
			<thead>
				<tr>
					<th>Available</th>
					<th>Name</th>
					<th>Blood Group</th>
					<th>Location</th>
					<th>Contact</th>
				</tr>
			</thead>
			<tbody>
<% 
for(User user:list){
	String row = "<tr>";
	if (user.getAvailability().equals("true"))
		row+="<td><span class='badge badge-success'>&nbsp;</span></td>";
	else
		row+="<td><span class='badge badge-important'>&nbsp;</span></td>";
		row+="<td>"+user.getName()+"</td>";
		row+="<td>"+user.getBloodgroup()+"</td>";
		row+="<td>"+user.getLocation()+"</td>";
		row+="<td>"+user.getMobile()+"</td></tr>";
	out.println(row);
}
	out.println("</tbody></table>");
}
else{
	out.println("No Records Available");
}
%>	

