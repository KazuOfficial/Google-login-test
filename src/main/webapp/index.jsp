<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang=en>
<head>
	<meta charset="utf-8">
	<title>Google login test - Sign in</title>
	<meta name="description" content="System do łączenia/zarządzania kryteriów weryfikacji z przedmiotami.">
	<meta name="keywords" content="infotech, system, kryteria, przedmioty">
	<meta name="author" content="Kazu">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
	<meta name="google-signin-scope" content="profile email">
	<meta name="google-signin-client_id" content="YOURCLIENTID">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body style="display: none;">
	<div id="container">
	<center><img src="img/favicon.png" style="height: 100px; margin-bottom: 30px;">
	<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="margin-top: 10px; width: 200px;"></div></center>	
	<form action="main" method="get">
	<input type="hidden" name="val" id="val" value="2"/>
	</form>
	</div>
<script>
	function onSignIn(googleUser) {
	var profile = googleUser.getBasicProfile();
	var id_token = googleUser.getAuthResponse().id_token;
	var xhr = new XMLHttpRequest();
	xhr.open('POST', 'main');
	xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	xhr.onload = function() {
	};
	xhr.send('idtoken=' + id_token);
	document.getElementById("val").value = id_token;
	window.location.replace("main?");
	}
</script>
<script>
$('body').fadeIn(1000);
</script>
</body>
</html>