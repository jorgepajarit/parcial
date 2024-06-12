<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>eliminarlibro</title>
</head>
<body>
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/bibliotecajorge"
                   user="dba" password="123456789.eT"/>

<sql:update dataSource="${dbSource}">
    DELETE FROM Libros WHERE id = ${param.id};
</sql:update>

<c:redirect url="/index.jsp"/>

</body>
</html>