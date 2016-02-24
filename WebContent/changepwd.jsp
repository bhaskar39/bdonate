<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>Change Password</title>
		<script type="text/javascript">
		function validateForm() {
			var username = document.forms["myForm"]["username"].value;
		    var oldpwd = document.forms["myForm"]["oldpwd"].value;
		    var password = document.forms["myForm"]["password"].value;
		    var repassword = document.forms["myForm"]["repassword"].value;
		    if (username == null || username == "") {
		    	alert("Username must be entered");
		    	return false;
		    }
		    if (oldpwd == null || oldpwd == "") {
		        alert("Old password must be entered");
		        return false;
		    }
		    if (password == null || password == "") {
		        alert("New password must be entered");
		        return false;
		    }
		    if (repassword == null || repassword == "") {
		        alert("Re-type new password must be entered");
		        return false;
		    }
		    if (password == oldpwd) {
		    	alert("New password must be different from old password");
		    	return false;
		    }
		    if (password != repassword) {
		    	alert("Password must match with re-type password");
		    	return false;
		    }
		}
		</script>
		<style type="text/css">
			tr {
				background-color:#ffffff
			}
			td.tone {
				width: 80px;
				text-align : left;
			}
			td.ttwo {
				width:20px;
				height:30px;
				text-align : center;
			}
			td.tthree {
				width:120px;
				text-align : left;
			}
		</style>
		<!-- 
		onsubmit="return validateForm()"
		 -->
	</head>
	<body bgcolor="#ffffff">
		<form action="ChangePwdController" method="POST" name="myForm" onsubmit="return validateForm()">
		<div id="Login" align="center">
		<table style="align:center">
			<tr>
				<td colspan="3">
					<BR><BR>
			            <strong>Change Password</strong>
			        <BR><BR>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    </td>
			</tr>
		</table>
		<table>
			<tbody>
				<tr>
			        <td class="tone">
			            <strong>Username</strong>
			        </td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			            <input name="username" type="text" maxlength="100" >
			        </td>
			    </tr>
			    <tr>
			        <td class="tone">
			            <strong>Old Password</strong>
			        </td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			            <input name="oldpwd" type="text" maxlength="100" >
			        </td>
			    </tr>
			    <tr>
			        <td class="tone">
			            <strong>Password</strong>
			        </td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			            <input name="password" type="text">
			        </td>
			    </tr>
			    <tr>
			        <td class="tone">
			            <strong>Re-type Password</strong>
			        </td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			            <input name="repassword" type="text">
			        </td>
			    </tr>
			    <tr>
			        <td class="tone">
			            <BR><BR>
			        </td>
			        <td class="ttwo">
			        </td>
			        <td class="tthree">
			        </td>
			    </tr>
		    	<tr>
		    		<td colspan='3' align='center'>
		                <input type="submit" name="btnSubmit" value="Change Password" />
		        	</td>
		    	</tr>
			</tbody>
		</table>
		</div>
		</form>
	</body>
</html>