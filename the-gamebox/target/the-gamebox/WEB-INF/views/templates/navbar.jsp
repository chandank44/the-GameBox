<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Navbar</title>
<link rel="stylesheet" href="<c:url value="/resources/themes/css/indpg.css"/>">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container-fluid">
<div class="navbar navbar-fixed-top bg-nav dow">
	<div class="container-fluid">
		<div class="navbar-header">
		<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
			<span style="color:ghostwhite" class="fa fa-bars"></span>
			<!--<span class="icon-bar"></span>
			<span class="icon-bar"></span>-->
		</button>		
		<a class="navbar-brand nav-color" href="/the-gamebox">the-GameBox</a>
		</div>
		<div class="navbar-collapse collapse navbar-responsive-collapse">
			<ul class="nav navbar-nav">
				<li id="effect" class="dropdown">
					<a class="nav-color dropdown-toggle" data-toggle="dropdown" href="#">
					<span class="fa fa-gamepad"></span> Games</a>
					<ul id="game" class="dropdown-menu">
						<li class="dropdown-header"><h4 style="color:orange">Category</h4></li>
						<li><a href="viewproduct">Action</a></li>
						<li><a href="show?param=FPS">FPS</a></li>
						<li><a href="#">Open World</a></li>
						<li><a href="#">MMORPG</a></li>
						<li><a href="#">Strategy</a></li>
						<li><a href="#">Puzzle</a></li>
						<li><a href="#">Racing</a></li>
					</ul>
				</li>
			</ul> <!-- end of list --> 
			
			<form id="search" class="navbar-form navbar-left">
   				<div class="input-group">
      				<input type="text" class="form-control" placeholder="Search for...">
      				<div class="input-group-btn">
        				<button class="btn btn-default" type="button"><span class="fa fa-search"></span></button>
      				</div>
    			</div>
   			</form> <!-- end of form -->
			
			<ul class="nav navbar-nav navbar-right">
				<li><a class="nav-color" href="addproduct"><span class="fa fa-plus"></span></a></li>
				<li><a class="nav-color" href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a class="nav-color" href="login"><span class="glyphicon glyphicon-log-in"></span> Log In</a></li>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
				</c:if>						
			</ul>
			
		</div> <!-- end of collapse -->
		
	</div> <!-- end of container --> 
</div> <!-- end of nav -->
</div>

</body>
</html>