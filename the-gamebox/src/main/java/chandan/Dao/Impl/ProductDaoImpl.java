package chandan.Dao.Impl;

import java.util.List;
import chandan.Dao.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import chandan.Model.Product;


@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);
	 
 	@Autowired
    private SessionFactory sessionFactory;
     
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.ProductDao#setSessionFactory(org.hibernate.SessionFactory)
	 */
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
 
  
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.ProductDao#addProduct(chandan.Model.Product)
	 */
    public void addProduct(Product p)
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("Product added successfully, Product Details="+p);
    }
    
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.ProductDao#getProduct()
	 */
    public List<Product> getProduct() {
		Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> productList = query.list();
        session.flush();        
        return productList;        
	}
    
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.ProductDao#getProductById(int)
	 */
    public Product getProductById(int id) {
    	Session session = this.sessionFactory.getCurrentSession();
    	Product product = (Product) session.get(Product.class, id);
    	return product;
    }
    
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.ProductDao#deleteProduct(chandan.Model.Product)
	 */
    public void deleteProduct(Product p) {
    	Session session = this.sessionFactory.getCurrentSession();
    	session.delete(p);
    	session.flush();
    }
    
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.ProductDao#editProduct(chandan.Model.Product)
	 */
    public void editProduct(Product p) {
    	Session session = this.sessionFactory.getCurrentSession();
    	session.update(p);
    	session.flush();
    }
    
    /* (non-Javadoc)
	 * @see chandan.Dao.Impl.ProductDao#showProduct(java.lang.String)
	 */
    public List<Product> showProduct(String p) {
		Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where procat=:category");
        query.setParameter("category", p);
        List<Product> productList = query.list();
        session.flush();        
        return productList;        
	}
    	

}
