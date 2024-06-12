<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix = "sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eliminar libro</title>
</head>
<body>
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/bibliotecajorge"
                   user="dba" password="123456789.eT"/>

<sql:query dataSource="${dbSource}" var="result">
    SELECT * FROM Libros;
</sql:query>

<form action="eliminarlibro.jsp" method="post">
    <select name="id">
        <c:forEach var="libros" items="${result.rows}">
            <option value="${libros.ID}">${libros.titulo}</option>
        </c:forEach>
    </select>
    <input type="submit" value="Eliminar">
</form>

</body>
</html>