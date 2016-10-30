package chandan.Dao;

import java.util.List;
import org.hibernate.SessionFactory;
import chandan.Model.Product;


public interface ProductDao {

	void setSessionFactory(SessionFactory sf);

	void addProduct(Product p);

	List<Product> getProduct();

	Product getProductById(int id);

	void deleteProduct(Product p);

	void editProduct(Product p);

	List<Product> showProduct(String p);

}