<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
	<title>Movie List</title>
	<link rel="stylesheet" type="text/css" href="menu-style.css">
	<script>
	function redirectToListaFilme() {
		window.location.href = "listaFilme.jsp";
	}
		
		function redirectToAboutUs() {
			window.location.href = "aboutUs.jsp";
		}
		
		 function searchMovies() {
		        var searchTerm = document.getElementById("searchTerm").value;
		        var movies = ["Interstellar", "The Shawshank Redemption	", "The Godfather", "The Dark Knight","Forrest Gump","The Matrix","Inception","The Green Mile","The Departed","The Avengers","Jurassic Park","Titanic"]; 
		        
		        if (movies.includes(searchTerm)) {
		            document.getElementById("searchResult").innerHTML = searchTerm + " is available on the website.";
		        } else {
		            document.getElementById("searchResult").innerHTML = searchTerm + " is not available on the website.";
		        }
		    }
		 
	</script>
</head>
<body>
	<button class="menu-button">Menu</button>
	<button class="menu-button" onclick="redirectToListaFilme()">Show Movie List</button>
	<button class="menu-button">Add Movie</button>
	<button class="menu-button" onclick="redirectToAboutUs()">About us</button>
	
	
		<div>
		<input type="text" id="searchTerm" placeholder="Search...">
		<button class="search-button" onclick="searchMovies()">Search</button>
	</div>
	
	<div id="listaFilme"></div>
	<div id="searchResult"></div>
</body>
</html>