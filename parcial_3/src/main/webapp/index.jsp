<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "java.io.*,java.util.*"%>
<%@ page import = "jakarta.servlet.http.*,jakarta.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/bibliotecajorge"
                   user="dba" password="123456789.eT"/>
                   
                   <sql:query dataSource="${dbSource}" var="Libros">
    SELECT * FROM Libros;
    
    
</sql:query>
<table border="1">
    <thead>
        <tr>
         	<th>id</th>
            <th>titulo</th>
            <th>Autor</th>
            <th>paginas</th>
            <th>tipo</th>
            <th>precio</th>
            <th>editorial</th>
        </tr>
    </thead>
    <tbody>
 <c:forEach var="libros" items="${Libros.rows}">
            <tr>
            	<td><c:out value="${libros.ID}" /></td>
                <td><c:out value="${libros.titulo}" /></td>
                <td><c:out value="${libros.autor}" /></td>
                <td><c:out value="${libros.paginas}" /></td>
                <td><c:out value="${libros.tipo}" /></td>
                <td><c:out value="${libros.precio}" /></td>
                <td><c:out value="${libros.editorial}" /></td>
            </tr>
        </c:forEach>
    </tbody>
    </table>
    
    <br>
   <a href="http://localhost:8080/parcial_3/addlibro.jsp">agregar un libro a la biblioteca</a> <br></br>
   <a href="http://localhost:8080/parcial_3/eliminar.jsp">eliminar un libro</a>
</body>
</html>