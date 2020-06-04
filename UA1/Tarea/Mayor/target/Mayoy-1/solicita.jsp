<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    int numero = Integer.parseInt(request.getParameter("numero"));
    out.println(numero);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Solicitar los números</title>
    </head>
    <body>
        <h1>Ingresa un total de: <%out.println(numero);%></h1>
        <form>

            <input type="hidden" value="<%out.print(numero);%>" name="numero"/><br><br>
            <%
                int almacen[] = new int[numero];
                for (int i = 0; i < numero; i++) {%>
            <input type="number" name="valor<%out.print(i);%>" requerid/><br><br>
            <% if(request.getParameter("valor"+i)!=null){
            int valor = Integer.parseInt(request.getParameter("valor"+i));
                    almacen[i] = valor;
                }
            }
            
                for (int j = 0; j < numero; j++) {
                    out.println(almacen[j]);
                }

            %>

            <input type="submit" value="envianding dato"/>
        </form>
        <%    
        %>

    </body>
</html>