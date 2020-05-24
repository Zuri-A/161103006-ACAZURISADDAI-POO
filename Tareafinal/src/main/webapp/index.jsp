<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>                
        <h1>EL programa que debio ser y no fue </h1>
        <%
            if (request.getParameter("numero") != null) {%>
        <h1> EL cicll del valor ingresado es </h1>
        <%
            int numero = Integer.parseInt(request.getParameter("numero"));
            //out.println(numero);
            for (int i = 0; i < numero; i++) {
                out.println(i);
            }
            out.println("\n"+numero);
        %>
        <form>
            <input type="hidden" value="Prueba "/>
            <input type="submit" value="Regresar"/>
        </form>
        <%
        } else if (request.getParameter("numero") == "hidden") {%>
        
        <% } else {%>
        <form>
            <input requered="requered" type="number" name="numero"/>
            <input type="submit" name="Enviar"/>
        </form>
             <h3>No has ingresado ningun numero</h3>

        <%}%>
    </body>
</html>