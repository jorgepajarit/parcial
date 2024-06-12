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
                   url="jdbc:mysql://localhost:3306/licoreria"
                   user="dba" password="123456789.eT"/>
                   
                   <sql:query dataSource="${dbSource}" var="Licores">
    SELECT * FROM Licores;
    
    
</sql:query>
<table border="1">
    <thead>
        <tr>
         	<th>id</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <th>Origen</th>
            <th>Precio</th>
            <th>Volumen</th>
        </tr>
    </thead>
    <tbody>
 <c:forEach var="licor" items="${Licores.rows}">
            <tr>
            	<td><c:out value="${licor.ID}" /></td>
                <td><c:out value="${licor.nombre}" /></td>
                <td><c:out value="${licor.Tipo}" /></td>
                <td><c:out value="${licor.Origen}" /></td>
                <td><c:out value="${licor.Precio}" /></td>
                <td><c:out value="${licor.Volumen}" /></td>
            </tr>
        </c:forEach>
    </tbody>
    </table>
    
</body>
</html>