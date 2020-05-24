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
            <input type="number" name="uno"/><br><br>
            <input type="submit" name="Enviar"/><br><br>
        </form>
        <%
            if (request.getParameter("uno") != null) {
                int numero1 = Integer.parseInt(request.getParameter("uno"));

                for(int i= 1; i<=numero1;i++){
                    for(int h= 1; h<=numero1;h++){%>
                             <p> </p>
                <%}
                   
                    for(int ast=1; ast<=(numero1*2)-1; ast++){%><%
                          out.println("*");
                        
                   }%>
                    <p> </p>
                <%}
            
            }
        %>
    </body>
</html>
