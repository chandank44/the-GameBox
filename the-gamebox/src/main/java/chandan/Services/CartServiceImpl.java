package chandan.Services;

import org.springframework.transaction.annotation.Transactional;

import chandan.Dao.CartDaoImpl;
import chandan.Model.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl {
	
	@Autowired
	CartDaoImpl cartService;
	
	public User getUser(String p) {
		User user = cartService.getUser(p);
		return user;
	}
	
	public void addCartItem(CartItem cartItem) {
        cartService.addCartItem(cartItem);
    }
	
	public CartItem getCartitemByid(int id) {
		CartItem cart = cartService.getCartitemByid(id);
		return cart;
	}

	public void removeCartItem(CartItem item) {
		cartService.removeCartItem(item);
	}

	public Cart getCartById(int cartId) {
		Cart cart = cartService.getCartById(cartId);
		return cart;
	}

	public void removeAllCartItems(Cart cart) {
		cartService.removeAllCartItems(cart);
		
	}
	
	


}
