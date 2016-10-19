package chandan.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import chandan.Model.Product;


@Repository
@Transactional
public class ProductDaoImpl {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductDaoImpl.class);
	 
 	@Autowired
    private SessionFactory sessionFactory;
     
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
 
  
    public void addProduct(Product p)
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("Product added successfully, Product Details="+p);
    }
    
    public List<Product> getProduct() {
		Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> productList = query.list();
        session.flush();        
        return productList;        
	}
    
    public Product getProductById(int id) {
    	Session session = this.sessionFactory.getCurrentSession();
    	Product product = (Product) session.get(Product.class, id);
    	return product;
    }
    
    public void deleteProduct(Product p) {
    	Session session = this.sessionFactory.getCurrentSession();
    	session.delete(p);
    	session.flush();
    }
    
    public void editProduct(Product p) {
    	Session session = this.sessionFactory.getCurrentSession();
    	session.update(p);
    	session.flush();
    }
    
    public List<Product> showProduct(String p) {
		Session session = this.sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product where procat=:category");
        query.setParameter("category", p);
        List<Product> productList = query.list();
        session.flush();        
        return productList;        
	}
    	

}
