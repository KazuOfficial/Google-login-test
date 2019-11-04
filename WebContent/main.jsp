<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang=pl>
<head>
	<meta charset="utf-8">
	<title>InfoTech - Zarządzanie kryteriami weryfikacji.</title>
	<meta name="description" content="System do łączenia/zarządzania kryteriów weryfikacji z przedmiotami.">
	<meta name="keywords" content="infotech, system, kryteria, przedmioty">
	<meta name="author" content="Jakub Sak">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="shortcut icon" type="image/png" href="img/favicon.png"/>
	<link href="https://fonts.googleapis.com/css?family=Lato&display=swap" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<meta name="google-signin-scope" content="profile email">
	<meta name="google-signin-client_id" content="69867747310-humvfve86jfr9jn1d9jbraqbuv33fg7n.apps.googleusercontent.com">
	<script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
<header>
	<center><a href="https://infotech.edu.pl/"><img src="img/favicon.png" style="width: 50px; height: 50px; margin-top: 10px;"></a></br></br><br>
	<div id=logged>Zalogowano jako: Tony Stark</div><br>
	<a href="#" onclick="signOut();">Wyloguj się</a></center>
</header>
	<div class="g-signin2" data-onsuccess="onSignIn" style="visibility: hidden;"></div>
<script>
	function signOut() {
	var auth2 = gapi.auth2.getAuthInstance();
	auth2.signOut().then(function () {
	console.log('User signed out.');
	window.location.replace("index.jsp");
	});
	}
</script>
</body>
</html>