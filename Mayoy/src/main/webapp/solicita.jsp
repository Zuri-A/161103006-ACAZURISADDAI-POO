<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int numero = Integer.parseInt(request.getParameter("numero"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar los numeros </title>
    </head>
    <body>
        <h1>Ingresa un total de:<%out.println(numero);%></h1>
        <form><%
            for (int i = 0; i<numero; i++){%>
            <input type="number" name="valor" requered="requered"/><br><br>
           <% }
                
            %>
           <input type="hidden" value="<%out.print(numero);%>" name="uno"/>
            <input type="submit" value="Envianding dato"/>
        </form>
        <%
            if(request.getParameter("uno") != null){
                 int uno1 = Integer.parseInt(request.getParameter("uno"));
                 out.println(uno1);
            
            }
        %>
    </body>
</html>
