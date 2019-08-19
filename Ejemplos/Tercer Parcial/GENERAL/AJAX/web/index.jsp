<%-- 
    Document   : index
    Created on : 2 may 2019, 13:19:28
    Author     : magoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AJAX</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

        <!--
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                $('#exampleInputEmail1').tooltip();   
                $('#exampleInputEmail1').tooltip('dispose'); 
                //alert("Hola Mundo");
                $("#warningForm").hide();
                
                $("#formData").submit(function(e) {
                    e.preventDefault(); // avoid to execute the actual submit of the form.
                    var form = $(this);
                    var url = form.attr('action');
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: form.serialize(),
                        success: function(data)
                        {
                            if(data === "")
                            {
                                $("#warningForm").hide();
                            }else{
                                $("#warningForm").show();
                                $("#warningForm").html(data); 
                            }
                        }
                      });
                });
            });
        </script>
    </head>
    <body>
        <div  class="container">
            <form id="formData" action="AddData">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input name="mail" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" data-toggle="tooltip" title="Hooray!">
                  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input id="pass" name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <div id="warningForm" class="alert alert-dark" role="alert">
                    ALERT
                </div>
            </form>
        </div>
    </body>
</html>
