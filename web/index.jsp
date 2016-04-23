<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- http://localhost:8080/JankenClient/ --> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>index.jsp</title>
    </head>
    <body>
        <h3>JankenClient JSP</h3>
        <b>Deploy & Run to reset</b>
        <br><br>
        <form name="Ma" method="post" action="JankenServlet">
            <input type="radio" name="opcio" value="Pedra" > Pedra<br>
            <input type="radio" name="opcio" value="Paper"> Paper<br>
            <input type="radio" name="opcio" value="Tisora"> Tisora<br>
            <input type="radio" name="opcio" value="Llangardaix" > Llangardaix<br>
            <input type="radio" name="opcio" value="Spock"> Spock
            <br><br>
            Selecciona opció o comproba si rival esta llest <input type="submit" value="check">
        </form> 
        
    </body>
</html>
