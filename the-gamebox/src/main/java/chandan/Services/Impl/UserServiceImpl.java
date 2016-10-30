package chandan.Services.Impl;

import chandan.Model.*;
import chandan.Services.*;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import chandan.Dao.UserDao;

	@Service
	public class UserServiceImpl implements UserService {
	     
		@Autowired
	    private UserDao customerService;
	    
	    /* (non-Javadoc)
		 * @see chandan.Services.Impl.UserService#addCustomer(chandan.Model.User)
		 */
	    @Transactional
	    public void addCustomer(User p) {
	        this.customerService.addCustomer(p);
	    }
	    
}
