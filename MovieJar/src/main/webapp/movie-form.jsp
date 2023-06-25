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
  <c:if test="${movie != null}">
   <form action="update" method="post">
        </c:if>
        <c:if test="${movie == null}">
   <form action="insert" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
             <h2>
              <c:if test="${movie != null}">
               Edit Movie
              </c:if>
              <c:if test="${movie == null}">
               Add New Movie
              </c:if>
             </h2>
            </caption>
          <c:if test="${movie != null}">
           <input type="hidden" name="id" value="<c:out value='${movie.id}' />" />
          </c:if>            
            <tr>
                <th>Movie Denumire: </th>
                <td>
                 <input type="text" name="name" size="45"
                   value="<c:out value='${movie.denumire}' />"
                  />
                </td>
            </tr>
            <tr>
                <th>Movie Durata: </th>
                <td>
                 <input type="text" name="email" size="45"
                   value="<c:out value='${movie.durata}' />"
                 />
                </td>
            </tr>
            <tr>
                <th>anAparitie: </th>
                <td>
                 <input type="text" name="country" size="15"
                   value="<c:out value='${movie.anAparitie}' />"
                 />
                </td>
            </tr>
            <tr>
             <td colspan="2" align="center">
              <input type="submit" value="Save" />
             </td>
            </tr>
        </table>
        </form>
    </div> 
</body>
</html>