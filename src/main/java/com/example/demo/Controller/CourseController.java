package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourseController {
	
	/*#############################Python Course##########################*/
	@RequestMapping(value="/Python/intro")
	public String intro()
	{
		return "python/1";
	}
	
	@RequestMapping(value="/python/getstarted")
	public String getStarted()
	{
		return "python/2";
	}
	
	@RequestMapping(value="/python/variables")
	public String variable()
	{
		return "python/3";
	}
	
	@RequestMapping(value="/python/datatypes")
	public String dataTypes()
	{
		return "python/4";
	}
	
	@RequestMapping(value="/python/comments")
	public String comments()
	{
		return "python/5";
	}
	
	@RequestMapping(value="/python/ifelse")
	public String ifElse()
	{
		return "python/6";
	}
	
	@RequestMapping(value="/python/loop")
	public String loop()
	{
		return "python/7";
	}
	
	@RequestMapping(value="/python/forloop")
	public String forLoop()
	{
		return "python/8";
	}
	
	@RequestMapping(value="/python/whileloop")
	public String whileLoop()
	{
		return "python/9";
	}
	
	@RequestMapping(value="/python/break")
	public String Break()
	{
		return "python/10";
	}

}
