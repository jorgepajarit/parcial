<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inserción realizada con exito</title>
<sql:setDataSource var="dbSource" driver="com.mysql.cj.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/bibliotecajorge"
                   user="dba" password="123456789.eT"/>

<sql:update dataSource="${dbSource}">    
    INSERT INTO Libros(titulo, autor, paginas, tipo, precio, editorial) VALUES
('${param.titulo}', '${param.autor}', ${param.paginas}, '${param.tipo}', ${param.precio}, '${param.editorial}');
</sql:update>

<c:redirect url="/index.jsp"/>
</head>
<body>

</body>
</html>