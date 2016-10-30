<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/views/templates/navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	#add {margin-top:60px;}
</style>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

<!-- Add products form -->

<div class="container" id="add">
	
	<div class="page-header text-primary">
		<h1>Add Product</h1>
	</div>


<form:form class="form-horizontal" action="addpro" method="post" commandName="userProduct" enctype="multipart/form-data">

	<div class="form-group">
		<label class="control-label col-sm-2" for="company">Company</label>
		<div class="col-sm-10">
		<form:input class="form-control" path="company"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="proname">Product Name</label>
		<div class="col-sm-10">
		<form:input class="form-control" path="proname"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="category">Category</label>
		<div class="col-sm-10">
			<div class="radio">
				<label><form:radiobutton path="procat" value="FPS"/>FPS</label>
			</div>
			<div class="radio">
				<label><form:radiobutton path="procat" value="Openworld"/>Open World</label>
			</div>
			<div class="radio">
				<label><form:radiobutton path="procat" value="Racing"/>Racing</label>
			</div>
			<div class="radio">
				<label><form:radiobutton path="procat" value="Strategy"/>Strategy</label>
			</div>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="price">Price</label>
		<div class="col-sm-10">
		<form:input class="form-control" path="price"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="stock">Stock</label>
		<div class="col-sm-10">
		<form:input class="form-control" path="stock"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="description">Description</label>
		<div class="col-sm-10">
		<form:textarea class="form-control" rows="4" path="description"/>
		</div>
	</div>
	
	<div class="form-group">
		<label class="control-label col-sm-2" for="picture">Product Image</label>
		<div class="col-sm-10">
		<form:input type="file" class="form-control" path="profilepicture"/>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">	   
    		<button type="submit" class="btn btn-info" value="add">Add</button>
    	</div>    
	</div>
	
</form:form> <!-- end of form -->
</div> <!-- end of div -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>