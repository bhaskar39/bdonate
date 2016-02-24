
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
<div style="width:50%;margin-left:auto;margin-right:auto;box-shadow:0px 2px 2px grey;margin-top:5%;padding-bottom:10px;min-width:500px">
	<blockquote>
          	<p>Login Here Ok<span class="icon-login"></span></p>
        </blockquote>	
	   <form class="form-horizontal" action="LoginController" method="POST" id="myForm">
      <div class="control-group">
         <label class="control-label" for="inputEmail">Email</label>
         <div class="controls">
            <input type="email" placeholder="Email" id="username" required>
         </div>
      </div>
      <div class="control-group">
         <label class="control-label" for="inputPassword">Password</label>
         <div class="controls">
            <input type="password"  placeholder="Password" id="password" required>
         </div>
      </div>
      <div class="control-group">
         <div class="controls">
            <button type="submit" class="btn">Sign in</button>
            <a >Forgot password?</a>
         </div>
      </div>
   </form>
 </div>
<%
String rr = (String) request.getAttribute("failed");

if(rr!=null){
%>
<div style="width:30%;margin-left:auto;margin-right:auto;margin-top:1%">
	<div class="alert alert-warning" >
	<button type="button" class="close" data-dismiss="alert"></button>
	Login Failed (Invalid Credentials) <span class="icon-sad"></span>
	</div>
</div>
<%
}
%>
<script type="text/javascript">
		$(document).ready(function(){  
		    $('#myForm').on('submit',function(event){
		       event.preventDefault();
		       var username = $("#username").val();
			   var password = $("#password").val();
			   data= {"username":username,"password":password};
		       load_page_post("LoginController","body",data); 
		    });  
		});
</script>