package chandan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import chandan.Services.UserService;
import chandan.Model.User;


@Controller
public class HomeController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String home(Model model){		
		return "index";
	}
	
	@RequestMapping("/intro")
	public String hom(){
		return "redirect:/";
	}					

	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String form(Model model) {
	model.addAttribute("userForm", new User());
		return "register";
	}	
	
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
