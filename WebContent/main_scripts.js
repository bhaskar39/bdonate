
function load_page_post(url,result_container,data)
{
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
			document.getElementById(result_container).innerHTML="<h1 align=center style='margin-top:10%'><img src='assets/load.gif' align=center /></h1>";
		}
		else if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			document.getElementById(result_container).innerHTML=xmlhttp.responseText;
		}
		else if(xmlhttp.status==404)
		{
			document.getElementById(result_container).innerHTML="<div style='margin:200px 0px 0px 250px'><img src='assets/load.gif' /><br />Page Under Construction...</div>";

		}
	}
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
	
	$.post(url,data,function(res){
		$('#'+result_container).html(res);
	});
}


