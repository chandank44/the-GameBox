<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/views/templates/navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<style>
.form-group {width:auto;}
#sign {margin-top:40px;}
</style>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>
<body>

<!-- Registration Form -->

<div class="container" id="sign">
	<div class="page-header text-primary">
		<h1>Sign-Up</h1>
	</div>

	<form:form class="form-horizontal" action="reg" method="post" commandName="userForm">

		<div class="form-group">
			<label class="control-label col-sm-2" for="username">Username</label>
			<div class="col-sm-10">
			<form:input class="form-control" path="name" placeholder="your name..."/>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="Password">Password</label>
			<div class="col-sm-10">
			<form:password class="form-control" path="password" placeholder="8 characters or more..."/>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="Password">Confirm Password</label>
			<div class="col-sm-10">
			<form:password class="form-control" path="confirm_password" placeholder="8 characters or more..."/>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="E-mail">E-mail</label>
			<div class="col-sm-10">
			<form:input class="form-control" path="email" placeholder="example@email.com"/>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="Gender">Gender</label>
			<div class="col-sm-10">
			<div class="radio">
				<label><form:radiobutton path="gender" value="male"/>Male</label>
			</div>	
			<div class="radio">
				<label><form:radiobutton path="gender" value="female"/>Female</label>
			</div>
			</div>		
		</div>
			
		<div class="form-group">
			<label class="control-label col-sm-2" for="address">Address</label>
			<div class="col-sm-10">
			<form:textarea class="form-control" rows="4" path="address" placeholder="where do you stay?"/>
			</div>
		</div>
		
		<div class="form-group">
			<label class="control-label col-sm-2" for="phone">Phone No.</label>
			<div class="col-sm-10">
			<form:input class="form-control" path="phone" placeholder="your number..."/>
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">	   
    			<button type="submit" class="btn btn-info" value="Sign-Up">Sign-Up</button>
    		</div>    
		</div> 
		 
	</form:form> <!-- end of form -->
</div> <!-- end of div -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>