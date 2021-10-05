package com.example.demo.Controller;


import javax.servlet.http.HttpServletRequest;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptionController implements ErrorController{
	
	@RequestMapping("/error")
	public String error(HttpServletRequest req)
	{
		if(req.isUserInRole("ROLE_ADMIN"))
		{
			return "redirect:/admin/profile";
		}
		return "redirect:/myprofile";
	}

}
