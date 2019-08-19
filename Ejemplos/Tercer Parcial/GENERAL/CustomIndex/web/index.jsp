<%-- 
    Document   : index
    Created on : 9/05/2019, 08:33:03 PM
    Author     : magoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String message = (String)request.getAttribute("Test");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=  message %></h1>
    </body>
</html>
