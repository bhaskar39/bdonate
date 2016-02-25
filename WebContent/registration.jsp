<style>
table input{
	width:250px;
}
</style>

		<div id="registration" align="center">
		        <blockquote>
          	<p>Please Fill the details below</p>
        </blockquote>
        <div style="align:left;">
				<p>Please fill the following information to register as voluntary blood donor and become part of our vision.</p>
				<p>Kindly update your date of donatoin once done, so that your name will be hidden automatically till next 3 Months.</p>
				<p>Also please update your profile/information if in case you relocate in future.</p>
		</div>
		
		
		</br><h3>DONAR REGISTRATION FORM</h3></br>

		<div id="reg_body">
		<form action="RegController" method="POST" name="myForm"" id="my_form">
		<input type=text style="display:none" id="latt"><input type=text style="display:none" id="long">
		<table>
			<tbody>
			    <tr>
			        <td><strong>Full Name</strong></td>
			        <td>:</td>
			        <td><input name="name" id="FullName" type="text" maxlength="100" onkeyup='this.value = this.value.toLocaleUpperCase();' ></td>
			    </tr>
			    <tr>
			        <td><strong>Blood Group</strong></td>
			        <td>:</td>
			        <td>
			        	<select name="bloodgroup">
							<option value="">-----Select-----</option>
							<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
						</select>
					</td>
				</tr>
				<tr>
				    <td class="tone">
			            <strong>Gender</strong>
			        </td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			        	<select name="gender">
							<option value="">-----Select-----</option>
							<option value="M">Male</option>
							<option value="F">Female</option>
						</select>
			        </td>
			   	</tr>
			    <tr>
			    	<td class="tone">
			            <strong>Date Of Birth<br>
			        </td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			                <div data-date-format="dd-mm-yyyy" data-date="21-02-2016" id="dp3" class="input-append date" data-provide="datepicker">
           					<input type="text" readonly="" value="21-02-2016" name="selected_date" size="16" class="span2">
           					<span class="add-on"><i class="icon-calendar-3"></i></span>
        					</div>
					</td>
			    </tr>
			    <tr style="background-color:#e5e5e5">
			        <td height="30" colspan="3">
			            <strong>Contact Information</strong>
			        </td>
			    </tr>
			    <tr>
			        <td class="tone">
			            <strong>Mobile Number<br>
			        	</strong></td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			              <div class="input-prepend">
         					<span class="add-on">+91</span>
         					<input class="span2" id="prep" maxlength="10" name="mobile" type="text" placeholder="Mobile No">
      						</div>
			        </td>
			    </tr>
			    <tr>
			        <td class="tone">
			            <strong>Alternate Mobile Number<br>
			        	</strong></td>
			        <td class="ttwo">
			            <strong>:</strong>
			        </td>
			        <td class="tthree">
			        	<div class="input-prepend">
         					<span class="add-on">+91</span>
         					<input class="span2" id="prep" maxlength="10" name="altmobile" type="text" placeholder="Mobile No">
      						</div>
			        </td>
			    </tr>
			    <tr>
			    	<td class="tone">
			        	<strong>E-Mail ID</strong>
			    	</td>
			    	<td class="ttwo">
			        	<strong>:</strong>
			    	</td>
			    	<td class="tthree">
			        	<input name="email" type="text" maxlength="100">
			     	</td>
			    </tr>
			    <tr>
			    	<td class="tone">
			     		<strong>City</strong>
			     	</td>
			     	<td class="ttwo">
			     		<strong>:</strong>
			     	</td>
			     	<td class="tthree">
			     		<input id="autocomplete" placeholder="Enter location or near city" name="location" type="text"></input>
			     	</td>
			    </tr>
			    <tr>
			    	<td class="tone">
			     		<strong>Zipcode</strong>
			     	</td>
			     	<td class="ttwo">
			     		<strong>:</strong>
			     	</td>
			     	<td class="tthree">
			     		<input type="text" name="zipcode" id="postal_code" readonly/>
			     	</td>
			    </tr>
			    <tr>
			    	<td class="tone">
			        	<strong>Address</strong>
			    	</td>
			    	<td class="ttwo">
			        	<strong>:</strong>
			    	</td>
			    	<td class="tthree">
			    		<textarea name="address" id="address" rows="4" cols="30" readonly>
			    		</textarea>
			    	</td>
			    </tr>
		    	<tr>
		        <tr>
					<td class="tone">
		            	<strong>Password</strong>
		            </td>
					<td class="ttwo">
		            	<strong>:</strong>
		            </td>
					<td class="tthree">
		            	<input name="password" type="password" maxlength="50">
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
		            	<input name="repassword" type="password" maxlength="50">
		            </td>
				</tr>
		        <tr>
		        	<td colspan="3">
		        		<input type="checkbox" id="chkTermsAndCondition">
		            	&nbsp;
		            	I authorise the website to display my name and telephone number,<BR> so that the needy could contact me, as and when there is an emergency.
		        	</td>
		    	</tr>
		    	<tr>
		    		<td class="tone">
		        	</td>
		        	<td align="center">
		                	<input type="submit" name="btnSubmit" value="Register" />
		        	</td>
		        	<td class="tthree">
		        	</td>
		    	</tr>
			</tbody>
		</table>
		</form>
		</div>
		</div>
