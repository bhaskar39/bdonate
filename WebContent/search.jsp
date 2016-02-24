
<style>
	.search_suggestion{
		padding:10px;
		font-weight:bold;
	}
	.suggestion{
		height:30px;
		padding-top:5px;
		border-bottom:1px solid #BCBCBC;
	}
	.badge{
	border-radius:25px;width:0px;
	margin-left:15px;
	}
</style>
<div style="padding:10%;">
<h2 align=center>Search for Donars by type Location</h2><br>
   <form class="form-inline"  action="search_results.jsp" method="POST">
  	<div class="input-append" style="width:100%;">
  		<select class="btn btn-info" style="height:50px;width:10%;min-width:50px;margin-left:20%;" id="blood_group">
  			<option value="A+">A+</option>
							<option value="A-">A-</option>
							<option value="AB+">AB+</option>
							<option value="AB-">AB-</option>
							<option value="B+">B+</option>
							<option value="B-">B-</option>
							<option value="O+">O+</option>
							<option value="O-">O-</option>
							<option value="Any">Any</option>
  		</select>
  		<input class="span2" id="pac-input" autocomplete="off" style="min-height:50px;width:35%;border-left:0px;" onkeyup="get_suggestions(this.value)"  type="text" placeholder="Search Donars in a Location" />
  		&nbps;&nbps;
  		<button class="btn" type="submit" style="padding:0px;min-height:50px;min-width: 110px;width:15%;background-color: #CA0000;color:#fff;border:0px;border-radius: 5px;">Search Donars</button>
	</div>
	<div style="border:1px solid #CCC;margin-left:30%;width:35%;position:relative;display:none;" id="suggestions">
	</div>
	<div id="search_results" style="margin-top:5%">
	</div>
   </form> 
</div>

<script type="text/javascript">
	function search_donars(){
		data={"blood_group":$("#blood_group").val(),"location":$("#pac-input").val()};
		$.post("search_results.jsp",data,function(res){
			$("#suggestions").html(res);
		});
		
	}
	function get_suggestions(str){
		if($("#pac-input").val()==""){
			$("#suggestions").hide();
		}
		else
			$("#suggestions").show();
		data={"table":"users","field":"location","con_field":"location","inp":$("#pac-input").val(),"blood_group":$("#blood_group").val(),"inp_id":"pac-input"}
		$.post("Suggest_Controller",data,function(res){
			$("#suggestions").html(res);
		});
	}
	$(document).ready(function(){  
	    $('.form-inline').on('submit',function(event){
	       event.preventDefault();
	       data={"blood_group":$("#blood_group").val(),"location":$("#pac-input").val()};
	       load_page_post("search_results.jsp","search_results",data) 
	    });  
	});
</script>