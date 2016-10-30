<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html>
<head>
<title>the-GameBox</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="/resources/themes/css/indpg.css"/>">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>

            <p class="lead">Customer Details</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

        <h3>Shipping Address</h3>

        	<div class="form-group">
            	<label for="shippingStreet">Street Name</label>
            	<form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        	</div>        

        	<input type="hidden" name="_flowExecutionKey"/>
        	
        	<br/>
        	
        	<div>
        	
        		<button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
        	
        		<input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected"/>
        	
        		<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
        	
        	</div>
        
        </form:form>
        
	</div>
</div>

</body>
</html>