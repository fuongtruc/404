<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	String pathRoot = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login-Facebook</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="<%=pathRoot%>/resources/css/login.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div class="bg-img">
		<div class="content">
			<header>Login</header>
			<form action="#">
				<div class="field">
					<span class="fa fa-user"></span> <input type="text" required=""
						placeholder="Email or Phone">
				</div>
				<div class="field space">
					<span class="fa fa-lock"></span> <input type="password"
						class="pass-key" required="" placeholder="Password"> <span
						class="show">SHOW</span>
				</div>
				<div class="pass">
					<a href="#">Forgot Password?</a>
				</div>
				<div class="field">
					<input type="submit" value="LOGIN">
				</div>
			</form>
			<div class="login">Or login with</div>
			<div class="links">
				<div class="facebook">
					<a style="display:block"
					href="https://www.facebook.com/dialog/oauth?client_id=644571649812164&redirect_uri=https://localhost:8443/notfound/login-facebook">
						<i class="fab fa-facebook-f"><span>Facebook</span></i>
					</a>
				</div>
				<div class="instagram">
					<a style="display: block"
						href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/notfound/login-gmail&response_type=code
    					&client_id=209831582980-g647k0vuknpp5onpunl0hcpsmepk4fb9.apps.googleusercontent.com&approval_prompt=force">
						<i class="fab fa-google"><span>Google</span></i>
					</a>
				</div>
			</div>
			<div class="signup">
				Don't have account? <a href="login-form/register">Signup Now</a>
			</div>
		</div>
	</div>
	<!-- --------------------------------------------------------------------- -->
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0&appId=644571649812164&autoLogAppEvents=1"
		nonce="coJ5ZOiz"></script>
</body>
<script src="<%=pathRoot%>/resources/js/login.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</html>