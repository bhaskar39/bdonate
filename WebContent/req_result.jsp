<%@page import="bos.Requestobj"%>
<style>
        .toast{
           position: fixed;
           top: 5px;
           right: 5px;
           padding: 0;
           z-index: 1100;
           border-color:#5BB75B;
           background-color:#87D287;           
        }
         
        .toast {
           /* add a shadow */
           -webkit-box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
              box-shadow: 0 3px 7px rgba(0, 0, 0, 0.3);
        }
</style>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%


if(request.getAttribute("result").toString().equals("1")){
	Requestobj req =(Requestobj)request.getAttribute("req_obj");
	String k=req.getPatientname();
%>
<script type="text/javascript">
var $toast = $('#toast-example1').clone();
$toast.addClass("in");
setTimeout($('#body').append($toast.fadeIn(1000)), 3000);

</script>
<div style="margin-left:auto;margin-right:auto;width:50%">
<div  style="overflow:intial;overflow:hidden;margin-left:auto;margin-right:auto;">
<!--  
<div class="alert alert-success fade btn-success" style="width:50%;margin-left:auto;margin-right:auto;">
	Form submitted.
	<a class="close" data-dismiss="alert" href="#"></a>
</div>
-->
</div>
<%
	String resp="<table class='table table-hover table-bordered table-striped'>";
	resp+="<tr><td>Patient Name</td><td>"+req.getPatientname()+"</td></tr>";
	resp+="<tr><td>Blood Group</td><td>"+req.getBloodgroup()+"</td></tr>";
	resp+="<tr><td>Required</td><td>"+req.getBorp()+" ("+req.getUnits()+" units)</td></tr>";
	resp+="<tr><td>City</td><td>"+req.getLocation()+"</td></tr>";
	resp+="<tr><td>Contact</td><td>"+req.getPhone()+"</td></tr>";
	resp+="<tr><td>Hospital Address</td><td>"+req.getHospital()+"</td></tr>";
	resp+="</table>";
	out.println(resp);
}	
%>
<div align="center"><button class="btn btn-info" onclick="load_page('search')">Search Donar?</button></div>
</div>
<%


/*
if (re==1){
	Requestobj req = (Requestobj)request.getAttribute("req_obj");
	out.println("kishore");
}
else{
	out.println("kumar");
}*/

%>
<div id="toast-example1" class="toast toasttext02 fade btn-success">
   <button type="button" class="close" data-dismiss="alert"></button>
   <div class="toast-body">
      <h4 class="toast-heading" style="font-weight:bold;font-size:15px">Request Success</h4>
      <p>Your Blood Request form is submitted.</p>
   </div>
</div>
<div id="toast-example" class="toast toasttext02 fade btn-danger">
   <button type="button" class="close" data-dismiss="alert"></button>
   <div class="toast-body">
      <h4 class="toast-heading" style="font-weight:bold;font-size:15px">Request Failed</h4>
      <p>An Error occurred.</p>
   </div>
</div>

<script type="text/javascript">

function show_success(){
	   var $toast = $('#toast-example1').clone();
	   $toast.addClass("in");
	   setTimeout($('#body').append($toast.fadeIn(0)), 3000);
	   //setTimeout($toast.fadeOut(3000), 15000);
	   
}

</script>