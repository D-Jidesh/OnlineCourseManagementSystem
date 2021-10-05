package com.example.demo.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.Exception.UserExistedException;
import com.example.demo.Model.User;
import com.example.demo.Service.UserService;

@Controller
public class HomeController {
	
	
	@Autowired
	private UserService userservice;
	
	private String signup_exception="";
	private String signup_error="";
	private String signup_success="";
	
	@RequestMapping(value="/login")
	public String login(Model model)
	{
		model.addAttribute("message", signup_success);
		signup_success="";
		return "front/login";
	}
	
	@RequestMapping(value="/signup")
	public String signUp(Model model)
	{
		User user=new User();
		signup_success="";
		model.addAttribute("user",user);
		model.addAttribute("message", signup_error);
		model.addAttribute("ex_message",signup_exception);
		return "front/signup";
	}
	
	@PostMapping(value="/saveuser")
	public String saveUserDetails(@Valid @ModelAttribute("user")User user,BindingResult bindingresult)
	{
		if(bindingresult.hasErrors())
		{
			return "front/signup";
		}
		else
		{
			try {
				userservice.saveUserDetails(user);
			}
			catch(UserExistedException e)
			{
				signup_exception=e.getMessage();
				signup_error="error";
				return "redirect:/signup";
			}
		}
		signup_success="User Registered Successful! Login with Your Credentianls.";
		return "redirect:/login";	
	}
	
	@RequestMapping(value="/")
	public String log(HttpServletRequest req)
	{
		if(req.isUserInRole("ROLE_ADMIN"))
		{
			return "redirect:/admin/home";
		}
		else
		{
			return "redirect:/home";
		}	
		
	
	}
	
	@RequestMapping(value="/aboutus")
	public String aboutUs()
	{
		return "about/aboutus";
	}
	
	

}
