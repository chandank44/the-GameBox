package chandan.Dao;

import org.springframework.transaction.annotation.Transactional;

import chandan.Model.*;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import chandan.Dao.ProductDaoImpl;

@Service
public class ProductServiceImpl {
	
	@Autowired
    private ProductDaoImpl productDAO;
 
    public void setproductDAO(ProductDaoImpl productDAO) {
        this.productDAO = productDAO;
    }
    
    @Transactional
    public void addProduct(Product p) {
        this.productDAO.addProduct(p);
    }
    
    @Transactional
	public List<Product> getProduct() {
		return productDAO.getProduct();
	}
    
    @Transactional
    public Product getProductById(int id) {    	
		return (Product) this.productDAO.getProductById(id);
    }
    
    @Transactional
    public void deleteProduct(Product p) {
    	productDAO.deleteProduct(p);
    }
    
    @Transactional
    public void editProduct(Product p){
    	productDAO.editProduct(p);
    }
    
    @Transactional
	public List<Product> showProduct(String p) {
		return productDAO.showProduct(p);
	}

}
