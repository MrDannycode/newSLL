<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
 <title>Movie Management Application</title>
</head>
<body>
 <center>
  <h1>Movie Management</h1>
        <h2>
         <a href="new">Add New Movie</a>
         &nbsp;&nbsp;&nbsp;
         <a href="list">List All Movies</a>
         
        </h2>
 </center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Movies</h2></caption>
            <tr>
                <th>ID</th>
                <th>denumire</th>
                <th>durata</th>
                <th>anAparitie</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="movie" items="${listMovie}">
                <tr>
                    <td><c:out value="${movie.id}" /></td>
                    <td><c:out value="${movie.denumire}" /></td>
                    <td><c:out value="${movie.durata}" /></td>
                    <td><c:out value="${movie.anAparitie}" /></td>
                    <td>
                     <a href="edit?id=<c:out value='${movie.id}' />">Edit</a>
                     &nbsp;&nbsp;&nbsp;&nbsp;
                     <a href="delete?id=<c:out value='${movie.id}' />">Delete</a>                     
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div> 
</body>
</html>