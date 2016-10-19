package chandan.Dao;

import chandan.Model.*;

import org.springframework.transaction.annotation.Transactional;
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

}
