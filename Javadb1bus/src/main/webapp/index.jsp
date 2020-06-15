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
        stmt=conexion.prepareStatement("Select * From usuario");
        rs= stmt.executeQuery();


%>
<html>
    <head>      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <table class="table table-hover">
                <thead class="thead-dark">

                    <tr>
                        <td><h2>Usuarios</h2></td>
                        <td><a class="btn btn-success btn-block"  href="ingresarU.jsp">Agregar </a></td>
                    </tr>

                    <tr>
                        <th>IDENTIFICADOR </th>
                        <th>NOMBRE</th>
                        <th>CONTRASEÑA</th>
                    </tr>
                </thead>
                <tbody
                    <tr>
                    
                    <% while (rs.next()) {%>
                <td><%=rs.getInt("Id_usuario")%></td>                        
                <td><%=rs.getString("usuario")%></td>                           
                <td><%=rs.getString("password")%></td>  

                </tr>
                <%}%>   

                </tbody>
            </table>
        </div>

        <%
            } catch (SQLException e) {
                switch (e.getErrorCode()) {
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
    </body>
</html>
