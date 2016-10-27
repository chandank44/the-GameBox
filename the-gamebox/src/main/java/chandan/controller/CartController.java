package chandan.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.PathVariable;

import chandan.Model.Cart;
import chandan.Model.CartItem;
import chandan.Model.Product;
import chandan.Services.CartServiceImpl;
import chandan.Services.ProductServiceImpl;
import chandan.Services.UserServiceImpl;


@Controller
@RequestMapping(value="/cart")
public class CartController {
	
	@Autowired
	ProductServiceImpl productService;
	
	@Autowired
	UserServiceImpl userService;
	
	@Autowired
	CartServiceImpl cartService;
	
	@RequestMapping("/{cartid}")
    public @ResponseBody
    Cart getCartById (@PathVariable(value = "cartid") int cartid) {
        System.out.println("1");
		return cartService.getCartById(cartid);
    }
	
	@RequestMapping(value="/addto/{id}")
	@ResponseStatus(value = HttpStatus.NO_CONTENT)
	public void addtocart(@PathVariable(value ="id") int productId, Model model) {
		
		
		try{
		
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();		
		chandan.Model.User use = new chandan.Model.User();		
		use = cartService.getUser(user.getUsername());        
        Cart cart = use.getCart();        
        Product product = productService.getProductById(productId);
        System.out.println("Product Id : " + product.getId());        
        List<CartItem> cartItems = cart.getItems();        

        	for (int i=0; i<cartItems.size(); i++) {
        		
        		if(product.getId()==cartItems.get(i).getProduct().getId()) {        			
        			
        			CartItem cartItem = cartItems.get(i);
        			cartItem.setQuantity(cartItem.getQuantity()+1);
        			cartItem.setTotalprice(product.getPrice()*cartItem.getQuantity());
        			cartService.addCartItem(cartItem);        			
        			return;
        		}
        	}

        CartItem cartItem = new CartItem();
        cartItem.setProduct(product);
        cartItem.setQuantity(1);
        cartItem.setTotalprice(product.getPrice()*cartItem.getQuantity());
        cartItem.setCart(cart);
        cartService.addCartItem(cartItem);
		}
		catch(Exception ex)
		{System.out.println("Exception : " + ex.getMessage());}
    }

	@RequestMapping(value = "/remove/{id}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void removeItem (@PathVariable(value = "id") int id) {
        CartItem cartItem = cartService.getCartitemByid(id);
        cartService.removeCartItem(cartItem);        
    }
	
	@RequestMapping(value = "/clear/{cartid}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartid") int cartid) {
        Cart cart = cartService.getCartById(cartid);
        cartService.removeAllCartItems(cart);
    }

	
	@RequestMapping(value = "/summon")
	public String car(Model model) {
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		chandan.Model.User use = cartService.getUser(user.getUsername());		
		int cartid = use.getCart().getCartid();
		return "redirect:/cart/res/"+cartid;
	}
	
	@RequestMapping(value = "/res/{cartid}")
	public String cart(@PathVariable (value = "cartid") int cartid, Model model) {			       
	    model.addAttribute("cartid", cartid);		
		return "cart";
	}
	
	@RequestMapping(value="/refresh")
	public String cc() {
		return "redirect:/summon";
	}
	
	


	

	
}
