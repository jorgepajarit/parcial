<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>parcial</title>
</head>
<body>
<h1>hola soy jorge pajarito bienvenido</h1>
<%--clases--%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>

<%
    Calendar calendar = new GregorianCalendar();
    int hour = calendar.get(Calendar.HOUR_OF_DAY);
    int minute = calendar.get(Calendar.MINUTE);
    int second = calendar.get(Calendar.SECOND);

    String horaactual = String.format("%02d:%02d:%02d", hour, minute, second);

    
    String salud;
    if (hour < 12) {
        salud = "Buenos días";
    } else if (hour < 18) {
        salud = "Buenas tardes";
    } else {
        salud = "Buenas noches";
    }
    
    String userName = request.getParameter("nombre");
%>

<p>La hora actual es: <%= horaactual %></p>
<p><%= salud %></p>

<form method="post" action="">
    <label for="nombre">Introduce tu nombre:</label>
    <input type="text" id="nombre" name="nombre">
    <input type="submit" value="Enviar">
</form>


<%
    if (userName != null && !userName.trim().isEmpty()) {
%>
        <p>Hola, <%= userName %>! que deseas hacer hoy , <%= salud %></p>
         <h2>cuentame</h2>
        <ul>
            <li><a href="#">jugar video juegos</a></li>
            <li><a href="#">domir</a></li>
            <li><a href="#">deporte</a></li>
        </ul>
<%
    }
%>

</body>
</html>