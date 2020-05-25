<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mayor de edad</title>
    </head>
    <body>
        <h1>Mayor de edad</h1>  
        <p>Ingresa tu edad </p>
        <form>
            <input type="number" name="uno"/>
            <input type="submit" name="Enviar"/>
        </form>
        
        <%
            if (request.getParameter("uno") != null) {
                int numero1 = Integer.parseInt(request.getParameter("uno"));

                if (numero1 > 18) {
                    out.println("Pase usted señor mayor ");
                } else {
                    out.println("No puedes pasar ");
                }
            } else {%>
        <%out.println("No ingreso ningun numero");%>
        
        <% }
        %>
    </body>
</html>
