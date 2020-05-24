<%-- 
    Document   : index
    Created on : 22/05/2020, 21:59:18
    Author     : airam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form>
        
            <input required="required" type="number" name="numero"/><br><br>
            <input type="submit" value="Enviar"/><br><br>
        
        </form>
        <%
            int cubo=0;
             if (request.getParameter("numero") != null){
                 int numero = Integer.parseInt(request.getParameter("numero"));
                  
                 cubo = numero* numero * numero;%>
                 <h5> El resultado es:</h5>
             <%     
                    out.println(cubo);
                 }
        %>
    </body>
</html>
