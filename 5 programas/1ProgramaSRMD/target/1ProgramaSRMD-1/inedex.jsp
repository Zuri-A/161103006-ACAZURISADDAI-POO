<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operaciones aritmeticas</title>
    </head>
    <body>
        <h1>Operaciones aritmeticas </h1>
        <p> Ingrese dos numeros:</p>
        <form>
            <input required="required" type="number" name="uno"/><br><br>
            <input required="required" type="number" name="dos"/><br><br>
            <input type="submit" name="Realizar"/><br><br>
        </form>
        <%
            float res1 = 0;
            float res2=0;
            float res3=0;
            float res4=0;
            
            if (request.getParameter("uno")!= null && request.getParameter("dos")!= null)
            {
                 float num1 = Float.parseFloat(request.getParameter("uno"));
                 float num2 = Float.parseFloat(request.getParameter("dos"));
                 
                 res1 = num1 + num2;
                 res2 = num1 - num2;
                 res3 = num1 * num2;
                 res4 = num1 / num2;
                 
                 out.println("Las respuestas son:\n SUMA:\t"+res1+"\nRESTA:\t"+res2+"\nMULTIPLICACION:\t"+res3+"\nDIVICION:\t"+res4);
            }else {%>
            <h1>Error El numero es cero o menos a cero</h1>
          <%}
            
        %>
    </body>
</html>
