<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>search</title>
</head>


<title>Search</title>
<style type="text/css">
	.field{
		cursor: pointer;

	}
	.field:hover{
		color:blue;
	}
	.result-table{
		margin-top: 20px;
		width: 600px;
	}


#overlay-back {
    position   : absolute;
    top        : 0;
    left       : 0;
    width      : 100%;
    height     : 100%;
    background : #000;
    opacity    : 0.6;
    z-index    : 5;
    display    : none;
}

#overlay {
	position: absolute;
    top      : 20px;
    left     : 0;
    margin-left: 20%;
    margin-right: 20%;
    width:800px;
    height:auto;
    z-index  : 10;
    display  : none;
    background: #fff;
} 


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<body>

<script type="text/javascript">
function show_post_form()
{
	$('#overlay, #overlay-back').fadeIn(500);
	$("#overlay").load("form.html")


}
</script>


	<div style="border:5px solid gray;width:900px;margin-left:auto;margin-right:auto;height:500px">
	<div style="margin-left:auto;margin-right: auto;margin: 20px">
	<h2 align=center>Search Donar</h2>
	<form action="search_results.jsp" method="post">
	<table style="" align=center>
	<tr><td>Search by location</td><td>:</td>
		<td><input type=text style="width:400px" placeholder="Current Location" name="location"></td>
	</tr>
	<tr>
		<td>Search by Blood Group</td><td>:</td>
		<td><select required name="blood_group">
  <option value="A+">A+</option>
  <option value="A-">A-</option>
  <option value="B+">B+</option>
  <option value="B-">B-</option>
  <option value="AB+">AB+</option>
  <option value="AB-">AB-</option>
  <option value="O+">O+</option>
  <option value="O-">O-</option>
  <option value="Any">Any</option>
</select></td>
	</tr>
	<tr>
		<td colspan="3" align=center><input type="submit" value="Search" style="border:0px;height:40px;width:100px;font-size:20px;border-radius: 5px;background:#ca0000;color:#fff">
		</td>
	</tr>
	</table>
	</form>

	<br></br><hr>
	<h3 align=center>Results</h3>
	<table align="center" class="result-table" border=1>
		<tr>
			<th></th>
			<th>Name</th>
			<th>Group</th>
			<th>Contact</th>
			<th>Location</th>
		</tr>
		<tr onclick="show_post_form()" class="field">
			<td style="border:0px"><li style="color:#0FF000"></li></td>
			<td>S.Ganga</td>
			<td>A-</td>
			<td>9123456789</td>
			<td>10Km</td>
		</tr>
		<tr class="field" onclick="alert('Donar not available')" style="background: #f5f5f5">
			<td style="border:0px;"><li style="color:red;font-size:0px"></li></td>
			<td>Gopal</td>
			<td>AB+</td>
			<td>9123456789</td>
			<td>15Km</td>
		</tr>
		<tr onclick="show_post_form()" class="field">
			<td style="border:0px"><li style="color:#0FF000"></li></td>
			<td>Satya</td>
			<td>O-</td>
			<td>9123456789</td>
			<td>30Km</td>
		</tr>
		<tr onclick="show_post_form()" class="field">
			<td style="border:0px"><li style="color:#0FF000"></li></td>
			<td>Prakash</td>
			<td>B+</td>
			<td>9123456789</td>
			<td>50Km</td>
		</tr>
	</table>
	</div>
	<div id="overlay">
</div> 
</div>
<div id="overlay-back"></div>
</body>

</html>