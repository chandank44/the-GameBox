package chandan.Services;

import java.util.List;
import chandan.Model.Product;


public interface ProductService {

	void addProduct(Product p);

	List<Product> getProduct();

	Product getProductById(int id);

	void deleteProduct(Product p);

	void editProduct(Product p);

	List<Product> showProduct(String p);

}