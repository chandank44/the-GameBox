package chandan.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import chandan.Model.Cart;
import chandan.Model.CartItem;
import chandan.Model.User;

@Repository
@Transactional
public class CartDaoImpl {
	
	 private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
	 
	 	@Autowired
	    private SessionFactory sessionFactory;
	     
	    public void setSessionFactory(SessionFactory sf){
	        this.sessionFactory = sf;
	    }
	    
	    public User getUser(String p) {
		Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from User where name=:category");
        query.setParameter("category", p);
        User user = (User) query.uniqueResult();
        session.flush();        
        return user;        
	    }
	
	    public void addCartItem(CartItem cartItem) {
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cartItem);
	        session.flush();
	    }
	    
	    public CartItem getCartitemByid(int id) {
	    	Session session = sessionFactory.getCurrentSession();
	    	Query query = session.createQuery("from CartItem where cartitemid=:category");
	        query.setParameter("category", id);
	        CartItem cart = (CartItem) query.uniqueResult();
	    	session.flush();
	    	return cart;
	    }

		public void removeCartItem(CartItem item) {
			Session session = sessionFactory.getCurrentSession();
			session.delete(item);
			session.flush();
		}

		public Cart getCartById(int cartId) {
			Session session = sessionFactory.getCurrentSession();
			Query query = session.createQuery("from Cart where cartid=:category");
	        query.setParameter("category", cartId);
	        Cart cart = (Cart) query.uniqueResult();
	    	session.flush();
	    	return cart;
			
		}

		public void removeAllCartItems(Cart cart) {
			List<CartItem> items = cart.getItems();
			for(CartItem item: items) {
				removeCartItem(item);
			}
			
		}	    

}
