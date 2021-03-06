<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/views/templates/navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="<c:url value="/resources/themes/js/controller.js"/>"></script> 
<style>
#info {margin-top:50px;}
</style>
</head>
<body>
    
    <!-- Page Content -->
    <div class="container">

        <!-- Game Heading -->
        <div class="row" id="info">
            <div class="col-lg-12">
                <h1 class="page-header">${info.proname}
                    <small>${info.procat}</small>
                </h1>
            </div>
        </div>
        <!-- end of heading -->

        <!-- Game contents Row -->
        <div class="row">

            <div class="col-md-8">
                <img class="img-responsive center-block" src="<c:url value="/resources/images/${info.id}.jpg"/>" style="width:auto;height:auto" alt="${info.proname}">
            </div>

            <div class="col-md-4">
                <h3>Game Description</h3>
                <p>${info.description}</p>                
            </div>

        </div>
        <!-- end of contents row -->

        <!-- Game details Row -->
        <div class="row" style="vertical-align: middle !important;" ng-app="cartApp">

            <div class="col-lg-12">
                <h3 class="page-header">Details</h3>
            </div>

            <div class="col-sm-3 col-xs-6">
                <p>${info.company}</p>
            </div>

            <div class="col-sm-3 col-xs-6">
                <p>${info.price}</p>
            </div>

            <div class="col-sm-3 col-xs-6">
                <p>${info.stock}</p>
            </div>

            <div class="col-sm-3 col-xs-6" ng-controller="cartCtrl">
                <a href="#" class="btn btn-sm btn-primary" ng-click="addToCart('${info.id}')"><span class="fa fa-shopping-cart"></span> Add to Cart</a>
            </div>

        </div>
        <!-- end of deatils row -->

        <hr>
    </div> <!-- end of container -->
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>