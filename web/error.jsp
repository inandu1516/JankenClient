<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- http://localhost:8080/JankenClient/ --> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>error.jsp</title>
    </head>
    <body>
        
        <h3>JA HI HAN 2 USUARIS JUGANT, ESPERA A QUE ACABIN EL JOC PER COMENCAR...</h3>
        <b>jugadors connectats: </b><%= request.getAttribute("jugadors") %>
        <br><br>
        <b>Opció jugador 1: </b><%= request.getAttribute("jugador_1") %>
        <br><br>
        <b>Opció jugador 2: </b><%= request.getAttribute("jugador_2") %>
        <br><br>
        <form method="get" action="index.jsp">
              <button type="submit">Intenta de nou</button>
        </form>
        
    </body>
</html>
