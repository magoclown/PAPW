<%-- 
    Document   : index
    Created on : 16/04/2019, 01:57:54 PM
    Author     : magoc
--%>

<%@page import="javax.naming.Context"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar usuario</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
    </head>

    <body>
        <form method="POST" action="AddUser" enctype="multipart/form-data">
            <div class="form-group">
            <label>User</label>
            <input class="form-control" type="text" name="nameUser"/>
            </div>
            <div class="form-group">
            <label>Imagen</label>
            <input class="form-control" type="file" name="imageUser"/>
            </div>
            <div class="form-group">
            <input class="form-control" type="submit" name="Subir">
            </div>
        </form>
        <a href="ShowUsers" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Ver usuarios</a>
    </body>
</html>
