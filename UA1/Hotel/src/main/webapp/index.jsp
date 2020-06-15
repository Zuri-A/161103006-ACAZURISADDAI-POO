<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Connection conexion = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection("jdbc:mysql://localhost/hoteles", "root", "");
        stmt = conexion.createStatement();

    } catch ( SQLException  e) {
        
        out.println("" +e);
        
    }
%>
<html>
    <head>
         <!-- <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 70%;
            }

            td, th {
                border: 1px solid #f2e6ff;
                text-align: left;
                padding: 10px;
            }

            tr:nth-child(even) {
                background-color: #e6e6ff;
            }
        </style>-->
        <title>Hoteles</title>
    </head>
  
    <body>

        <h1 align="center">Cadena hotelera</h1><br>
        <h1 align="center">CENTENAR</h1><br>
        
        <table style="margin: 0 auto;">
            <caption><h3>Registro de hoteles</h3></caption>
            <tr>
                <th>IDENTIFICADOR </th>
                <th>NOMBRE</th>
                <th>CUARTOS DISPONIBLES</th>
                <th>TELEFONO</th>
                <th>ESTADO RM</th>

            </tr>

            <tr>
                <% rs = stmt.executeQuery("SELECT hotel.Id_hotel, hotel.Nombre, hotel.CD, hotel.telefono, estados.Nombre FROM hotel JOIN estados ON hotel.Id = estados.Id_estado");%>
                <% while (rs.next()) {%>
                <td><%out.println(rs.getString(1));%></td>                        
                <td><%out.println(rs.getString(2));%></td>                           
                <td><%out.println(rs.getString(3));%></td>                          
                <td><%out.println(rs.getString(4));%></td>                          
                <td><%out.println(rs.getString(5));%></td> 

            </tr>
            <%}%>            
        </table>
        
        <table style="margin: 0 auto;">
            <caption><h3>Catalogo de estados</h3></caption>
            <tr>
                <th>IDENTIFICADOR </th>
                <th>NOMBRE</th>
            </tr>
            
             <tr>
                <% rs = stmt.executeQuery("SELECT* FROM estados");%>
                <% while (rs.next()) {%>
                <td><%out.println(rs.getString(1));%></td>                        
                <td><%out.println(rs.getString(2));%></td>                           
               
            </tr>
            <%}%>  
            
        </table>
        </style>
        
    </body>
</html>
