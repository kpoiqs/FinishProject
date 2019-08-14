
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>sing up</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<style type="text/css">
		#singupForm input.error, #singupForm textarea.error{
			 border : 1px dashed red;
		}
	</style>
<script type = "text/javascript">

$(function (){
	$("#singupForm").validate({
		debug : false,
		
		rules:{
				inputid : "required",
				
				inputpassword : {
					required : true,
					minlength : 6,
					maxlength : 15
				},
				repwd : {
					required : true,
					equalTo : "#pwd"
				},
				inputemail : {
					required : true,
					email : true
				}
		},
		messages:{
			inputid : "ID is required.",
			
			inputpassword : {
				required : "password is required",
				minlength :"Passwords minimum of {0}characters long.",
				maxlength :"Passwords maximum of {0}characters long."
			},
			repwd : {
				required : "password check is required",
				equalTo : "please check a repassword"
			},
			inputemail :{
				required : "email is required",
				email : "please check a email"
			}
		}
	});
});
var idck=0;
$(function(){
	$("#checkid").click(function(){	
		
		var input_val = $("#id").val();
	if(!input_val){
		alert("Please enter your ID.");
		return false;
	}
	var url = "idcheck";
	$.get(url, {"inputid":input_val},function(xml){
		var result = $(xml).find("result").text();
		var count = $(xml).find("count").text();
		$(".console").html(result);
		if(count>0){
			return false;
		}else{
			idck=1;
		}
		});	

	});
});
var emailck=0
$(function(){	
	$("#checkemail").click(function(){		
		var input_val = $("#email").val();
	if(!input_val){
		alert("Please enter e-mail.");
		return false;
	}
	var url = "emailcheck";
	$.get(url, {"inputemail":input_val},function(xml){
		var result = $(xml).find("result").text();
		var count = $(xml).find("count").text();
		$(".console1").html(result);
		if(count>0){
			return false;
		}else{
			emailck=1;
		}
		});
	});		
});

function noSpaceForm(obj) {
    var str_space = /\s/;
    if(str_space.exec(obj.value)) {
        alert("Spaces cannot be used.\n\nSpaces are automatically deleted.");
        obj.focus();
        obj.value = obj.value.replace(' ','');
        return false;
    }
}
$(function(){
	$("#jointest").click(function(){
	var result = confirm("Would you like to sign up?");
	if(idck==0 || emailck==0){
		alert("please double-check the ID or Email");
        return false;
	}else{
		 alert("Congratulations on your membership.");
	}
	});
});
</script>
</head>
<body>

<form method="post" action="join" id="singupForm" name="form">
ID<input type="text" placeholder="Input ID" name="inputid" id="id" onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);">
<input type="button" id="checkid" value="ID check" name="idcheck" /><br />
<div class="console" id="consoletest"></div>
Password<input type="password" placeholder="Input Password" name="inputpassword" id="pwd"><br />
Password check<input type="password" placeholder="Input Password" name="repwd"><br />
Email<input type="email" placeholder="Input Email" name="inputemail" id="email">
<input type="button" id="checkemail" value="Email Check" /><br />
<div class="console1"></div>
<input type="submit" value="join" id="jointest"/>
</form>
</body>
</html>