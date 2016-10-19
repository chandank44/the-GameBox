<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/views/templates/navbar.jsp"/>
<!doctype html>
<html>
<head>
<title>the-GameBox</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/themes/css/indpg.css"/>">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>
<div class="container-fluid">
<div class="carousel slide" id="myCarousel" data-ride="carousel" data-interval="2000">

	<!-- Indicators -->
	<ol class="carousel-indicators nav-color">
		<li class="active" data-slide-to="0" data-target="#myCarousel"></li>
		<li data-slide-to="1" data-target="#myCarousel"></li>
		<li data-slide-to="2" data-target="#myCarousel"></li>
		<li data-slide-to="3" data-target="#myCarousel"></li>
		<li data-slide-to="4" data-target="#myCarousel"></li>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner">
		<div class="item active" id="slide1">
			<img class="img-responsive center-block" src="<c:url value="/resources/images/contrary_large.jpg"/>" alt="1">			
		</div><!-- end item -->
		
		<div class="item" id="slide2">
			<img class="img-responsive center-block" src="<c:url value="/resources/images/PC_large.jpg"/>" alt="2">			
		</div> <!-- end item --> 
		
		<div class="item" id="slide3">
			<img class="img-responsive center-block" src="<c:url value="/resources/images/PSJ_large.jpg"/>" alt="3">			
		</div><!-- end item -->
		
		<div class="item" id="slide3">
			<img class="img-responsive center-block" src="<c:url value="/resources/images/XBJ_large.jpg"/>" alt="4">			
		</div><!-- end item -->
		
		<div class="item" id="slide3">
			<img class="img-responsive center-block" src="<c:url value="/resources/images/IJ_large.jpg"/>" alt="5">
			
		</div><!-- end item -->
	
	
	<!-- Controls -->
	<a class="left carousel-control" data-slide="prev" href="#myCarousel"><span class="icon-prev"></span></a>
	<a class="right carousel-control" data-slide="next" href="#myCarousel"><span class="icon-next"></span></a>

</div> <!-- end myCarousel -->
</div> <!-- end of con-flu -->



</div> <!-- end of main -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
