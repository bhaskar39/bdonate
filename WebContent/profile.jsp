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
User ss= (User)session.getAttribute("user");
//String v = request.getAttribute("value").toString();
%>
	
	<script type="text/javascript">
		function edit(id){
			var td_input = "";
			if((id!="address")&&(id!="")){
				var data = document.getElementById(id+"_td").innerHTML;
				data = data.trim();
				td_input="<input name='"+id+"' id='"+id+"' type='text' value='"+data+"'/>";
				}
			else if(id=="address") {
				var data = document.getElementById("address_td").innerHTML;
				data = data.trim();
				td_input="<textarea name='address' id='address' cols=5 rows=4>"+data+"</textarea>";
			}
			$('#'+id+"_td").html(td_input);
			
		}
		function icon_change(id){
			var td_input = "";
			if((id!="gender")&&(id!="dob")&&(id!="bloodgroup")){
				var s = "\""+id+"\"";
				td_input="<span class='icon-checkmark' onClick ='submition("+s+")'></span>";	
			}
			$('#'+id+"_icon").html(td_input);
		}
		function submition(id){
			var value = document.getElementById(id).value;
			var email = "<%= ss.getEmail()%>";
			data= {"id":id,"value":value,"email":email,"all":"false"};
			$.post("ChangeProfileController",data,function(res){
				//$('#'+result_container).html(res);
				if(res!="error"){
					var td_content = res;
					if((id!="address")&&(id!="")){
						td_content = td_content.trim();
						document.getElementById(id+"_td").innerHTML = td_content;
					}
					else if(id=="address") {
						document.getElementById("address_td").innerHTML=value;
					}
					var s = "\""+id+"\"";
					td_input="<span class='icon-pencil-2' onClick ='edit("+s+"),icon_change("+s+");'></span>";
					$('#'+id+"_icon").html(td_input);
					$("#user_menu").load("usermenu.jsp");
				}
				else {
					alert("Error occured please try again");
				}
			});
		}
	</script>
	<div style="min-width:50%;max-width:65%;margin-left:auto;margin-right:auto;box-shadow:0px 2px 2px grey;margin-top:5%;padding-bottom:1px;min-width:500px">
        <table class='table table-hover  table-striped'>
        	<tr>
        		<th>
        			<h3>
        			<span class="icon-user"></span>User Details
        			</h3>
        		</th>
        		<th id="updateprofile" onclick="load_page(this.id)">
        			<h4 align="right">
        				Update Profile
        			</h4>
        		</th>
        		<th id="updateprofile" onclick="load_page(this.id)">
        			<h3><span class="icon-cog-2"></span></h3>
        		</th>
        	</tr>
        	<tr>
        		<td colspan="3">
        			<BR>
        		</td>
        	</tr>
	        <tr>
	        	<td>
	        		Name
	        	</td>
	        	<td id="name_td">
	        		<%=ss.getName()%>
	        	</td>
	        	<td id="name_icon">
	        		<span class="icon-pencil-2" onClick ="edit('name'),icon_change('name');"></span>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		BloodGroup
	        	</td>
	        	<td id="bloodgroup_td">
	        		<%=ss.getBloodgroup()%>
	        	</td>
	        	<td id="bloodgroup_icon">
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Gender
	        	</td>
	        	<td id="gender_td">
	        		<%= ss.getGender()%>
	        	</td>
	        	<td id="gender_icon">
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Date of Birth
	        	</td>
	        	<td id="dob_td">
	        		<%=ss.getDob()%>
	        	</td>
	        	<td id="dob_icon">
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Mobile
	        	</td>
	        	<td id="mobile_td">
	        		<%=ss.getMobile()%>
	        	</td>
	        	<td id="mobile_icon">
	        		<span class="icon-pencil-2" onClick ="edit('mobile'),icon_change('mobile');"></span>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Alternative Mobile
	        	</td>
	        	<td id="altmobile_td">
	        		<%=ss.getAltmobile()%>
	        	</td>
	        	<td id="altmobile_icon">
	        		<span class="icon-pencil-2" onClick ="edit('altmobile'),icon_change('altmobile');"></span>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Email
	        	</td>
	        	<td id="email_td">
	        		<%=ss.getEmail()%>
	        	</td>
	        	<td id="email_icon">
	        		<span class="icon-pencil-2" onClick ="edit('email'),icon_change('email');"></span>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Location
	        	</td>
	        	<td id="location_td">
	        		<%=ss.getLocation()%>
	        	</td>
	        	<td id="location_icon">
	        		<span class="icon-pencil-2" onClick ="edit('location'),icon_change('location');"></span>
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Address
	        	</td>
	        	<td id="address_td">
					<%
					String[] arr=ss.getAddress().split(",");
					int i=0;
					for(i=0;i<arr.length;i++){
						out.println(arr[i]+"</br>");
					}
					%>
	        	</td>
	        	<td id="address_icon">
	        	</td>
	        </tr>
	    	<tr>
	        	<td>
	        		Zipcode
	        	</td>
	        	<td id="zipcode_td">
	        		<%=ss.getZipcode()%>
	        	</td>
	        	<td id="zipcode_icon">
	        	</td>
	        </tr>
	    </table>
	</div>
</body>
</html>