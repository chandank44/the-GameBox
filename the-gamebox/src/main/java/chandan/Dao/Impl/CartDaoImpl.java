package chandan.Dao.Impl;

import java.io.IOException;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import chandan.Model.Cart;
import chandan.Model.CartItem;
import chandan.Model.User;
import chandan.Dao.*;
import chandan.Services.OrderService;


@Repository
@Transactional
public class CartDaoImpl implements CartDao {
	
	 private static final Logger logger = LoggerFactory.getLogger(CartDaoImpl.class);
	 
	 	@Autowired
	    private SessionFactory sessionFactory;
	 	
	 	@Autowired
	 	OrderService orderService;
	     
	    /* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#setSessionFactory(org.hibernate.SessionFactory)
		 */
	    public void setSessionFactory(SessionFactory sf){
	        this.sessionFactory = sf;
	    }
	    
	    /* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#getUser(java.lang.String)
		 */
	    public User getUser(String p) {
		Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where name=:category");
        query.setParameter("category", p);
        User user = (User) query.uniqueResult();
        session.flush();        
        return user;        
	    }
	
	    /* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#addCartItem(chandan.Model.CartItem)
		 */
	    public void addCartItem(CartItem cartItem) {
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cartItem);
	        session.flush();
	    }
	    
	    /* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#getCartitemByid(int)
		 */
	    public CartItem getCartitemByid(int id) {
	    	Session session = sessionFactory.getCurrentSession();
	    	Query query = session.createQuery("from CartItem where cartitemid=:category");
	        query.setParameter("category", id);
	        CartItem cart = (CartItem) query.uniqueResult();
	    	session.flush();
	    	return cart;
	    }

		/* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#removeCartItem(chandan.Model.CartItem)
		 */
		public void removeCartItem(CartItem item) {
			Session session = sessionFactory.getCurrentSession();
			session.delete(item);
			session.flush();
		}

		/* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#getCartById(int)
		 */
		public Cart getCartById(int cartId) {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from Cart where cartid=:category");
	        query.setParameter("category", cartId);
	        Cart cart = (Cart) query.uniqueResult();
	    	session.flush();
	    	return cart;
			
		}

		/* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#removeAllCartItems(chandan.Model.Cart)
		 */
		public void removeAllCartItems(Cart cart) {
			List<CartItem> items = cart.getItems();
			for(CartItem item: items) {
				removeCartItem(item);
			}
			
		}
		
		/* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#update(chandan.Model.Cart)
		 */
		public void update(Cart cart) {
			
	        int cartid = cart.getCartid();
	        double grandTotal = orderService.getCustomerOrderGrandTotal(cartid);
	        cart.setGrandtotal(grandTotal);
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cart);
	        session.flush();
	    }

	    /* (non-Javadoc)
		 * @see chandan.Dao.Impl.CartDao#validate(int)
		 */
	    public Cart validate(int cartid) throws IOException {
	        Cart cart=getCartById(cartid);
	        
	        if(cart==null||cart.getItems().size()==0) {
	            throw new IOException(cartid+"invalid");
	        }
	        update(cart);
	        return cart;
	    }


}
