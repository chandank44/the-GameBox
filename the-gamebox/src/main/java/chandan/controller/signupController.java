package chandan.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import chandan.Services.UserServiceImpl;
import chandan.Model.User;



@Controller
public class signupController {
	
	@Autowired
	UserServiceImpl userService;
			
	@RequestMapping(value="/reg",method=RequestMethod.POST)
	public String formSuccess(@Valid @ModelAttribute ("userForm") User userForm, BindingResult result) {
		if (result.hasErrors()){
			return "register";
		}
		else
		{
			this.userService.addCustomer(userForm);
			return "index";
		}
	}
	

}
