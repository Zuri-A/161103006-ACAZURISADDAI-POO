<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numero Mayor</title>
    </head>
    <body>
        
       <h1>Numero mayor </h1>  
       <p> Ingrese un numero</p>
        <form>
            <input type="number" name="uno"/>
            <input type="number" name="dos"/>
            <input type="submit" name="Enviar"/>
        </form>
        <%
            if (request.getParameter("uno") != null && request.getParameter("dos") != null) {
                int numero1 = Integer.parseInt(request.getParameter("uno"));
                int numero2 = Integer.parseInt(request.getParameter("dos"));

                if (numero1 > numero2) {
                    out.println("El numero" + numero1 + "es mayor ");
                }else {
                    out.println("El numero" + numero2 + "es mayor" );
                }
            }else {
                out.println("No ingreso ningun numero");
            }
        %>
    </body>
</html>
       
       
    </body>
</html>
