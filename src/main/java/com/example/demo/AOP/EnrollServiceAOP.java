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

import com.example.demo.Model.Enroll;
import com.example.demo.Model.User;

@Aspect
@Component
public class EnrollServiceAOP {
	
	private Logger log=LogManager.getLogger(EnrollServiceAOP.class);
	
	@Around("execution (* com.example.demo.Service.EnrollService.*(..))")
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
	
	@AfterReturning(pointcut="execution (* com.example.demo.Service.EnrollService.*Id(..))",returning="obj")
	public void userDetails(JoinPoint jp,Object obj)
	{
		String methodName=jp.getSignature().getName();
		Object[] obj1=jp.getArgs();
		if(methodName.equals("getByUserId"))
		{
			List<Enroll> enroll =(List<Enroll>) obj;
			log.info("\nEnroll Details with userid : "+enroll);
		}
		else if(methodName.equals("getByCourseidAndUserId"))
		{
			Enroll enroll=(Enroll) obj;
			log.info("\nEnroll Object with courseid and userid "+enroll.toString()+" found.");
		}
		else if(methodName.equals("getAllByCourseId"))
		{
			List<Enroll> enroll=(List<Enroll>) obj;
			log.info("\nEnroll objects with courseid : "+enroll);
		}
		else if(methodName.equals("getByEmailDetails"))
		{
			User user=(User) obj;
			log.info("\nUser with the Email : "+user.getEmail()+" found.");
		}
		else if(methodName.equals("getAllDetails"))
		{
			List<User> user=(List<User>) obj;
			log.info("\nList of All the User's : "+user.toString()+" found.");	
		}
			
	}

}
