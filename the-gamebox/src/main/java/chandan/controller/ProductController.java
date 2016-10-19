package chandan.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import chandan.Dao.ProductServiceImpl;
import chandan.Model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductServiceImpl productService;
	
	@RequestMapping(value="/addproduct", method=RequestMethod.GET)
	public String product(@Valid @ModelAttribute ("userProduct") Product userProduct, BindingResult result) {
		return "addProduct";
	}
	
	@RequestMapping(value="/addpro", method=RequestMethod.POST)
	public String added(@Valid @ModelAttribute ("userProduct") Product userProduct, BindingResult result, HttpServletRequest request) {
		
		byte[] bytes;
			if (!userProduct.getProfilepicture().isEmpty()) {

			try {
				
				bytes = userProduct.getProfilepicture().getBytes();
				this.productService.addProduct(userProduct);
				System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/WEB-INF/resources/images/" + userProduct.getId() + ".jpg");
				System.out.println("Path = " + path);
				System.out.println("File name = " + userProduct.getProfilepicture().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
				} catch (Exception ex) {
							System.out.println(ex.getMessage());
							}
			}
		
			if (result.hasErrors()) {
			return "addProduct";
			}
		return "redirect:/";
		}
	
	
		@Autowired
		ProductServiceImpl viewService;
	
		@Qualifier
		public void setViewService(ProductServiceImpl viewService) {
		this.viewService = viewService;
		}
	
		@RequestMapping(value="/viewproduct")
		public String viewProduct (Model model) {
		List<Product> productList = viewService.getProduct();
		model.addAttribute("products",productList);
		return "viewPro";
		}
		
		@RequestMapping(value="/infoproduct/{id}")
		public String infoProduct (@PathVariable("id") int id, Model model) {
			Product product = viewService.getProductById(id);
			model.addAttribute("info", product);
			return "infoProduct";
		}
		
		@RequestMapping(value="/editproduct/{id}")
		public String editProduct (@PathVariable("id") int id, Model model) {
			Product product = viewService.getProductById(id);
			model.addAttribute("product", product);
			return "editProduct";
		}
		
		@RequestMapping(value="/editproduct/editpro/{id}", method=RequestMethod.POST)
		public String editPro (@Valid @ModelAttribute ("product") Product product, BindingResult result, HttpServletRequest request ) {
			
	        if(result.hasErrors()) {
	            return "editProduct";
	        }

	        MultipartFile productImage = product.getProfilepicture();
	        String root = request.getSession().getServletContext().getRealPath("/WEB-INF/resources/images/" + product.id + ".jpg");
			Path path = Paths.get(root);

	        if (productImage != null && !productImage.isEmpty()) {
	            try {
	                productImage.transferTo(new File(path.toString()));
	            } catch (Exception e) {
	                e.printStackTrace();
	                throw new RuntimeException("Product image saving failed.", e);
	            }
	        }
	        			
			this.viewService.editProduct(product);			
						
			return "redirect:/";			
			
		}
		
		@RequestMapping(value="/deleteproduct/{id}")
		public String deleteProduct (@PathVariable("id") int id, Model model, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("/WEB-INF/resources/images/" + id + ".jpg");
			Path path = Paths.get(root);
			
			if(Files.exists(path)){
				try{
					Files.delete(path);
				} catch(IOException e) {e.printStackTrace();}
			}
			
			Product product = viewService.getProductById(id);
			viewService.deleteProduct(product);
			
			return "redirect:/viewproduct";
			
		}
		
		@RequestMapping(value="/show")
		public String show(Model model, HttpServletRequest request) {
			String cat = request.getParameter("param");
			List<Product> productList = viewService.showProduct(cat);
			model.addAttribute("products",productList);
			return "viewPro";
		}
}
	
	
	
	
	
	
	
	


