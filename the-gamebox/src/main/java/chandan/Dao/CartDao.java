package chandan.Dao;

import java.io.IOException;
import org.hibernate.SessionFactory;
import chandan.Model.Cart;
import chandan.Model.CartItem;
import chandan.Model.User;


public interface CartDao {
	
	void setSessionFactory(SessionFactory sf);

	User getUser(String p);

	void addCartItem(CartItem cartItem);

	CartItem getCartitemByid(int id);

	void removeCartItem(CartItem item);

	Cart getCartById(int cartId);

	void removeAllCartItems(Cart cart);

	void update(Cart cart);

	Cart validate(int cartid) throws IOException;

}