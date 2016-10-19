<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/themes/css/indpg.css"/>">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>
<div class="container-fluid" style="height:100px;" data-spy="affix" data-offset-top="50">
	<div class="row">
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"></div>
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
			<img class="img-responsive center-block" style="height:50px;" src="<c:url value="/resources/images/gameboxlogo.gif"/>" alt="logo"/>
		</div>
		<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4"></div>
	</div>

<div class="container-fluid">
<div class="navbar navbar-default">
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
			</ul>
			
		</div> <!-- end of collapse -->
		
	</div> <!-- end of container -->	
</div>
</div>
</div>
</body>
</html>