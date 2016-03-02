
<%
String stt= (String)request.getAttribute("status");

if(stt.equals("updated")){
%>
<h3 style="color:#5BB75B">Thank you <span class="icon-happy"></span></h3>
<h3 class="alert" style="background:#49AFCD;border:0px;">We will remind you Date of donation</h3>
<% }else{
%>
<td colspan=5>Updated <span class="icon-happy"></span></td>
<%} %>
