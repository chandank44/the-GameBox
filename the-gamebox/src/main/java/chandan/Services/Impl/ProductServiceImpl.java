package chandan.Services.Impl;

import org.springframework.transaction.annotation.Transactional;
import chandan.Model.*;
import chandan.Services.*;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import chandan.Dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
    private ProductDao productService;
    
    /* (non-Javadoc)
	 * @see chandan.Services.Impl.ProductService#addProduct(chandan.Model.Product)
	 */
    @Transactional
    public void addProduct(Product p) {
        this.productService.addProduct(p);
    }
    
    /* (non-Javadoc)
	 * @see chandan.Services.Impl.ProductService#getProduct()
	 */
    @Transactional
	public List<Product> getProduct() {
		return productService.getProduct();
	}
    
    /* (non-Javadoc)
	 * @see chandan.Services.Impl.ProductService#getProductById(int)
	 */
    @Transactional
    public Product getProductById(int id) {    	
		return (Product) this.productService.getProductById(id);
    }
    
    /* (non-Javadoc)
	 * @see chandan.Services.Impl.ProductService#deleteProduct(chandan.Model.Product)
	 */
    @Transactional
    public void deleteProduct(Product p) {
    	productService.deleteProduct(p);
    }
    
    /* (non-Javadoc)
	 * @see chandan.Services.Impl.ProductService#editProduct(chandan.Model.Product)
	 */
    @Transactional
    public void editProduct(Product p){
    	productService.editProduct(p);
    }
    
    /* (non-Javadoc)
	 * @see chandan.Services.Impl.ProductService#showProduct(java.lang.String)
	 */
    @Transactional
	public List<Product> showProduct(String p) {
		return productService.showProduct(p);
	}

}
