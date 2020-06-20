<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

String titulo ="Agregar Usuario",usuario="usuario",action="AgregarUsuario.jsp";
int id=0;

if(request.getParameter("id")!=null){
   id=Integer.parseInt(request.getParameter("id"));
   
   titulo="Editar Usuario";
   action = "EditarUsuario.jsp";
   
        Connection conexion = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

try{
      Class.forName("com.mysql.jdbc.Driver");
         conexion = DriverManager.getConnection("jdbc:mysql://localhost/usuarios","root","");
         stmt= conexion.prepareStatement("SELECT * FROM usuario WHERE Id_usuario=?");
         stmt.setInt(1, id);
         rs=stmt.executeQuery();
         rs.next();
         usuario=rs.getString("usuario");
        
    
    }catch(Exception e){
        System.out.println(e.getMessage()); 
    
    }
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <title>Formulario</title>
    </head>
    <body>
        
    <br>   
    <h1 align="center"><%=titulo%></h1>
        <br>
        <form action = "<%=action%>" method="GET">
            <div class="container" align="center">
                 <% if(id!=0){%>
                <div class="col-lg-6 col-sm-6">
                    <input type="hidden" class="form-control" name="Id_usuario" value="<%=id%>"/>
                </div>
              <% } %>
                <div class="col-lg-6 col-sm-6">
                    <input type="text" class="form-control" value="<%=usuario%>" placeholder="nombre" name="usuario" required/>
                </div>
               <% if(id==0){%>
                <div class="col-lg-6 col-sm-6">
                    <input type="password" class="form-control" placeholder="password" name="password" required/>
                </div>
                 <% } %>
                 <div class="col-lg-6 col-sm-6">
                <input type="submit" class="btn btn-success  btn-block" value=enviar>
                 </div>
           
            </div>
        </form>
   </body>
</html>
             