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
        
        <div>
        
        	<h3>Basic Info</h3>
        	
        		<p>Name:</p>
        	
        		<p>Email:</p>
        
        </div>

        <form:form commandName="order" class="form-horizaontal">        

        	<div class="form-group">
            	<label for="phone">Phone</label>
            	<form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
        	</div>

        <h3>Billing Address</h3>

        	<div class="form-group">
            	<label for="billingaddress"> Address</label>
            	<form:input path="cart.customer.billingAddress.streetName" id="billing" class="form-Control"/>
        	</div>        

        	<input type="hidden" name="_flowExecutionKey"/>
        	
        	<br/>
        	
        	<input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />
        	
        	<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
        
        </form:form>
        
	</div>
</div>

</body>
</html>