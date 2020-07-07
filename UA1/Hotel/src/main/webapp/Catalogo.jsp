<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
        stmt = conexion.createStatement();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Catalogo</title>
    </head>
    <body>
        <div class="container">
            <table class="table table-hover">
                <thead class=" thead-light">
                    <td colspan="2"><h2>Catalogos de estados</h2></td>
                    <tr>
                        <td colspan="8"><h2>Catalogos</h2></td>
                        <td><a class="btn btn-dark" href="FormularioH.jsp">Agregar estados</a></td>

                    </tr>
                <tr>
                    <th scope="col">IDENTIFICADOR </th>
                    <th scope="col">NOMBRE</th>
                    <th scope="col">OPCIONES</th>
                </tr>
                </thead>

                <tr>
                    <% rs = stmt.executeQuery("SELECT* FROM estados");%>
                    <% while (rs.next()) {%>
                    <td><%out.println(rs.getString(1));%></td>                        
                    <td><%out.println(rs.getString(2));%></td> 
                     <td><a type="button" class="btn btn-dark" href="Eliminar.jsp">Eliminar</a></td>
                    <td><a type="button" class="btn btn-dark" href="Editar.jsp">Editar</a></td>

                </tr>
                <%}%>  

            </table>
    </body>
</html>
<%
    } catch (SQLException e) {

        out.println("" + e);

    }

%>