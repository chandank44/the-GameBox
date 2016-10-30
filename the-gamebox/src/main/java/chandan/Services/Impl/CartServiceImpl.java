package chandan.Services.Impl;

import chandan.Dao.CartDao;
import chandan.Model.*;
import chandan.Services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	CartDao cartService;
	
	/* (non-Javadoc)
	 * @see chandan.Services.Impl.CartService#getUser(java.lang.String)
	 */
	public User getUser(String p) {
		User user = cartService.getUser(p);
		return user;
	}
	
	/* (non-Javadoc)
	 * @see chandan.Services.Impl.CartService#addCartItem(chandan.Model.CartItem)
	 */
	public void addCartItem(CartItem cartItem) {
        cartService.addCartItem(cartItem);
    }
	
	/* (non-Javadoc)
	 * @see chandan.Services.Impl.CartService#getCartitemByid(int)
	 */
	public CartItem getCartitemByid(int id) {
		CartItem cart = cartService.getCartitemByid(id);
		return cart;
	}

	/* (non-Javadoc)
	 * @see chandan.Services.Impl.CartService#removeCartItem(chandan.Model.CartItem)
	 */
	public void removeCartItem(CartItem item) {
		cartService.removeCartItem(item);
	}

	/* (non-Javadoc)
	 * @see chandan.Services.Impl.CartService#getCartById(int)
	 */
	public Cart getCartById(int cartId) {
		Cart cart = cartService.getCartById(cartId);
		return cart;
	}

	/* (non-Javadoc)
	 * @see chandan.Services.Impl.CartService#removeAllCartItems(chandan.Model.Cart)
	 */
	public void removeAllCartItems(Cart cart) {
		cartService.removeAllCartItems(cart);
		
	}
	
	


}
