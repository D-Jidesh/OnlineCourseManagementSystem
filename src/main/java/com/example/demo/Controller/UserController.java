package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.*;
import com.example.demo.Service.*;

@Controller
public class UserController {
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private CourseService courseservice;
	
	@Autowired
	private EnrollService enrollservice;
	
	@Autowired
	private PasswordEncoder passwordencoder;
	

	@RequestMapping(value="/home")
	public String home(Model model)
	{
		List<Course> courselist=courseservice.getAllCourse();
		model.addAttribute("course", courselist);
		org.springframework.security.core.Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		String username=auth.getName();
		User user=userservice.getByEmailDetails(username);
		model.addAttribute("user", user);
		List<Object> list=enrollservice.getByUserId(user.getId());
		List<Integer> course=new ArrayList<>();
		for(Object obj:list)
		{
			Course c=courseservice.getById(((Enroll) obj).getCourseid());
			course.add(c.getId());
		}
		model.addAttribute("courseid", course);
		return "user/homepage";
	}
	
	@RequestMapping(value="/mycourse")
	public String myCourse(Model model)
	{
		org.springframework.security.core.Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		String username=auth.getName();
		User user=userservice.getByEmailDetails(username);
		List<Object> list=enrollservice.getByUserId(user.getId());
		List<Course> course=new ArrayList<>();
		for(Object obj:list)
		{
			course.add(courseservice.getById(((Enroll) obj).getCourseid()));
		}
		model.addAttribute("course", course);
		model.addAttribute("user", user);
		return "user/mycourse";
	}
	
	@RequestMapping(value="/myprofile")
	public String myProfile(Model model)
	{
		org.springframework.security.core.Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		String username=auth.getName();
		User us=userservice.getByEmailDetails(username);
		model.addAttribute("user",us);
		User u=new User();
		model.addAttribute("us", u);
		return "user/updateuser";
	}
	
	@RequestMapping(value="/updateuser/{uid}")
	public String updateUser(@Valid @ModelAttribute("us")User user,@PathVariable("uid")int id)
	{
		User u=userservice.getByIdDetails(id);
		u.setName(user.getName());
		u.setAge(user.getAge());
		u.setEmail(user.getEmail());
		u.setNumber(user.getNumber());
		u.setPassword(user.getPassword());
		userservice.updateUserDetails(u);
		return "redirect:/myprofile";	
	}
	
	@RequestMapping(value="/updatepassword/{uid}")
	public String updatePassword(@RequestParam(value="password")String password,@PathVariable("uid")int uid)
	{
		User user=userservice.getByIdDetails(uid);
		user.setPassword(passwordencoder.encode(password));
		userservice.updateUserDetails(user);
		return "redirect:/myprofile";
	}

	
	@RequestMapping(value="/enrollcourse/{cid}/{uid}")
	public String enrollCourse(@PathVariable("cid")int cid,@PathVariable("uid")int uid)
	{
		Enroll enroll=new Enroll();
		enroll.setCourseid(cid);
		enroll.setUserid(uid);
		enrollservice.enroll(enroll);
		return "redirect:/home";
	}
	
	@RequestMapping(value="/deletecourse/{cid}/{uid}")
	public String deleteCourse(@PathVariable("cid")int cid,@PathVariable("uid")int uid)
	{
		Enroll enroll=enrollservice.getByCourseidAndUserId(cid,uid);
		enrollservice.deleteId(enroll.getId());
		return "redirect:/mycourse";
	}

}
