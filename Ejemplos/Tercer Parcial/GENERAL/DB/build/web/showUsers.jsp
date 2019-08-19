<%-- 
    Document   : showUsers
    Created on : 16/04/2019, 04:40:20 PM
    Author     : magoc
--%>
<%@page import="Utils.RequestUtils"%>
<%@page import="Models.User"%>
<%@page import="java.util.List"%>
<%
    List<User> users = (List<User>)request.getAttribute(RequestUtils.KEY_ALL_USERS);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShowUsers</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">
            <a href="index.jsp" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Home</a>
            <div class="row">
            
            <%
                for(User user : users){
            %>
                <div class="col-sm">
                    <div class="card-body">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="GetPerfilImage?idUser=<%= user.getIdUser()%>" alt="Card image cap">
                            <h5 class="card-title"><%= user.getNameUser()%></h5>
                            <p class="card-text">Algo Extra</p>
                            <a href="DeleteUser?idUser=<%= user.getIdUser()%>" class="btn btn-primary">Eliminar</a>
                        </div>
                    </div>
                </div>
            <%
                }
            %>
            </div>
            
            
        </div>
        
    </body>
</html>
