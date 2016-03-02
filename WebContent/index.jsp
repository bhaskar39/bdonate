<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <%@page import="bos.User"%>
<html class="no-js"> <!--<![endif]-->
<head>
   <meta charset="utf-8" />
   <!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame -->
   <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
   <!-- Mobile viewport optimized: h5bp.com/viewport -->
   <meta name="viewport" content="width=device-width">

   <title>Reach Donar </title>

<style>
li{
  font-weight: bold;
}
#body{
	min-height:550px;
}
a{
  	cursor:pointer;
  }
.footer{border-top:5px solid rgba(240,250,250,1);width:100%;height:auto;background:#074E68;color:#343434;padding:0}
</style>
   <!-- Grab Google CDN's jQuery. fall back to local if necessary -->
   <script src="assets/js/jquery-1.10.0.min.js"></script>
   <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>

  <!-- remove or comment this line if you want to use the local fonts -->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>

   <link rel="stylesheet" type="text/css" href="./assets/css/bootmetro.css">
   <link rel="stylesheet" type="text/css" href="./assets/css/bootmetro-responsive.css">
   <link rel="stylesheet" type="text/css" href="./assets/css/bootmetro-icons.css">
   <link rel="stylesheet" type="text/css" href="./assets/css/bootmetro-ui-light.css">
   <link rel="stylesheet" type="text/css" href="./assets/css/datepicker.css">


	<script src="./assets/js/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript" src="./assets/js/min/bootstrap.min.js"></script>
	<script type="text/javascript" src="./assets/js/bootstrap-datepicker.js"></script>
	<script src="main_scripts.js"></script>
   
  
  
   
</head>
<body style="white-space: nowrap;background-color:#F5F5F5;margin-top: -0px;background-image:url(assets/bg.jpg)">
<%
User ss= (User)session.getAttribute("user");

//Object o = session.getAttribute("user");
//out.println(o.toString());
%>
    <!--
    <div class="page-header" style="margin-top:0px;margin-bottom:0px;height:200px;background-image: url(slide1.jpg);">
      <h1>Donate Blood<small> save lives</small></h1>
    </div> -->

<div class="container" style="margin-top:0px;-webkit-box-shadow: 0px 4px 5px 2px rgba(150,145,150,1);
-moz-box-shadow: 0px 4px 5px 2px rgba(150,145,150,1);
box-shadow: 0px 4px 5px 2px rgba(150,145,150,1);background: linear-gradient(to right, #FFF,#FFF);
background-size: 200% 100%;
background-position:left bottom; min-width:700px;
box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
">


    <div class="page-header" style="background-image: url(ic122.png);background-position: right;background-repeat: no-repeat;padding-top:15px;">
    	<div  class="span pull-right" style="margin-right:10%">
		                <h3>Follow Us</h3>
		                <p style="font-size:40px">
		                    <a href="http://twitter.com/reachdonar" target="_blank"><span class="icon-twitter" style="color:#2F96B4"></span></a>
		                    <a href="http://www.facebook.com/reachdonar" target="_blank"><span class="icon-facebook-3" style='color:#2E1271'></span></a>
		                    <a href="http://Googleplus.com/gmail" target="_blank"><span class="icon-googleplus" style="color:rgb(203, 56, 32)"></span></a>
		                </p>
		            
		            </div>
      <h1 style="padding-left:3%;">Reach<span aria-hidden="true" class="icon-droplet" style='color:#DF0000'></span>Donar </h1><small  style="font-size:20px;padding:4%">Share blood  Share life</small>
      
    
    </div>

   <div class="navbar navbar-inverse">
     <div class="navbar-inner" style="background-color:#373737">
        
         <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-responsive-collapse">
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
            </a>
            <a class="brand" ></a>
            <div class="nav-collapse collapse navbar-responsive-collapse">
               <ul class="nav">
                  <li class="active" id="home_li"><a href="" style="font-weight: bold;"><span class="icon-home"></span> Home</a></li>
                  <li id="request_li"><a id="request" style="font-weight: bold;" onclick="load_page(this.id)">Request for Blood</a></li>
                  <li id="search_li"><a id="search" style="font-weight: bold;" onclick="load_page(this.id)">Search Donars</a></li>
                  
               </ul>

<%
if(ss==null){
%>                
               <ul class="nav pull-right" id="user_menu">
                  <li id="login_li"><a id="login"  onclick="load_page(this.id)" style='border-radius:5px;margin:1px;font-weight: bold;'><span class="icon-login"></span> Login</a></li>
                  <li id="registration_li"><a id="registration"  onclick="load_page(this.id)" style='font-weight:bold;border-radius:5px;margin:1px;'>Register</a></li>
               </ul> 
<%}else{ %>
               <ul class="nav pull-right" >
                  <li id="dashboard_li"><a style='border-radius:5px;margin:1px;font-weight: bold;'  class="dropdown-toggle" data-toggle="dropdown"><span class="icon-user"></span> <%=ss.getName() %><span class="caret"></span></a>
                  	         <ul class="dropdown-menu">
                  	         	<li id="dashboard"  onclick="load_page(this.id)" ><a>Dashboard</a></li>
                  	         	<li id="profile_li"><a id="profile"  onclick="load_page(this.id)">View Profile</a></li>
         						<li id="logout_li" ><a id="logout" onclick="load_page(this.id)">Logout</a></li>
         					</ul>
         				
         			</li>
               </ul>
  <%} %>
            </div><!-- /.nav-collapse -->
         </div>
      
     </div>
   </div>
   <div id="body">
      <div id="myCarousel" class="carousel slide" style="min-height: 500px;max-height: 500px;margin-left:1%;margin-right: 1%" class="row"></div>

   	<div id="tes">
   		<div style="margin-left:3%">
         <h3>Importance of Blood Donation</h3><br>
        <p  style="word-wrap:break-word;overflow-wrap: break-word;"  >Blood donation is one of the most significant contribution that a person can make towards the society. It is not harmful for an adult person to donate blood. The body <br><font>of the donor can regenerate the blood within few days. It poses no threat to the metabolism of the body.</font></p>
         <p style="word-wrap:break-word;overflow-wrap: break-word;" >An ailing body needs blood for various reasons. He may be attacked with anemia, undergone an operation or may meet with an accident. But such a patient may die<br><font> for want of blood as it is not always available. Even a pregnant mother may need blood in case of emergency situation.Blood can be stored for a limited period of time </font><br><font>that is why the blood banks need a steady and constant collection.</font></p>
      	<p> Blood donation is our human duty. Our body does not get affected if we donate blood. The body can repair the loss within a few days. So we must come forward to <br> <font> donate blood as it can make sure the return of a dying man again into the light of life.</font></p> <br><br>
      	</div>
     </div>
    </div>
  
   <div class="footer">
      <div style="display: inline-block;">
        <h2>Reach<span aria-hidden="true" class="icon-droplet" style='color:#DF0000'></span>Donar</h2><br><h3>Share blood Share life</h3><br><p>footer msg</p>
      </div>
   </div>
<!--   
	<div class="footer">
	</div> -->
	
	

</div>
<script type="text/javascript">
  
function load_page(id)
{
  $(".nav li").removeClass("active");
  $("#"+id+"_li").addClass("active"); 
  var xmlhttp;
	if (window.XMLHttpRequest)
	{// code for IE7+, Firefox, Chrome, Opera, Safari
		xmlhttp=new XMLHttpRequest();
	}
	else
	{// code for IE6, IE5
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState<4)
		{
			document.getElementById("body").innerHTML="<h1 align=center style='margin-top:10%'><img src='assets/load.gif' align=center /></h1>";
		}
		else if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			document.getElementById("body").innerHTML=xmlhttp.responseText;
		}
		else if(xmlhttp.status==404)
		{
			document.getElementById("body").innerHTML="<div><h1 align=center style='margin-top:10%'><img src='assets/load.gif' align=center /></h1><br />Page Under Construction...</div>";
		}
	}
	params={'patientname':$('#patientname').val(),'username':$('#username').val(),'bgroup':$('#bgroup').val(),'units':$('#units').val(),'date':$('#date').val(),'b/p':$('#borp').val(),'hospital':$('#hospital').val(),'phone':$('#phone').val(),'email':$('#email').val(),'additionaldetails':$('#additionaldetails').val()};
	xmlhttp.open("POST",id+".jsp",true);
	$.post(id+".jsp",function(data){
		 $("#body").html(data); 
	  });

}
/*
function load_page(id)
{
  $(".nav li").removeClass("active");
  $("#"+id+"_li").addClass("active");
  $.post(id+".jsp",function(data){
	 $("#body").html(data); 
  });
}*/
  $("#myCarousel").load("slides.html");
  $("#test").load("search.jsp");
  $(".footer").load("footer.html");

	$(window).bind('scroll', function () {
    if ($(window).scrollTop() > 143) {
    	$('.navbar').addClass('navbar-fixed-top');
    } else {
        $('.navbar').removeClass('navbar-fixed-top');
    }
});

  $('.carousel').carousel()
  
  
</script>

</body>
</html>
