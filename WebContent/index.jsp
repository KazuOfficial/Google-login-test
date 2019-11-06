<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang=pl>
<head>
	<meta charset="utf-8">
	<title>InfoTech - Zarządzanie kryteriami weryfikacji - zaloguj</title>
	<meta name="description" content="System do łączenia/zarządzania kryteriów weryfikacji z przedmiotami.">
	<meta name="keywords" content="infotech, system, kryteria, przedmioty">
	<meta name="author" content="Jakub Sak">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
	<meta name="google-signin-scope" content="profile email">
	<!-- ID do zmiany, gdy projekt zostanie ukonczony. -->
	<meta name="google-signin-client_id" content="69867747310-humvfve86jfr9jn1d9jbraqbuv33fg7n.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body style="display: none;">
	<div id="container">
	<!-- TODO: Prevent copying -->
	<center><img src="img/logo.png">
	<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="margin-top: 10px; width: 200px;"></div></center>
	</div>
<script>
	function onSignIn(googleUser) {
	// Useful data for your client-side scripts:
	var profile = googleUser.getBasicProfile();
	// The ID token you need to pass to your backend:
	var id_token = googleUser.getAuthResponse().id_token;
	// Send the ID token to your server with an HTTPS POST request:
	var xhr = new XMLHttpRequest();
	xhr.open('POST', 'backendexample');
	xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	xhr.onload = function() {
	};
	xhr.send('idtoken=' + id_token);
	window.location.replace("main.jsp");
	}
</script>
<script>
$('body').fadeIn(1000);
</script>
</body>
</html>