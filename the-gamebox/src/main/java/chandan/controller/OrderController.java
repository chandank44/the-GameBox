package chandan.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import chandan.Model.Cart;
import chandan.Model.CustomerOrder;
import chandan.Model.User;
import chandan.Services.CartService;
import chandan.Services.OrderService;
import chandan.Services.UserService;
import org.springframework.web.bind.annotation.PathVariable;


@Controller
public class OrderController {
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	CartService cartService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/cart/res/order/{cartid}")
    public String createOrder(@PathVariable("cartid") int cartid) {
        
		CustomerOrder customerOrder = new CustomerOrder();
        Cart cart=cartService.getCartById(cartid);
        customerOrder.setCart(cart);

        User user = cart.getUser();
        customerOrder.setUser(user);
        customerOrder.setBill(user.getBill());

        orderService.addCustomerOrder(customerOrder);

        return "redirect:/checkout?cartId="+cartid;
    }
	

}
