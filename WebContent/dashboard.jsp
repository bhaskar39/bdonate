<%@page import="bos.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	User user = (User) session.getAttribute("user");
	String ses= (String) request.getAttribute("refresh");
	if (ses!=null){
			
%>

<script type="text/javascript">
$("#user_menu").load("usermenu.jsp");
</script>
<%
}
%>
<style>
	.badge{
	border-radius:25px;width:0px;
	}
	#divOne div{
	width:70%;
	}
	#black_container{
		box-shadow: 0px 2px 5px #fff;
	}

</style>
<div  style="width:60%;margin-left:10%;display:inline-block">
	<h3>Blood Requests <small>(matches to your bloodGroup)</small></h3></br>
	<div id="divOne"></div>
</div>
<div id ='fade_black'  style='display:none;position:fixed;top:0px;left:0px;width:100%;height:100%;background-color:rgba(16,16,16,0.6)  ;'>
     <div id='black_container'  style='position:fixed;top:20%;left:25%;width:50%;background:#fff'>
     </div>
</div>
<script>
$(document).ready(function(){
        $("#divOne").load("notification.jsp");
        //$("#divTwo").load("notification.jsp");
});
</script>

<p>
<%
	
	RequestDispatcher rd = request.getRequestDispatcher("displayprofile.jsp");
	request.setAttribute("user", user);
	rd.include(request, response);
%>
</p>