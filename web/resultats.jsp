<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Resultat</title>
    </head>
    <body>
        <h3>Resultats</h3>
        <b>jugadors connectats: </b><%= request.getAttribute("jugadors") %>
        <br><br>
        <b>Opció jugador 1: </b><%= request.getAttribute("jugador_1") %>
        <br><br>
        <b>Opció jugador 2: </b><%= request.getAttribute("jugador_2") %>
        <br><br>
        <b>Guanyador: </b><%= request.getAttribute("guanyador") %>
        <br><br>
        <form method="post" action="index.jsp">
            <button type="submit">Retorna</button>
        </form>
    </body>
</html>
