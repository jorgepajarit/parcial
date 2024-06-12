<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>agregar libros</title>
</head>
<body>
 <h2>agregar a la base</h2>
    <form action="agregarD.jsp" method="post">
    titulo: <input type="text" name="titulo"><br>
    autor: <input type="text" name="autor"><br>
    paginas: <input type="int" name="paginas"><br>
    tipo: <input type="text" name="tipo"><br>
    precio: <input type="int" name="precio"><br>
    editorial: <input type="text" name="editorial"><br>
    <input type="submit" >
    </form>
</body>
</html>