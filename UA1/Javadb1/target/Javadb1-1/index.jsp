<%@page import="java.util.List"%>
<%@page import="crud.UsuarioBD"%>
<%@page import="crud.Usuario"%>
<%@page  import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<%
    List<Usuario> usuarios = new UsuarioBD().listadoUsuarios();

           
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>CRUD</title>
    </head>
    <body>
        <h1>Los registros en la base de datos son: </h1>
        <div class="container">
            <table class="table table-hover">
                <thead class=" thead-dark">
                    <tr>
                        <td colspan="2"><h2>Usuarios</h2></td>
                        <td><a class="btn btn-success btn-block" href="FormularioUsuario.jsp">Agregar usuario</a></td>

                    </tr>


                    <tr>
                        <th>#</th>
                        <th>nombre</th>
                        <th scope="col">contraseña</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (Usuario usuario : usuarios) {%>
                    <tr>
                        <th><%=usuario.getId_usuario()%></th>
                        <td><%=usuario.getUsuario()%></td>
                        <td><%=usuario.getPassword()%></td>
                        <td><a class="btn btn-success btn-block" href="FormularioUsuario.jsp?id=<%=usuario.getId_usuario()%>">Editar usuario</a></td>
                        <td><a class="btn btn-success btn-block" href="EliminarUsuario.jsp?id=<%=usuario.getId_usuario()%>">Eliminar</a></td>
                        <td><a class="btn btn-success btn-block" href="ContraUsuario.jsp?id=<%=usuario.getId_usuario()%>">Editar contraseña</a></td>
                        <td><a class="btn btn-success btn-block" href="ER.jsp?id=<%=usuario.getId_usuario()%>">EliminarV2</a></td>

                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>