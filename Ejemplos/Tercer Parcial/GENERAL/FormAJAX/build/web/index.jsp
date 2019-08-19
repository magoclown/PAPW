<%-- 
    Document   : index
    Created on : 7 may 2019, 14:40:59
    Author     : magoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                //alert("Hola Mundo");
                $("#warningForm").hide();
                
                $("#formData").submit(function(e) {
                    e.preventDefault(); // avoid to execute the actual submit of the form.
                    //var form = $(this);
                    var form = $('#formData')[0];
                    //var formData = form.serialize();
                    var data = new FormData(form);
                    //var url = form.attr('action');
                                        
                    $.ajax({
                        type: "POST",
                        url: "AddData",
                        enctype: 'multipart/form-data',
                        data: data,
                        processData: false,
                        contentType: false,
                        cache: false,
                        timeout: 600000,
                        success: function(data)
                        {
                            $("#warningForm").show();
                            $("#warningForm").html(data);
                            
                        }
                    });

                });
                $(".removeImage").click(function(){
                    var div = $(this).parent().closest('div');
                    div.remove();
                });
                $("#addImage").click(function(){
                    var div = "<div class='imageItem'>"+
                        "<div class='form-group'>"+
                            "<label >Imagen</label>"+
                            "<input name='images' type='file' class='form-control' >"+
                        "</div>"+
                        "<input class='removeImage' onclick='removeImage(this)' type='button' name='remove' value='Remover'>"+
                    "</div>";
                    $("#imagesCointainer").append(div);
                });
            });
            function removeImage(control){
                var div = $(control).parent().closest('div');
                div.remove();
            }
        </script>
    </head>
    <body>
        <div  class="container">
            <form id="formData" action="AddData" enctype="multipart/form-data" method="post" accept-charset="utf-8">
                <div class="form-group">
                    <label for="exampleInputEmail1">Nombre</label>
                    <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Descripcion</label>
                    <input name="description" type="text" class="form-control" id="exampleInputPassword1" placeholder="Descripcion">
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Imagen</label>
                    <input name="images" type="file" class="form-control" id="exampleInputPassword1" >
                </div>
                <div id="imagesCointainer">
                </div>
                <input type="Button" class="btn btn-secondary" id="addImage" value="Agregar Imagen"/>
                <button type="submit" class="btn btn-primary">Submit</button>
                <div id="warningForm" class="alert alert-dark" role="alert">
                    ALERT
                </div>
            </form>
        </div>
    </body>
</html>
