<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
	<title>Movie List</title>
	<link rel="stylesheet" type="text/css" href="menu-style.css">
	<script>
		function redirectToMenu() {
			window.location.href = "menu.jsp";
		}
		
		function redirectToAboutUs() {
			window.location.href = "aboutUs.jsp";
		}

		function redirectToListaFilme() {
			window.location.href = "listaFilme.jsp";
		}
		
	</script>
</head>
<body>
	<button class="menu-button" onclick="redirectToMenu()">Menu</button>
	<button class="menu-button" onclick="redirectToListaFilme()">Show Movie List</button>
	<button class="menu-button">Add Movie</button>
	<button class="menu-button" onclick="redirectToAboutUs()">About us</button>

	<div id="listaFilme"></div>
	
</body>
</html>