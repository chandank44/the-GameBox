package chandan.Services;

import chandan.Model.CustomerOrder;


public interface OrderService {

	void addCustomerOrder(CustomerOrder customerOrder);

	double getCustomerOrderGrandTotal(int cartId);

}