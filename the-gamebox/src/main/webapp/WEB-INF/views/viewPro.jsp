<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/templates/navbar.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
#table {margin-top:60px;}
.card {    
    box-shadow: 0 0 8px 4px rgba(0,0,0,0.1);
    transition: 0.3s;
}

.card:hover {
    box-shadow: 0 0 16px 8px rgba(0,0,0,0.1);
}

.container {
    padding: 2px 20px 2px 20px;
}

#info {color:black;}


</style>
</head>
<body>
<div>
<c:forEach items="${products}" var="c">
<div class="container col-lg-3 col-md-4 col-sm-6 col-xs-12">
	<a style="text-decoration:none;display:block;" href="infoproduct/${c.id}" id="info">
	<div class="card" id="table">
  
	<img class="img-responsive center-block" src="<c:url value="/resources/images/${c.id}.jpg"/>" style="width:100%;height:175px;" alt="1"/>
	<div>
		<h4 style="text-align:center;">${c.proname}</h4>
		<h4 style="text-align:center;"><small>${c.procat}</small></h4>
		<hr/>
		<p style="text-align:center;">Developer: ${c.company}</p>
		<p style="text-align:center;">Price: <span class="fa fa-inr"></span> ${c.price}</p>
		
		<div>
			
			<div class="row">
			<c:if test="${pageContext.request.userPrincipal.name == 'aladin'}">
  				<div class="col-xs-6">
  				<a class="btn btn-sm btn-success center-block" href="editproduct/${c.id}" style="color:ghostwhite;"><span class="glyphicon glyphicon-pencil"></span> Edit</a></div>
  				<div class="col-xs-6">
  				<a class="btn btn-sm btn-danger center-block" data-toggle="modal" href="#myModal" style="color:ghostwhite;"><span class="glyphicon glyphicon-trash"></span> Delete</a></div>
  			</c:if>
  			<c:if test="${pageContext.request.userPrincipal.name != 'aladin'}">
  				<div class="col-xs-12">	
  				<a class="btn btn-sm btn-primary center-block" href="#" style="color:ghostwhite;"><span class="fa fa-shopping-cart"></span> Add to Cart</a>
  			</c:if>	
  				</div>
  			</div>
  			
  				<!-- Modal -->
				<div id="myModal" class="modal fade">
  					<div class="modal-dialog">

    					<!-- Modal content-->
    					<div class="modal-content">
      						<div class="modal-header">
      							<button type="button" class="close" data-dismiss="modal">&times;</button>
        						<h4 class="modal-title">Delete</h4>
      						</div>
      						<div class="modal-body">
        						<p>Are you sure you want to delete this item?</p>
      						</div>
      						<div class="modal-footer">
        						<a class="btn btn-danger" href="deleteproduct/${c.id}"><span class="fa fa-check"></span> Yes</a>
        						<a class="btn btn-success" data-dismiss="modal"><span class="fa fa-times"></span> No</a>
      						</div>
    					</div>

  					</div>
				</div>
  					
  				
		</div>
	</div>
	</div>
	</a>
</div>
</c:forEach>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>