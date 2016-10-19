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
.table {margin-top:10px;
		margin-bottom:10px;
}
.shade {box-shadow: 0px 10px 15px rgba(0,0,0,0.5);
		border-radius:3px;
}
.red {background-color:red;color:ghostwhite;}

.table-vcenter td {
   vertical-align: middle!important;
}
</style>
</head>
<body>
<div class="container shade" id="table">
<table class="table table-striped table-bordered table-responsive table-vcenter">
	<thead>	
		<tr class="red text-center">
			<td>Id</td>
			<td>Image</td>
			<td>Company</td>
			<td>Product Name</td>
			<td>Category</td>
			<td>Price</td>
			<td>Stock</td>			
			<td>Description</td>
			<td>Action</td>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${products}" var="c">
	<tr class="text-center">
			<td>${c.id}</td>
			<td><img class="img-responsive center-block" src="<c:url value="/resources/images/${c.id}.jpg"/>" style="width:50px;height:50px" alt="1"/></td>
			<td>${c.company}</td>
			<td>${c.proname}</td>
			<td>${c.procat}</td>
			<td><span class="fa fa-inr"></span> ${c.price}</td>			
			<td>${c.stock}</td>			
			<td>${c.description}</td>
			<td><div>
  					<a class="btn btn-xs btn-success" href="editproduct/${c.id}"><span class="glyphicon glyphicon-pencil"></span></a>
  					<a class="btn btn-xs btn-danger" data-toggle="modal" href="#myModal"><span class="glyphicon glyphicon-trash"></span></a>
  					
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
  					<a class="btn btn-xs btn-info" href="infoproduct/${c.id}"><span class="glyphicon glyphicon-info-sign"></span></a>
				</div>
			</td>	
	</tr>
	</c:forEach>
	</tbody>
</table>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>