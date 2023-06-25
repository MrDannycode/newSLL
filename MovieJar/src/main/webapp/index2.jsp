<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Movie List</title>
	<script>
		function showMovieList() {
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					document.getElementById("listaFilme").innerHTML = this.responseText;
				}
			};
			xhttp.open("GET", "listaFilme.jsp", true);
			xhttp.send();
		}
	</script>
</head>
<body>
	<button onclick="showMovieList()">Show Movie List</button>
	<div id="listaFilme"></div>
</body>
</html>