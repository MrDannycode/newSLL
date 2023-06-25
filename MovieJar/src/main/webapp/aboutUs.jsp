<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Insert title here</title>
  <link rel="stylesheet" type="text/css" href="styles.css">
  	<link rel="stylesheet" type="text/css" href="menu-style.css">
  <script>
		function redirectToMenu() {
			window.location.href = "index3.jsp";
		}
			
	</script>
</head>
<body>
  <button class="menu-button" onclick="redirectToMenu()">Menu</button>
  <div id="backgroundImage"></div>
  <div id="rectangleContainer">
    <div id="rectangleContent">
      We work tirelessly to make the experience of using our website the best that it can be and we love any feedback or suggestions you may have in order for us to improve further.
    </div>
  </div>
</body>
</html>