<%-- 
    Document   : edadMayor
    Created on : 23/05/2020, 15:16:29
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <h1>Formulario JAVA</h1>  
    
        <form>
            <input type="number" name="uno"/>
            <input type="submit" name="Enviar"/>
        </form>
        <%
            if (request.getParameter("uno") != null) {
                int numero1 = Integer.parseInt(request.getParameter("uno"));
     

                if (numero1 > 18) {
                    out.println("Pase usted señor mayor ");
                }else {
                    out.println("No puedes pasar " );
                }
            }else {
                out.println("No ingreso ningun numero");
            }
        %>
    </body>
</html>
