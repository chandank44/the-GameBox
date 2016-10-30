package chandan.Dao.Impl;

import chandan.Model.CustomerOrder;
import chandan.Dao.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class OrderDaoImpl implements OrderDao {
	
	private static final Logger logger = LoggerFactory.getLogger(OrderDaoImpl.class);
	 
 	@Autowired
    private SessionFactory sessionFactory;
     
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.OrderDao#setSessionFactory(org.hibernate.SessionFactory)
	 */
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }

	/* (non-Javadoc)
	 * @see chandan.Dao.Impl.OrderDao#addCustomerOrder(chandan.Model.CustomerOrder)
	 */
	public void addCustomerOrder(CustomerOrder customerOrder) {
		
		Session session = this.sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();		
	}

}
