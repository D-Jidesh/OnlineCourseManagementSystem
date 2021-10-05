package com.example.demo.AOP;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.example.demo.Exception.UserExistedException;
import com.example.demo.Model.User;

@Aspect
@Component
public class UserServiceAOP {
	
	private Logger log=LogManager.getLogger(UserServiceAOP.class);
	
	@AfterThrowing(pointcut="execution (* com.example.demo.Service.UserService.saveUserDetails(..))",throwing="ex")
	public void userExisted(JoinPoint jp,UserExistedException ex)
	{
		Object[] obj1=jp.getArgs();
		User user=(User) obj1[0];
		log.info("\nUser Already existed : "+user +" Exception Caught : "+ex.getMessage());
		
	}
	
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
	
	@AfterReturning(pointcut="execution (* com.example.demo.Service.UserService.*Details(..))",returning="obj")
	public void userDetails(JoinPoint jp,Object obj)
	{
		String methodName=jp.getSignature().getName();
		if(methodName.equals("saveUserDetails"))
		{
			User user=(User) obj;
			log.info("\nUser "+user.getEmail() + " saved successfully!!.");
		}
		else if(methodName.equals("getByIdDetails"))
		{
			User user=(User) obj;
			log.info("\nUser with the ID : "+user.getId()+" found.");
		}
		else if(methodName.equals("updateUserDetails"))
		{
			User user=(User) obj;
			log.info("User details of "+user.getEmail()+" updated successfully!!.");
		}
		else if(methodName.equals("getByEmailDetails"))
		{
			User user=(User) obj;
			log.info("\nUser with the Email : "+user.getEmail()+" found.");
		}
		else if(methodName.equals("getAllUserDetails"))
		{
			List<User> user=(List<User>) obj;
			log.info("\nList of All the User's : "+user.toString()+" found.");	
		}
			
	}

}
