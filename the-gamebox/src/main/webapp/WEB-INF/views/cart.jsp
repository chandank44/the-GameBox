<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/templates/navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="<c:url value="/resources/themes/js/controller.js"/>"></script>
<style>


#sign {margin-top:55px;}

.sub {background-color:#fffaf0;}

#cart {	font-size: 180px;
		color:lightgreen;
}

#tag {margin:10px 0px 10px 0px;
		padding: 10px 0px 10px 0px;
		box-shadow: 0px 0px 2px 2px rgba(0,0,0,0.2);
}

#tags {margin:10px 0px 10px 0px;		
}

#inr {color:red;font-family: Comic Sans MS;}
#qty {color:purple;font-family: Comic Sans MS;font-size: 14px;}
#name {color:blue;font-family: Comic Sans MS;font-size: 16px;}

#gt {font-size: 20px;}

</style>
</head>
<body>	

<div id="sign" ng-app="cartApp" ng-controller="cartCtrl" ng-init="initCartId('${cartid}')"  class="container">
	
	<div class="page-header text-primary">
		<h2>Your shopping cart</h2>
		<small><span><a href="#" ng-click="clearCart('${cartid}')" style="text-decoration: none;" id="gt"> Clear Cart</a></span></small>		
	</div>
	
	
	<div class="row">
	
		<div class="col-md-5 col-sm-12">		
			<p>
				<span class="fa fa-shopping-cart" id="cart"></span>
			</p>			
		</div>
	
	
		
		<div class="col-md-7 col-sm-12 text-left">
		
		<div class="row" id="tags">
				<div class="col-xs-2 text-center">
					<strong id="qty">QTY</strong>
				</div>
				<div class="col-xs-10 text-left">
					<strong id="name">Items</strong>
				</div>				
		</div>
								
		<div ng-repeat="item in cart.items">			
			<div class="row sub" id="tag" >
				<div class="col-xs-2 text-center">
					<span id="qty">{{item.quantity}}</span>
				</div>
				<div class="col-xs-10 text-left">
					<span id="name">{{item.product.proname}}</span>
				</div>
				<div class="col-xs-7 col-xs-offset-3 text-right">
					Price: <span class="fa fa-inr"> <strong id="inr">{{item.totalprice}}</strong></span>
				</div>
				<div class="col-xs-2 text-center">
					<a href="#" class="btn btn-danger btn-xs" ng-click="removeFromCart(item.cartitemid)"><span class="fa fa-times"></span></a>
				</div>
			</div>			
		</div>
		
		<a href="order/${cartid}" class="btn btn-success center"><span class="fa fa-shopping-cart"></span> Check out</a>
				
		</div>	
	</div>
	
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>