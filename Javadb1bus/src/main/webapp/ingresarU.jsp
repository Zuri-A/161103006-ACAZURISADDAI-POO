<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <title>Ingresar</title>
    </head>
    <body>
        <div class="container">
            <h1>Ingresar usuarios</h1>
            <form action="agregarU.jsp" method="POST">
                <div class="form-row">
                    <div class="col">
                        <input required class="form-control" placeholder="Nombre" type="text" name="Nombre"  /><br><br>
                    </div>
                    <div class="col">
                        <input required class="form-control" placeholder="contraseña" type="password" name="password"  /><br><br>
                    </div>
                    <div class="col">
                    <input class="btn btn-success btn-block" type="submit" value="Enviar"/>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
