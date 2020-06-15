<%@page import="java.io.IOException"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios", "root", "");
        stmt=conexion.prepareStatement("INSERT INTO usuario(usuario, password) VALUES ('?', MD5('?'))");
        stmt.setString(1, request.getParameter("usuario"));
        stmt.setString(1, request.getParameter("password"));
        
       System.out.println(stmt.executeUpdate());
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>Agregar usuario</title>
    </head>
    <body>
        <h1>Agregar usuario</h1>
         <% while (rs.next()) {%>
                                       
                <td><%=rs.getString("usuario")%></td>
                <td><%=rs.getString("password")%></td>  
                <%}%>
    </body>
</html>
<%
            } catch (Exception e) {
                
               System.out.println(e.getMessage());
            }
        %>