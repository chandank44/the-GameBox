package chandan.Dao;

import org.hibernate.SessionFactory;
import chandan.Model.CustomerOrder;


public interface OrderDao {
	
	void setSessionFactory(SessionFactory sf);

	void addCustomerOrder(CustomerOrder customerOrder);

}