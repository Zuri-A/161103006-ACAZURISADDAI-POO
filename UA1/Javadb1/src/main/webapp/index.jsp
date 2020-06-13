<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
            Connection conexion = null;
            Statement stmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
                stmt = conexion.createStatement();
                rs = stmt.executeQuery("Sel from usuario");
                
                while (rs.next()) {
                    out.println(rs.getString(1));
                    out.println(rs.getString(2));
                }
            }catch(SQLException e) {
        switch(e.getErrorCode()){
            case 1049:
                out.println("La base de datos no existe");
                break;
            case 1146:
                out.println("La tabla no existe");
           
            case 1045:
                out.println("Acceso denegado, contraseña incorrecta");
                break;
            case 1096:
                out.println("No se utilizan tablas");
                break;
            case 1064:
                out.println("Tiene un error en su sintaxis");
                break;
        }
    }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
    </body>
</html>
