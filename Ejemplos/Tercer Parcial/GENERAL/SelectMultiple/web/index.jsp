<%-- 
    Document   : index
    Created on : 8 may 2019, 21:43:25
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
                    var form = $(this);
                    var formData = form.serialize();
                    var url = form.attr('action');
                                        
                    $.ajax({
                        type: "POST",
                        url: url,
                        data: formData,
                        cache: false,
                        timeout: 600000,
                        success: function(data)
                        {
                            $("#warningForm").show();
                            $("#warningForm").html(data);
                            
                        }
                    });
                    return false;

                });

            });

             
        </script>
    </head>
    <body>
        <div  class="container">
            <form id="formData" action="AddData" enctype="multipart/form-data" method="post" accept-charset="utf-8">
                <div class="form-group">
                    <label for="exampleFormControlSelect2">Example multiple select</label>
                    <select name="selectTest" multiple class="form-control" id="exampleFormControlSelect2">
                      <option value="melon">1</option>
                      <option value="guayaba">2</option>
                      <option value="mandarina">3</option>
                      <option value="naranja">4</option>
                      <option value="sandia">5</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <div id="warningForm" class="alert alert-dark" role="alert">
                    ALERT
                </div>
            </form>
        </div>
    </body>
</html>
