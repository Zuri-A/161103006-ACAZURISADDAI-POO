<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Triangulo</title>
    </head>
    <body>
        <h1>Triangulo</h1>
        <p>Ingrese un numero </p>
        <form>
            <input type="number" name="uno" required="requered"/><br><br>
            <input type="submit" name="Enviar"/><br><br>
        </form>
        <%
            if (request.getParameter("uno") != null) {
                int numero1 = Integer.parseInt(request.getParameter("uno"));

                for(int i=0; i<numero1;i++){
                int h=0;
                while(h<=i){
                    out.println("*");
                    h++;
                }
                %>
                <p> </p>
               <% }
            
            }else {%>
                    <p>No a ingresado ningun numero </p>
               <% }
        %>
    </body>
</html>
