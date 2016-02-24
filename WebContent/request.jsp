<h2 align=center style="text-decoration:underline dotted">Blood Request form</h2></br>
<form action="BloodRequest" method="post" id="blood_request_form">
	<table align="center">
		<tr><td >Patient Name *</td>
		<td><input type="text" value="" size="30" maxlength="155" required color="red" id="patientname"></td></tr>
		<tr><td>Your Name *</td><td><input type="text" value="" size="30" maxlength="155" required id="username"></td></tr>
		<tr><td>Select blood group required *</td><td>
			<select  id="bgroup" required>
				  <option value="A+">A+</option>
				  <option value="A-">A-</option>
				  <option value="B+">B+</option>
				  <option value="B-">B-</option>
				  <option value="AB+">AB+</option>
				  <option value="AB-">AB-</option>
				  <option value="O+">O+</option>
				  <option value="O-">O-</option>
				  <option value="Any">Any</option>
			</select></td></tr>
		<tr>
			<td>Date *</td>
			<td>
			<div data-date-format="dd-mm-yyyy" data-date="21-02-2012" id="dp3" class="input-append date" data-provide="datepicker">
           		<input type="text" readonly="" value="21-02-2012" id="date" size="16" class="span2">
           		<span class="add-on"><i class="icon-calendar-3"></i></span>
        	</div>
			</td>
		</tr>
		<tr><td>No of units Reqired *</td><td><input type="text" value="" size="30" maxlength="155" id="units" required></td></tr>
		<tr><td >Blood/Platelet *</td><td><select id="borp" required>
		  <option value="Blood">Blood</option>
		  <option value="platelet">Platelet</option>
		  </select></td></tr>
		 <tr><td>city *</td><td><select id="city" >
		  <option value="Bhimavaram">Bhimavaram</option>
		  <option value="Eluru">Eluru</option>
		  <option value="Hyderabad">Hyderabad</option>
		  <option value="Thirupathi">Thirupathi</option>
		  <option value="Visakhapatnam">Visakhapatnam</option>
		  <option value="Vijayawada">Vijayawada</option>
		</select></td></tr>
		<tr><td>Hospital *</td><td><textarea id="hospital" rows="5" cols="30" required>Write something here</textarea></td></tr>
		<tr><td>Phone *</td><td><input type="text" id="phone" size="30" maxlength="155" required ></td></tr>
		<tr><td>Email *</td><td><input type="text"  size="30" maxlength="155" id="email" required></td></tr>
		<tr><td>Additional Details</td><td><textarea id="additionaldetails" rows="5" cols="30" required >Write something here</textarea></td></tr>
		<tr><td align="center" colspan=2><input type="submit" value="Submit" ></td></tr>
	</table>
	</form>
	
<script type="text/javascript">
$(document).ready(function(){  
    $('#blood_request_form').on('submit',function(event){
       event.preventDefault();
       params={'patientname':$('#patientname').val(),'username':$('#username').val(),'bgroup':$('#bgroup').val(),'units':$('#units').val(),'date':$('#date').val(),'b/p':$('#borp').val(),'hospital':$('#hospital').val(),'phone':$('#phone').val(),'email':$('#email').val(),'additionaldetails':$('#additionaldetails').val(),'location':$("#city").val()};
       load_page_post("BloodRequest","blood_request_form",params) 
    });  
});
</script>
