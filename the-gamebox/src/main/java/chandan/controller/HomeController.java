package chandan.controller;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.context.SecurityContextHolder;
/*import org.springframework.security.core.userdetails.User;*/
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import chandan.Services.UserServiceImpl;

import chandan.Model.Product;
import chandan.Model.User;




@Controller
public class HomeController {
	
	@Autowired
	UserServiceImpl userService;
	
	@Qualifier
	public void setUserService(UserServiceImpl us) {
		this.userService = us;
	}
	
	@RequestMapping("/")
	public String home(Model model){		
		return "index";
	}
	
	@RequestMapping("/intro")
	public String hom(){
		return "registerSuccess";
	}					

	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String form(Model model) {
	model.addAttribute("userForm", new User());
		return "register";
	}
		
	/*@RequestMapping(value="/reg",method=RequestMethod.GET)
	public String formSuccess(@Valid @ModelAttribute ("userForm") User user, BindingResult result) {
		if (result.hasErrors()){
			return "register";
		}
		else
		{
			this.userService.addUser(user);
			return "index";
		}
	}*/
	
	
	@RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
            model.addAttribute("error", "Invalid username and password");
        }

        if(logout!=null) {
            model.addAttribute("msg", "You have been logged out successfully.");
        }

        return "login";
    }

}
