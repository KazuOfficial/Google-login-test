<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang=en>

<head>
	<meta charset="utf-8">
	<title>Google login test - result</title>
	<meta name="description" content="Google login test">
	<meta name="keywords" content="google, login">
	<meta name="author" content="Kazu">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
	<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
	<meta name="google-signin-scope" content="profile email">
	<meta name="google-signin-client_id" content="YOURCLIENTID">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>

<body style="display: none;">

<header>
	<center><img src="img/favicon.png" style="width: 50px; height: 50px; margin-top: 10px;"></br></br>
	<div id=logged>
	<form action="main" method="get">
		<%
		String  s1  = (String) request.getAttribute("var");
		%>
		<%="Logged as: " + s1 %>
	</form>
	</div><br>	
	<a href="#" onclick="signOut();">Log out</a></center>
</header>

	<div class="g-signin2" data-onsuccess="onSignIn" style="visibility: hidden;"></div>

<script>
	function signOut() {
	var auth2 = gapi.auth2.getAuthInstance();
	auth2.signOut().then(function () {
	console.log('User signed out.');
	window.location.replace("/Googlelogin/");
	});
	}
</script>

<script>
$('body').fadeIn(1000);
</script>
</body>
</html>