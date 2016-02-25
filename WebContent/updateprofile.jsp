<%@page import="bos.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reach Donar</title>
</head>
<body>
<%
User ss= (User)session.getAttribute("user");
//String v = request.getAttribute("value").toString();
%>
	
	<script type="text/javascript">
		function update(){
			var name = document.getElementById("name").value;
			var mobile = document.getElementById("mobile").value;
			var altmobile = document.getElementById("altmobile").value;
			var email = document.getElementById("email").value;
			var city = document.getElementById("location").value;
			var zipcode = document.getElementById("zipcode").value;
			var address = document.getElementById("address").value;
			data = {"name":name,"mobile":mobile,"altmobile":altmobile,"email":email,"city":city,"zipcode":zipcode,"address":address,"all":"true"};
			$.post("ChangeProfileController",data,function(res){
				$.post("profile.jsp",function(data){
					$("#user_menu").load("usermenu.jsp");
					$("#body").html(data); 
				  });
			});
		}	</script>
	<div style="width:50%;margin-left:auto;margin-right:auto;box-shadow:0px 2px 2px grey;margin-top:5%;padding-bottom:1px;min-width:500px">
        <table class='table table-hover  table-striped'>
        	<tr>
        		<th>
        			<h3>
        			Update Profile
        			<span class="icon-cog-2"></span>
        			</h3>
        		</th>
        		<th id="profile" onclick="load_page(this.id)">
        			<h3 align="right">
        				View Profile
        				<span class="icon-user"></span>
        			</h3>
        		</th>
        	</tr>
        	<tr>
        		<td colspan="2">
        			<BR>
        		</td>
        	</tr>
	        <tr>
	        	<td>
	        		Name
	        	</td>
	        	<td id="name_td">
	        		<input name='name' id='name' type='text' value='<%=ss.getName()%>'/>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		BloodGroup
	        	</td>
	        	<td id="bloodgroup_td">
	        		<%=ss.getBloodgroup()%>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Gender
	        	</td>
	        	<td id="gender_td">
	        		<%= ss.getGender()%>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Date of Birth
	        	</td>
	        	<td id="dob_td">
	        		<%=ss.getDob()%>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Mobile
	        	</td>
	        	<td id="mobile_td">
	        		<input name='mobile' id='mobile' type='text' value='<%=ss.getMobile()%>'/>
	        		
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Alternative Mobile
	        	</td>
	        	<td id="altmobile_td">
	        		<input name='altmobile' id='altmobile' type='text' value='<%=ss.getAltmobile()%>'/>
	        		
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Email
	        	</td>
	        	<td id="email_td">
	        		<input name='email' id='email' type='text' value='<%=ss.getEmail()%>'/>
	        		
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Location
	        	</td>
	        	<td id="location_td">
	        		<input name='location' id='location' type='text' value='<%=ss.getLocation()%>'/>
	        		
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Address
	        	</td>
	        	<td id="address_td">
	        		<textarea name='address' id='address' cols=5 rows=4><%=ss.getAddress()%></textarea>
					
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Zipcode
	        	</td>
	        	<td id="zipcode_td">
	        		<input name='zipcode' id='zipcode' type='text' value='<%=ss.getZipcode()%>'/>
	        		
	        	</td>
	        </tr>
	        <tr align="center">
	        	<td>
	        	</td>
	        	<td>
	        		<input type="submit" value="Update Now" onClick="update();"/>
	        	</td>
	        </tr>
	    </table>
	</div>
</body>
</html>