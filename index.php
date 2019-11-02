<!DOCTYPE html>
<html lang="pl">
	<head>
		<title>InfoTech</title>
		<meta charset="utf-8">
		<meta name="description" content="System do łączenia/zarządzania kryteriów weryfikacji z przedmiotami.">
		<meta name="keywords" content="infotech, system, kryteria, przedmioty">
		<meta name="author" content="Jakub Sak">
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
		<meta name="google-signin-scope" content="profile email">
		<meta name="google-signin-client_id" content="69867747310-3ka6tb7atbpedot64vctbol6hoigcsq0.apps.googleusercontent.com">
		<script src="https://apis.google.com/js/platform.js" async defer></script>
	</head>
	<body>
		<header>
			<center><img src="img/logo.png" style="margin-top: 20px;">
			<div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark" style="margin-top: 10px; width: 200px;"></div></center>
		</header>
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
		}
		</script>
	</body>
</html>