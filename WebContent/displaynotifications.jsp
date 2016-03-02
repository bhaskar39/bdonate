<%@page import="java.util.ArrayList"%>
<%@page import="sun.org.mozilla.javascript.internal.json.JsonParser"%>
<%@page import="bos.User"%>
<%@page import="bos.Requestobj"%>
<%@page import="bos.NotificationObjects"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>
p{
cursor:pointer;
}
</style>
<div>

<%
User user = (User)session.getAttribute("user");
String email1= user.getEmail();
//Requestobj[] objects=null;
   try 
     {
	//	objects=(Requestobj[])request.getAttribute("objectsValue");
		ArrayList<Requestobj> object = (ArrayList<Requestobj>)request.getAttribute("objectsValue");
		int i=-1;
		for(Requestobj objects : object){
			i++;
	    	String name= objects.getPatientname();
	    	String bg=objects.getBloodgroup();
	    	String un = objects.getUnits();
	    	String bp =objects.getBorp();
	    	String ph = objects.getPhone();
	    	String hs = objects.getHospital();
	    	String dt = objects.getDate();
	    	int req_id = objects.getReq_id();
	    	String value= name+"$"+bg+"$"+un+"$"+bp+"$"+ph+"$"+hs+"$"+dt+"$"+req_id+"$"+objects.getEmail();
	    	if (i%2==0){
	    		
%>
        <blockquote id="b<%=i%>">
           <p  onclick="display_request(this.id)" id="req<%=i%>"><input type="text" style="display:none" id="data<%=i %>" value="<%=value %>" /><%=objects.getPatientname()%> requires <%=objects.getUnits()%> units of <%=objects.getBloodgroup()%> <%=objects.getBorp() %></p>
           <small><%=objects.getHospital()%> <%=objects.getDate()%></small>
        </blockquote>
	
<%
	    	}
	    	else{%>
	    	<blockquote style="border-left:0px;border-right:5px solid #0177DB" id="b<%=i%>">
           	<p  onclick="display_request(this.id)" id="req<%=i%>"><input type="text" style="display:none" id="data<%=i %>" value="<%=value %>"><%=objects.getPatientname()%> requires <%=objects.getUnits()%> units of <%=objects.getBloodgroup()%> <%=objects.getBorp() %></p>
           <small><%=objects.getHospital()%> <%=objects.getDate()%></small>
        </blockquote>
	<%
	    		
	    	}
	       }
     }
catch(Exception e)
   {   
   }
%>

</div>
<script type="text/javascript">
function display_request(ob){
	$("#fade_black").fadeIn();
	valu=$('#data'+ob[3]).val();
	
	valu=valu.split("$");
	resp="<div>";
	resp+="<span class='pull-right icon-cross' onclick='refresh_dashboard()' style='cursor:pointer;color:rgb(165, 39, 19)'></span>"
	resp+="<h3 style='text-decoration:underline dotted;' align='center'>Blood Request Details</h3></br>";
	resp+="<table class='table table-hover table-bordered table-striped'  style='width:70%;margin-left:auto;margin-right:auto;'>";
	resp+="<tr><td>Request ID</td><td>req_"+valu[7]+"</td></tr>";
	resp=resp+"<tr><td>Patient Name</td><td>"+valu[0]+"</td></tr>";
	resp=resp+"<tr><td>Blood Group</td><td>"+valu[1]+"</td></tr>";
	resp=resp+"<tr><td>Required</td><td>"+valu[3]+" ("+valu[2]+" units)</td></tr>";
	resp+="<tr><td>Date</td><td>"+valu[6]+"</td></tr>";
	resp=resp+"<tr><td>Contact</td><td>"+valu[4]+"</td></tr>";
	resp=resp+"<tr><td>Hospital Address</td><td>"+valu[5]+"</td></tr>";
	resp+="<tr><td colspan=2  style='text-align:center' id='rr"+valu[7]+"'><button class='btn btn-success' id='r"+valu[7]+"' onclick='accept(this.id)'>I want to Donate</button></td></tr>"
	resp=resp+"</table></div>";
	$("#black_container").html(resp);
}
function accept(id){
	ii=id.substring(1,id.length);
	params={"reqIdValue":ii,"emailValue":"<%=email1%>","action":"approved"};
	$.post("RequestUpdateController",params,function(data)
   	{
  		$("#rr"+ii).html(data); 
    });
	
}
function refresh_dashboard()
{
	$("#fade_black").hide();
	$("#body").load("dashboard.jsp");
}
</script>