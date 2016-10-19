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
</style>
</head>
<body>
<div class="col-md-4" id="table">
<c:forEach items="${products}" var="c">
<img class="img-responsive center-block" src="<c:url value="/resources/images/${c.id}.jpg"/>" style="width:50px;height:50px" alt="1"/>
<h4>${c.proname} <small>${c.procat}</small></h4>
<hr/>
<div class="row">
	<div class="col-md-4">
		<p>Developer: ${c.company}</p>
		<p>Price: <span class="fa fa-inr"></span> ${c.price}</p>
		<div>
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
	</div>
</div>
</c:forEach>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>