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
        <title>Hoteles</title>
    </head>

    <body>

        <h1 align="center"><abbr title="Iñigo Mezo Alvarez Crestelo">Cadena hotelera</abbr></h1><br>
        <h1 align="center" class="font-italic Italica">CENTENAR</h1><br>       
        <div class="container">
            <img src="hotel.jpg">
            <table class="table table-hover ">                
                <thead class=" thead-light">
                    <tr>
                        <td colspan="8"><h2>Hoteles</h2></td>
                        <td><a class="btn btn-dark" href="FormularioH.jsp">Agregar hotel</a></td>

                    </tr>
                    <tr>
                        <td colspan="8"><h2>Catalogo de estados</h2></td>
                        <td><a class="btn btn-dark" href="Catalogo.jsp">Estados</a></td>

                    </tr>
                    <tr>
                        <th cope="col">#</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">CUARTOS DISPONIBLES</th>
                        <th scope="col">TELEFONO</th>
                        <th scope="col">ESTADO RM</th>
                         <th scope="col">OPCIONES</th>
                        

                    </tr>
                </thead>
                <tr>
                    <% rs = stmt.executeQuery("SELECT hotel.Id_hotel, hotel.Nombre, hotel.CD, hotel.telefono, estados.Nombre FROM hotel JOIN estados ON hotel.Id = estados.Id_estado");%>
                    <% while (rs.next()) {%>
                    <td><%out.println(rs.getString(1));%></td>                        
                    <td><%out.println(rs.getString(2));%></td>                           
                    <td><%out.println(rs.getString(3));%></td>                          
                    <td><%out.println(rs.getString(4));%></td>                          
                    <td><%out.println(rs.getString(5));%></td> 
                    <td><a type="button" class="btn btn-dark" href="Eliminar.jsp">Eliminar</a></td>
                    <td><a type="button" class="btn btn-dark" href="Editar.jsp">Editar</a></td>

                </tr>
                <%}%>            

                </body>
                </html>
                <%
                    } catch (SQLException e) {

                        out.println("" + e);

                    }

                %>