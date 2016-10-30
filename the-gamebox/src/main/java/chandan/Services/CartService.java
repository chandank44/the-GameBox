package chandan.Services;

import chandan.Model.Cart;
import chandan.Model.CartItem;
import chandan.Model.User;


public interface CartService {

	User getUser(String p);

	void addCartItem(CartItem cartItem);

	CartItem getCartitemByid(int id);

	void removeCartItem(CartItem item);

	Cart getCartById(int cartId);

	void removeAllCartItems(Cart cart);

}