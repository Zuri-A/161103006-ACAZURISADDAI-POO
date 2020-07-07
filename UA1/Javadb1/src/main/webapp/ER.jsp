<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        out.println("Aqui empieza");
        Connection conexion = null;
        PreparedStatement stmt = null;
        //ResultSet rs = null;
        int id = Integer.parseInt(request.getParameter("id"));  

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
        stmt = conexion.prepareStatement("Delete From usuario Where Id_usuario=?");
        stmt.setInt(1, id);
        stmt.executeUpdate();
        response.sendRedirect("index.jsp");
        }catch(Exception e){
        System.out.println("llego hasta aqui y se trunco"+e.getMessage()); 
    
    }
      
    
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
