package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Course;
import com.example.demo.Model.Enroll;
import com.example.demo.Model.User;
import com.example.demo.Service.CourseService;
import com.example.demo.Service.EnrollService;
import com.example.demo.Service.UserService;

@Controller
public class AdminController {
	
	
	@Autowired
	private UserService userservice;
	
	@Autowired
	private CourseService courseservice;
	
	@Autowired
	private EnrollService enrollservice;
	
	@Autowired
	private PasswordEncoder passwordencoder;
	
	
	@RequestMapping(value="/admin/home")
	public String adminHome(Model model)
	{
		org.springframework.security.core.Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		String username=auth.getName();
		User user=userservice.getByEmailDetails(username);
		model.addAttribute("admin",user);
		return "admin/home";
	}
	
	@RequestMapping(value="/admin/listcourse")
	public String listCourse(Model model)
	{
		List<Course> courselist=courseservice.getAllCourse();
		model.addAttribute("course",courselist);
		return "admin/listcourse";
	}
	
	@RequestMapping(value="/admin/listcourse/enrolledusers/{cid}")
	public String listUser(Model model,@PathVariable("cid")int cid)
	{
		List<Enroll> enroll=enrollservice.getAllByCourseId(cid);
		List<User> user=new ArrayList<>();
		for(Enroll e:enroll)
		{
			user.add(userservice.getByIdDetails(e.getUserid()));
		}
		model.addAttribute("user",user);
		Course course=courseservice.getById(cid);
		model.addAttribute("course", course);
		return "admin/listuser";
	}
	
	@RequestMapping(value="/admin/listcourse/enrolledusers/delete/{uid}/{cid}")
	public String deleteUser(@PathVariable("uid")int uid,@PathVariable("cid")int cid)
	{
		Enroll enroll=enrollservice.getByCourseidAndUserId(cid, uid);
		enrollservice.deleteId(enroll.getId());
		return "redirect:/admin/listcourse";
	}
	
	@RequestMapping(value="/admin/listusers")
	public String allUser(Model model)
	{
		List<User> user=userservice.getAllUserDetails();
		model.addAttribute("user", user);
		return "admin/alluser";
	}
	
	@RequestMapping(value="/admin/listusers/delete/{uid}")
	public String deleteUser(@PathVariable("uid")int uid)
	{
		userservice.deleteId(uid);
		List<Enroll> enroll=enrollservice.getAllByUserId(uid);
		for(Enroll e:enroll)
		{
			enrollservice.deleteId(e.getId());
		}
		return "redirect:/admin/listusers";
	}
	
	@RequestMapping(value="/admin/profile")
	public String updateAdmin(Model model)
	{
		org.springframework.security.core.Authentication auth=SecurityContextHolder.getContext().getAuthentication();
		String username=auth.getName();
		User user=userservice.getByEmailDetails(username);
		model.addAttribute("admin", user);
		User u=new User();
		model.addAttribute("ad", u);
		return "admin/update";
	}
	
	@RequestMapping(value="/admin/profile/update/{aid}")
	public String updateAdminDetails(@ModelAttribute("ad")User user,@PathVariable("aid")int id)
	{
			User u=userservice.getByIdDetails(id);
			u.setName(user.getName());
			u.setAge(user.getAge());
			u.setEmail(user.getEmail());
			u.setNumber(user.getNumber());
			u.setPassword(user.getPassword());
			userservice.updateUserDetails(u);
			return "redirect:/admin/profile";	
	}
	
	@RequestMapping(value="/admin/profile/updatepassword/{uid}")
	public String updatePassword(@RequestParam(value="password")String password,@PathVariable("uid")int uid)
	{
		User user=userservice.getByIdDetails(uid);
		user.setPassword(passwordencoder.encode(password));
		userservice.updateUserDetails(user);
		return "redirect:/admin/myprofile";
	}

}
