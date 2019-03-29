<%-- 
    Document   : index
    Created on : 26/03/2019, 09:13:30 PM
    Author     : magoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
	<meta charset="UTF-8">
	<title>Mi Pagina</title>
	<jsp:include page="include/metaData.jsp"/>
</head>
<body>
	<div class="container">

            <jsp:include page="include/navbar.jsp"/>

		<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="https://cdna.artstation.com/p/assets/images/images/014/177/048/large/alejandro-burdisio-flying-tolderia-artstation.jpg?1542816556" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="https://cdnb.artstation.com/p/assets/images/images/013/455/475/large/florent-auguy-spider.jpg?1539686674" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="https://cdnb.artstation.com/p/assets/images/images/015/794/525/large/alejandro-burdisio-tomando-mate-en-planeta-quilino-artstation.jpg?1549660325" class="d-block w-100" alt="...">
		    </div>
		  </div>
		  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		<jsp:include page="include/dataObjects.jsp"/>
                <jsp:include page="include/footer.jsp"/>
	</div>
</body>
</html>