<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<jsp:include page="/WEB-INF/views/templates/navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	#edit {margin-top:60px;}
</style>
</head>
<body>

<div class="container" id="edit">
	<div class="row">
		<div class="page-header text-primary col-md-4">
			<h1>Edit</h1>
		</div>
		
		<div class="col-md-8">
			<img class="img-responsive center-block" src="<c:url value="/resources/images/${product.id}.jpg"/>" style="width:200px;height:175px" alt="1"/>
		</div>
	</div>
	
	<!-- Edit form data -->
	
	<form:form class="form-horizontal" action="editpro/${product.id}" method="post" commandName="product" enctype="multipart/form-data">

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
    		<button type="submit" class="btn btn-info" value="edit">Save Changes</button>
   			</div>    
		</div>  

	</form:form> <!-- end of form -->
</div> <!-- end of div -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>