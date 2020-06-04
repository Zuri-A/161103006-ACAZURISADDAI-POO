<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
   
    
     <h1>Numeracion:</h1><br>
        
        <%
            int n1 = Integer.parseInt(request.getParameter("numero"));
           
           for(int i=0; i<n1; i++){
           out.println(i);
           } 
         out.println(n1);
          
 %> 
        
   </body>
</html>
