<%-- 
    Document   : index
    Created on : 26/03/2019, 06:16:33 PM
    Author     : magoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pagina Web</title>
        <jsp:include page="includes/metadataGeneral.jsp"/>
	</head>
<body>
	<div class="container">
            <jsp:include page="includes/navbar.jsp"/>
            <jsp:include page="includes/carrousel.jsp"/>
            <jsp:include page="includes/listObjectDataTest.jsp"/>
            <jsp:include page="includes/footer.jsp"/>
	</div>
</body>
</html>