package com.example.demo.AOP;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.example.demo.Model.Course;
import com.example.demo.Model.User;

@Aspect
@Component
public class CourseServiceAOP {
	
	private Logger log=LogManager.getLogger(UserServiceAOP.class);
	
	@Around("execution (* com.example.demo.Service.UserService.*(..))")
	public Object getByID(ProceedingJoinPoint pjp) throws Throwable
	{
		String methodName=pjp.getSignature().getName();
		String className=pjp.getTarget().getClass().toString();
		log.info("Entering the Class : "+className+" \nEntering the method : "+methodName);
		Object obj=null;
		obj=pjp.proceed();
		log.info("Leaving the Class : "+className+" \nLeaving the method : "+methodName);
		return obj;
	}
	
	@AfterReturning(pointcut="execution (* com.example.demo.Service.CourseService.getAllCourse(..))",returning="obj")
	public void Allcourse(JoinPoint jp,Object obj)
	{
		List<Course> course=(List<Course>) obj;
		log.info("List of Course found : "+course);
	}
	
	@AfterReturning(pointcut="execution (* com.example.demo.Service.CourseService.getById(..))",returning="obj")
	public void getById(JoinPoint jp,Object obj)
	{
		Course course=(Course) obj;
		log.info("Finding the Course by ID : "+course);
	}

}
