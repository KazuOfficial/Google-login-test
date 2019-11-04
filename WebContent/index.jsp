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
	<meta name="google-signin-client_id" content="69867747310-humvfve86jfr9jn1d9jbraqbuv33fg7n.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
	<div id="container">
	<center><a href="https://infotech.edu.pl/"><img src="img/logo.png"></a>
	<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="margin-top: 10px; width: 200px;"></div></center>
	</div>
	<!-- <form action="add" method="get">
		<input type="text" name="id">
		<input type="submit">
	</form>-->
<script>
	function onSignIn(googleUser) {
	// Useful data for your client-side scripts:
	var profile = googleUser.getBasicProfile();
	console.log("ID: " + profile.getId()); // Don't send this directly to your server!
	console.log('Full Name: ' + profile.getName());
	console.log('Given Name: ' + profile.getGivenName());
	console.log('Family Name: ' + profile.getFamilyName());
	console.log("Image URL: " + profile.getImageUrl());
	console.log("Email: " + profile.getEmail());
	// The ID token you need to pass to your backend:
	var id_token = googleUser.getAuthResponse().id_token;
	console.log("ID Token: " + id_token);
	// Send the ID token to your server with an HTTPS POST request:
	//var xhr = new XMLHttpRequest();
	//xhr.open('POST', 'backendexample');
	//xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	//xhr.onload = function() {
	//console.log('Signed in as: ' + xhr.responseText);
	//};
	//xhr.send('idtoken=' + id_token);
	window.location.replace("main.jsp");
	}
</script>
</body>
</html>