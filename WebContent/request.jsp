<h2 align=center style="text-decoration:underline dotted">Blood Request form</h2></br>
<form action="BloodRequest" method="post" id="blood_request_form">
	<table align="center">
		<tr><td >Patient Name *</td>
		<td><input type="text" value="" size="30" maxlength="155" color="red" id="patientname"></td></tr>
		<tr><td>Your Name *</td><td><input type="text" value="" size="30" maxlength="155" id="username"></td></tr>
		<tr><td>Select blood group required *</td><td>
			<select  id="bgroup" >
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
			<div data-date-format="dd-mm-yyyy" data-date="" id="dp3" class="input-append date" data-provide="datepicker">
           		<input type="text" readonly="" value="" id="date" size="16" class="span2">
           		<span class="add-on"><i class="icon-calendar-3"></i></span>
        	</div>
			</td>
		</tr>
		<tr><td>No of units Reqired *</td><td><input type="text" onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" value="" size="30" maxlength="155" id="units"></td></tr>
		<tr><td >Blood/Platelet *</td><td><select id="borp" >
		  <option value="Blood">Blood</option>
		  <option value="platelet">Platelet</option>
		  </select></td></tr>
		 <tr><td>city *</td><td><input id="city" type="text"/>
		  </td></tr>
		<tr><td>Hospital *</td><td><textarea id="hospital" rows="5" cols="30" >Write something here</textarea></td></tr>
		<tr><td>Phone *</td><td><input onkeyup="if (/\D/g.test(this.value)) this.value = this.value.replace(/\D/g,'')" type="text" id="phone" size="30" maxlength="155"  ></td></tr>
		<tr><td>Email *</td><td><input type="text"  size="30" maxlength="155" id="email" ></td></tr>
		<tr><td>Additional Details</td><td><textarea id="additionaldetails" rows="5" cols="30" >Write something here</textarea></td></tr>
		<tr><td align="center" colspan=2><input type="submit" value="Submit" ></td></tr>
	</table>
	</form>
<div style="top:250px;width:20%;left:900px;right:20px;position:fixed;margin-left:auto;margin-right:auto;margin-top:1%;">
	<div class="alert alert-warning"  style="display:none">
	<button type="button" class="close" data-dismiss="alert" ></button>
	<div id ="cls"></div>
	</div>
</div>
<script type="text/javascript">
$(document).ready(function(){  
    $('#blood_request_form').on('submit',function(event){
       event.preventDefault();
       params={'patientname':$('#patientname').val(),'username':$('#username').val(),'bgroup':$('#bgroup').val(),'units':$('#units').val(),'date':$('#date').val(),'b/p':$('#borp').val(),'hospital':$('#hospital').val(),'phone':$('#phone').val(),'email':$('#email').val(),'additionaldetails':$('#additionaldetails').val(),'location':$("#city").val()};
       
       if ( params.patientname == null || params.patientname == "") {
    	   document.getElementById("cls").innerHTML ="Enter Patient Name";
    		   $('.alert').fadeIn('slow').delay(4000).fadeOut('slow');
    		   $("#patientname").focus();
   	    return false;
   	}
    
      if (params.username== null || params.username == "") {
    	  document.getElementById("cls").innerHTML="Enter your Name";
    		$(".alert").fadeIn();
  	  		$("#username").focus();
  	    return false;
  	}
      if (params.bgroup== null || params.bgroup == "") {
     	  document.getElementById("cls").innerHTML="Enter Bloodgroup";
     	 $('.alert').fadeIn('slow').delay(4000).fadeOut('slow');
   	  		$("#bgroup").focus();
   	    return false;
   	}  
      if (params.units== null || params.units == "")
     	        {  
     	    	  document.getElementById("cls").innerHTML ="Units must be number";
     	    	 $('.alert').fadeIn('slow').delay(4000).fadeOut('slow');
     	    	$("#units").focus();
     	        return false;  
     	        }   
      if (params.location == null || params.location == "") {
    	  document.getElementById("cls").innerHTML="Select City";
    	  $('.alert').fadeIn('slow').delay(4000).fadeOut('slow');
    	  	$("#city").focus();
     	    return false;
     	}
        
     if (params.hospital == null || params.hospital == "") {
    	 document.getElementById("cls").innerHTML="Enter hospital address";
    	 $('.alert').fadeIn('slow').delay(4000).fadeOut('slow');
    	 $("#hospital").focus();
     	    return false;
     	}
    if(params.phone==null || params.phone=="" || (params.phone).length <= 9){
		document.getElementById("cls").innerHTML ="Enter a valid phone number";
		$('.alert').fadeIn('slow').delay(4000).fadeOut('slow'); 
		$("#phone").focus();
		return false;
	}
      var x=params.email;
      var atpos = x.indexOf("@");
      var dotpos = x.lastIndexOf(".");
      if ((atpos<1) || (dotpos<atpos+2) || ((dotpos+2)>=x.length)) {
    	  document.getElementById("cls").innerHTML ="Enter a valid Email";
    	  $('.alert').fadeIn('slow').delay(4000).fadeOut('slow');
      	$("#email").focus();
          return false;
      }
       
       
       load_page_post("BloodRequest","blood_request_form",params)
    });  
});
</script>
