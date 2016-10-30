package chandan.Services.Impl;

import chandan.Model.CustomerOrder;
import chandan.Dao.OrderDao;
import chandan.Model.*;
import chandan.Services.*;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	OrderDao orderDao;
	
	@Autowired
	CartService cartService;

	/* (non-Javadoc)
	 * @see chandan.Services.Impl.OrderService#addCustomerOrder(chandan.Model.CustomerOrder)
	 */
	public void addCustomerOrder(CustomerOrder customerOrder) {
		
		orderDao.addCustomerOrder(customerOrder);
		
	}
	
	/* (non-Javadoc)
	 * @see chandan.Services.Impl.OrderService#getCustomerOrderGrandTotal(int)
	 */
	public double getCustomerOrderGrandTotal(int cartId) {
        double grandtotal=0;
        Cart cart = cartService.getCartById(cartId);
        List<CartItem> cartItems = cart.getItems();

        for (CartItem item : cartItems) {
            grandtotal+=item.getTotalprice();
        }

        return grandtotal;
    }

}
