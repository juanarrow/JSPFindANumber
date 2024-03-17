<%-- index.jsp (proyecto Incrementa5) --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modules.Aleatorio"%>
<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="container">
        <form method="GET" action="index.jsp">
            <%session.setAttribute("prueba", new Aleatorio(100));%>
            <h1 class="mt-5">Adivina el número</h1>
            <p>He pensado en un número entre 1 y 100. ¿Puedes adivinar cuál es?</p>
            <div class="form-group">
                <label for="guess">Introduce tu número:</label>
                <input type="number" class="form-control" id="guess">
            </div>
            <button class="btn btn-primary" type="submit">Adivinar</button>
        </form>
        
        
    </div>
</body>
</html>