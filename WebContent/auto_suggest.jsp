<%@page import="models.Auto_Suggestor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bos.User" %>

<style>
.suggestion{
cursor:pointer;
}
</style>

<%

ArrayList<String> list = (ArrayList<String>) request.getAttribute("results");
String inp_id = request.getAttribute("inp_id").toString();
for (String s : list){
	out.println("<div class='suggestion' onclick='set_value(\""+inp_id+"\",this.innerHTML)'>"+s+"</div>");
}

%>	
<!-- 
<form action="Suggest_Controller" method="post">
	<input type="text" name="table" value="users">
	<input type="text" name="field" value="location">
	<input type="text" name="con_field" value="location">
	<input type="text" name="inp" value="i">
	<input type="text" name="inp_id" value="kk">
	<input type=submit>
</form>
 -->
 <script type="text/javascript">
 function set_value(id,val){
	 document.getElementById(id).value=val;
	 $('#suggestions').hide();
 }
 </script>