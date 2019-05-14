<%-- 
    Document   : index
    Created on : 12 may 2019, 14:01:03
    Author     : magoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chat</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                //alert("Hola Mundo");
                $("#formChat").submit(function(e) {
                    e.preventDefault(); // avoid to execute the actual submit of the form.
                    var form = $(this);
                    var url = form.attr('action');
                    /*
                    var msg = $("input[name=message]").val();
                    
                    var myText = "<div class='row justify-content-end'>"+
                        "<div class='col-sm-4 align-self-end alert alert-secondary' >"+
                            +msg+
                        "</div>"+
                    "</div>"                    
                    $("#chatContainer").append(myText);
                    $("input[name=message]").val("");
                    */
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: form.serialize(),
                        success: function(data)
                        {
                            $("#chatContainer").append(data);
                            $("input[name=message]").val("");
                        }
                      });


                });
                setInterval(function() {
                    //var msg = "Other Message";
                    var url = "GetMessages";
                    /*
                    var otherText = "<div class='row justify-content-start'>"+
                        "<div class='col-sm-4 align-items-start alert alert-primary' >"
                            +msg+
                        "</div>"+
                    "</div>";
            
                    $("#chatContainer").append(otherText);
                     */
                    $.ajax({
                        type: "GET",
                        url: url,
                        success: function(data)
                        {
                            $("#chatContainer").append(data);
                        }
                      });
                }, 1000);
            });
            
            
        </script>
    </head> 
    <body>
        <div class="container">
            <div id="chatContainer">
            <div class="row justify-content-start">
                <div class="col-sm-4 align-items-start alert alert-primary" >
                    Other
                </div>
                
            </div>
            <div class="row justify-content-end">
                <div class="col-sm-4 align-self-end alert alert-secondary" >
                    Mine
                </div>
            </div>
            </div>
            
            <form id="formChat" class="form-inline" action="SendMessage">
                <div class="form-group mx-sm-3 mb-2">
                    <input name="message" type="text" class="form-control">
                </div>

                <input type="submit" class="btn btn-primary mb-2" value="Enviar"/>
            </form>
        </div>
    </body>
</html>
