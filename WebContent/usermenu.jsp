<%@page import="bos.User"%>
<%
User uu = (User)session.getAttribute("user");
String uname=uu.getName();
%>
<li id="dashboard_li"><a style='border-radius:5px;margin:1px;font-weight: bold;'  class="dropdown-toggle" data-toggle="dropdown"><span class="icon-user"></span> <%=uname %><span class="caret"></span></a>
                  	         <ul class="dropdown-menu">
                  	         	<li id="dashboard"  onclick="load_page(this.id)" ><a>Dashboard</a></li>
                  	         	<li id="profile_li"><a id="profile" onclick="load_page(this.id)">View Profile</a></li>
         						<li id="logout_li" ><a id="logout" onclick="load_page(this.id)">Logout</a></li>
         					</ul>
         				
</li>