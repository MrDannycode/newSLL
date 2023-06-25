<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Button Example</title>
</head>
<body>
	<form method="post" action="">
		<button type="submit" name="showFilmsButton">Show Films</button>
	</form>

	
	<% if(request.getParameter("showFilmsButton") != null) { %>
		<%@ include file="listaFilme.jsp" %>
	<% } %>
</body>
</html>