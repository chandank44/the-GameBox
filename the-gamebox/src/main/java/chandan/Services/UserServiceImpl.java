package chandan.Services;

import chandan.Model.*;

import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import chandan.Dao.UserDaoImpl;

	@Service
	public class UserServiceImpl {
	     
		@Autowired
	    private UserDaoImpl customerDAO;
	 
	    public void setPersonDAO(UserDaoImpl productDAO) {
	        this.customerDAO = productDAO;
	    }
	    
	    @Transactional
	    public void addCustomer(User p) {
	        this.customerDAO.addCustomer(p);
	    }
	    
	    /*@Transactional
		public List<User> getUser(String p) {
			return customerDAO.getUser(p);
		}*/

}
