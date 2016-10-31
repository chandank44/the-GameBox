<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
            <h1>Order</h1>

            <p class="lead">Order confirmation</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizaontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>
                        
                        <div class="row">
                        
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br>
                                        ${order.cart.user.address}                                    
                                </address>
                            </div>
                            
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>
                        
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>#</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="item" items="${order.cart.items}" >
                                    <tr>
                                        <td class="col-md-9"><em>${item.product.proname}</em></td>
                                        <td class="col-md-1" style="text-align: center">${item.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${item.product.price}</td>
                                        <td class="col-md-1" style="text-align: center">${item.totalprice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total: </strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong class="fa fa-inr"> ${order.cart.grandtotal}</strong></h4>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <input type="hidden" name="_flowExecutionKey"/>

                        <br/>
                        
                        <div>
                        	<button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>
                        
                        	<input type="submit" value="Submit Order" class="btn btn-default" name="_eventId_orderConfirmed"/>
                        
                        	<button class="btn btn-default" name="_eventId_cancel">Cancel</button>
                    
						</div>                    
                    </div>
                    
                </form:form>

            </div>
        </div>
	</div>
</div>

</body>
</html>