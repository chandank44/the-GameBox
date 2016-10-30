<!-- Project by Chandan.K -> the-GameBox: An online games store.  -->
<!-- Project created on 14 ‎September ‎2016, ‏‎1.10.41 PM -->

<!-- spring, c and form tags include -->

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>the-GameBox</title>
<link rel="stylesheet" href="<c:url value="/resources/themes/css/indpg.css"/>">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
</head>
<body>

<!-- Navbar start -->

<div class="container-fluid">
	<div class="navbar navbar-fixed-top bg-nav dow">
		<div class="container-fluid">
			<div class="navbar-header">
				<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
				<span style="color:ghostwhite" class="fa fa-bars"></span>			
				</button>		
				<a class="navbar-brand nav-color" href="/the-gamebox">the-GameBox</a>
			</div>
			
			<!-- Collapse navbar -->
			
			<div class="navbar-collapse collapse navbar-responsive-collapse">
					
				<ul class="nav navbar-nav">
					<li id="effect" class="dropdown">
					<a class="nav-color dropdown-toggle" data-toggle="dropdown" href="#">
					<span class="fa fa-gamepad"></span> Games</a>
						<ul id="game" class="dropdown-menu">
							<li class="dropdown-header"><h4 style="color:orange">Category</h4></li>
							<!-- To view specific or all categories -->
							<li><a href="viewproduct">All Games</a></li>
							<li><a href="show?param=FPS">FPS</a></li>
							<li><a href="show?param=Openworld">Open World</a></li>
							<li><a href="show?Racing">Racing</a></li>
							<li><a href="show?Strategy">Strategy</a></li>					
						</ul>
					</li>
				</ul>
		
				<!-- Navbar search box --> 
			
				<form id="search" class="navbar-form navbar-left">
   					<div class="input-group">
      					<input type="text" class="form-control" placeholder="Search game...">
      					<div class="input-group-btn">
        					<button class="btn btn-default" type="button"><span class="fa fa-search"></span></button>
      					</div>
    				</div>
   				</form> <!-- end of form -->
			
				<ul class="nav navbar-nav navbar-right">
					<!-- Authentication for Add products link -->
					<c:if test="${pageContext.request.userPrincipal.name == 'aladin'}">
						<li><a class="nav-color" href="addproduct"><span class="fa fa-plus"></span></a></li></c:if>
					<c:if test="${pageContext.request.userPrincipal.name == null}">
						<li><a class="nav-color" href="register"><span class="fa fa-user-o"></span> Sign Up</a></li>
						<li><a class="nav-color" href="login"><span class="glyphicon glyphicon-log-in"></span> Log In</a></li></c:if>
					<c:if test="${pageContext.request.userPrincipal.name != null}">                		
                		<li><a href="cart/summon" id="log"><span class="fa fa-shopping-cart"></span> Cart</a></li>
                		<li><a href="<c:url value="/j_spring_security_logout"/>" id="log"><span class="fa fa-sign-out"></span> Logout</a></li>							
					</c:if>											
				</ul>
			
			</div> <!-- end of collapse -->
		
		</div> <!-- end of container-fluid -->
		 
	</div> <!-- end of nav -->
	
</div> <!-- end of nav-wrapper -->

</body>
</html>