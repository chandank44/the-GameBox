package chandan.Dao.Impl;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import chandan.Dao.*;
import chandan.Model.Authorities;
import chandan.Model.BillingAddress;
import chandan.Model.Cart;
import chandan.Model.User;
import chandan.Model.UserLogin;

	
	@Repository
	@Transactional
	public class UserDaoImpl implements UserDao {
		
		 private static final Logger logger = LoggerFactory.getLogger(UserDaoImpl.class);
		 
		 	@Autowired
		    private SessionFactory sessionFactory;
		     
		    public void setSessionFactory(SessionFactory sf){
		        this.sessionFactory = sf;
		    }
		 
		  
		    /* (non-Javadoc)
			 * @see chandan.Dao.Impl.UserDao#addCustomer(chandan.Model.User)
			 */
		    public void addCustomer(User p)
		    {
		        Session session = this.sessionFactory.getCurrentSession();
		        session.persist(p);
		        
		        UserLogin ul = new UserLogin();
		        ul.setId(p.getId());
		        ul.setPword(p.getPassword());
		        ul.setUname(p.getName());
		        session.persist(ul);		        
		        
		        Authorities al = new Authorities();
		        al.setUsername(p.getName());
		        al.setAuthority("ROLE_USER");
		        al.setId(p.getId());
		        
		        BillingAddress ba = new BillingAddress();
		        ba.setBillingaddress(p.getAddress());
		        ba.setUser(p);
		        p.setBill(ba);
		        session.persist(ba);
		        
		        Cart cart = new Cart();
		        cart.setUser(p);
		        p.setCart(cart);
		        session.persist(cart);
		        
		        session.persist(al);
		        session.flush();
		        
		        
		        logger.info("Customer saved successfully, Customer Details="+p);
		    }
		    
		    
		
	}
	
	


