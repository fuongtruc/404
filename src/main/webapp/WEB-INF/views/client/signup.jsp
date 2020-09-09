<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String pathRoot = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sign up</title>
<link rel="stylesheet" type="text/css" href="<%=pathRoot%>/resources/css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<script type="text/javascript">
	var pass1 = 0 ;
	window.onload = function(){
		
		<!--$("#btn-sub").attr("disabled", "disabled")-->
	}
	function checkPass(pass){
		pass1 = pass;
		if(pass.length < 6){
			var error = "Error: Please enter password more length";
			$("#errorpass").html(error);
		}
		else{
			var error = " ";
			$("#errorpass").html(error);
		}
	}
	function checkRe(repass){
		//$("#errorrepass").html(error);
		if(repass != pass1){
			var error = "Error: Dont't match with top password";
			$("#errorrepass").html(error);
			$("#btn-sub").css("background", "#D7D7D7");
			$("#btn-sub").attr("disabled", "disabled");
		}
		else{
			var error = " ";
			$("#errorrepass").html(error);
			$("#btn-sub").css("background", "#c2a476");
			$("#btn-sub").attr("disabled", false);
		}
	}
	function checkData(agr){
		$.ajax({
			url: 'check-register',
			type: 'GET',
			dataType: 'html',
			data: {name : agr},
			success: function(data){
				//Recive data form server
				var error = " ";
				if(data == "false"){
					error = "**Error: Name already exist";
					$("#error").html(error);
					$("#name").focus();
					$("#btn-sub").css("background", "#D7D7D7");
					$("#btn-sub").attr("disabled", "disabled");
				}
				else{
					error = " ";
					$("#error").html(error);
					$("#btn-sub").css("background", "#c2a476");
					$("#btn-sub").attr("disabled",  false);
				}
			}
		});
	}
</script>
<body>
	<div class="bg-img">
		<div class="content">
			<header>Sign Up</header>
			<form action="#" method="post">
				<div class="field">
					<span class="fa fa-user"></span> <input id = "name" type="text" required
						placeholder="Name" onblur="checkData(this.value)">
				</div>
				<div id="error" style="color:red"></div>
				<div class="field space">
					<span class="fa fa-user"></span> <input type="email" required=""
						placeholder="Email">
				</div>
				<div class="field space">
					<span class="fa fa-lock"></span> <input type="password"
						class="pass-key" required="" placeholder="Password" id="pas" onblur="checkPass(this.value)"> <span
						class="show">SHOW</span>
				</div>
				<div id="errorpass" style="color:red"></div>
				<div class="field space">
					<span class="fa fa-lock"></span> <input type="password"
						class="pass-key-2" required="" placeholder="Enter Password" onmouseleave="checkRe(this.value)">
					<!--<span class="show-2">SHOW</span>-->
				</div>
				<div id="errorrepass" style="color:red"></div>
				<div class="field space">
					<input id = "btn-sub" type="submit" value="SIGN UP">
				</div>
			</form>

		</div>
	</div>
</body>
<script src="<%=pathRoot%>/resources/js/login.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</html>