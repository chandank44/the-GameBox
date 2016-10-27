var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http){

	$scope.addToCart = function (id) {    		
        	$http.get('http://localhost:8080/the-gamebox/cart/addto/'+id).success(function () {
            alert("Product successfully added to the cart!")
        });
    };
    
    $scope.refreshCart = function () {    		
    	$http.get('http://localhost:8080/the-gamebox/cart/' + $scope.cartId).success(function (data) {
    	$scope.cart=data;        	
		console.log($scope.cart);    	       
    	});
    };
    
    $scope.clearCart = function (cartid) {
    	alert(cartid)
        $http.get('http://localhost:8080/the-gamebox/cart/clear/'+cartid).success(function (data) {
        $scope.refreshCart();
        
        });
    };

    
    $scope.initCartId = function (cartId) {    	
        $scope.cartId = cartId;
        console.log($scope.cartId);
        $scope.refreshCart(cartId);
    };
    
    $scope.removeFromCart = function (id) {    		
        	$http.get('http://localhost:8080/the-gamebox/cart/remove/'+id).success(function (data) {
        	alert("Product successfully removed from cart!")	
            $scope.refreshCart();            
        });
    };
    
   
    
    


    
});
