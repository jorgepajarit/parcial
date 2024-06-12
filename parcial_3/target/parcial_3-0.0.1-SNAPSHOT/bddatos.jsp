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
<c:forEach var="licor" items="${Licores.rows}">
 <li> 
 							<b>nombre:</b> <c:out value="${licor.nombre}" /><br>
                            <b>Tipo:</b> <c:out value="${licor.Tipo}" /> <br>
                            <b>origen:</b> <c:out value="${licor.Origen}" /><br>
                            <b>Precio:</b> <c:out value="${licor.Precio}" /><br>
                            <b>Volumen:</b> <c:out value="${licor.Volumen}" /><br>
                            </li>
 </c:forEach>
</body>
</html>