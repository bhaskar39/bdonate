<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<title>Profile</title>
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
	</head>
	<body>
	<c:set var="name" value="${requestScope['user'].name}" scope="session"/>
	<%
		String name=request.getParameter("name");
		System.out.println(name);
		session.setAttribute("name",name);
	%>
		<div id="Login" align="center">
		<table style="align:center">
			<tr>
				<td colspan="3">
					<BR><BR>
		         	  <strong>User Details</strong>
		        	<BR><BR>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		   		</td>
			</tr>
		    <tr>
		        <td class="tone">
		            <strong>Name</strong>
		        </td>
		        <td class="ttwo">
		            <strong></strong>
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].name}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Bloodgroup</strong>
		        </td>
		        <td class="ttwo">
		            <strong></strong>
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].bloodgroup}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Gender</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].gender}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Date of Birth</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].dob}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Mobile</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].mobile}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Alternative Mobile</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].altmobile}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Email</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].email}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Location</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].location}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Address</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].address}</label>
		        </td>
		    </tr>
		    <tr>
		        <td class="tone">
		            <strong>Zipcode</strong>
		        </td>
		        <td class="ttwo">
		        </td>
		        <td class="tthree">
		        	<label>${requestScope['user'].zipcode}</label>
		        </td>
		    </tr>
		    <tr>
		        <td colspan='3' align='center'>
		        	<a href='chnprofile.jsp'>Change Profile</a>
		        </td>
		    </tr>
		</table>
		</div>
	</body>
</html>