<script type="text/javascript">
$(document).ready(function(){  
    $('#my_form').on('submit',function(event){
       event.preventDefault();
    
var name = document.forms["myForm"]["name"].value;
var bloodgroup = document.forms["myForm"]["bloodgroup"].value;
var gender = document.forms["myForm"]["gender"].value;
var dob = document.forms["myForm"]["selected_date"].value;
var mobile = document.forms["myForm"]["mobile"].value;
var altmobile = document.forms["myForm"]["altmobile"].value;
var email = document.forms["myForm"]["email"].value;
var location = document.forms["myForm"]["location"].value;
var zipcode = document.forms["myForm"]["zipcode"].value;
var address = document.forms["myForm"]["address"].value;
var password = document.forms["myForm"]["password"].value;
var repassword = document.forms["myForm"]["repassword"].value;
var lat= $("#latt").val();
var lng= $("#long").val();
data={"name":name,"bloodgroup":bloodgroup,"gender":gender,"selected_date":dob,"mobile":mobile,"altmobile":altmobile,"email":email,"location":location,"zipcode":zipcode,"address":address,"password":password,"lat":lat,"lng":lng};

if (name == null || name == "") {
    alert("Name must be entered");
    return false;
}
if (bloodgroup == null || bloodgroup == "") {
    alert("Bloodgroup must be specified");
    return false;
}
if (gender == null || gender == "") {
    alert("Gender must be specified");
    return false;
}
if (dob == null || dob == "") {
    alert("Date of Birth must be specified");
    return false;
}
if (mobile == null || mobile == "") {
    alert("Mobile must be entered");
    return false;
}
if (altmobile == null || altmobile == "") {
    alert("Alternative mobile must be entered");
    return false;
}
if (email == null || email == "") {
    alert("Email must be entered");
    return false;
}
if (location == null || location == "") {
    alert("Location must be entered");
    return false;
}
if (zipcode == null || zipcode == "") {
    alert("Zipcode must be entered");
    return false;
}
if (address == null || address == "") {
    alert("Address must be entered");
    return false;
}
if (password == null || password == "") {
    alert("Password must be entered");
    return false;
}
if (repassword == null || repassword == "") {
    alert("Re-type password must be entered");
    return false;
}
if(document.getElementById('chkTermsAndCondition').checked) {
	
} else {
	alert("Terms and Conditions must be checked");
	return false;
}
if (mobile ==  altmobile) {
	alert("Mobile number and Alternative number must be different");
	return false;
}
if (password !=  repassword) {
	alert("Password and Re-type Password must be same");
	return false;
}

load_page_post("RegController","reg_body",data);


    });  
});


var componentForm = {
		  street_number: 'short_name',
		  route: 'long_name',
		  locality: 'long_name',
		  administrative_area_level_1: 'long_name',
		  country: 'long_name',
		  postal_code: 'short_name'
		};

function initAutocomplete() {
	  // Create the autocomplete object, restricting the search to geographical
	  // location types.
	  autocomplete = new google.maps.places.Autocomplete(
	      /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
	      {types: ['geocode']});

	  // When the user selects an address from the dropdown, populate the address
	  // fields in the form.
	  autocomplete.addListener('place_changed', fillInAddress);
	}

function fillInAddress() {
	  // Get the place details from the autocomplete object.
	  var place = autocomplete.getPlace();
	  dataa="";
	  

	  // Get each component of the address from the place details
	  // and fill the corresponding field on the form.
	  for (var i = 0; i < place.address_components.length; i++) {
	    var addressType = place.address_components[i].types[0];
	    if (componentForm[addressType]) {
	      var val = place.address_components[i][componentForm[addressType]];
	      //dataa[addressType]=val;
	      if(addressType=="postal_code"){
	    	  document.getElementById("postal_code").value=val;
	      }
	      dataa+=val+", ";
	      //document.getElementById(addressType).value = val;
	    }
	  }
	  dataa=dataa.substring(0,dataa.length-1);
	  document.getElementById("address").innerHTML=dataa;
	  document.getElementById("latt").value=place.geometry.location.lat();
	  document.getElementById("long").value=place.geometry.location.lng();
	}

</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCCFx1Ulkn-qmvA97aj0Qp1CBh_xeC7knc&signed_in=true&libraries=places&callback=initAutocomplete"async defer></script>