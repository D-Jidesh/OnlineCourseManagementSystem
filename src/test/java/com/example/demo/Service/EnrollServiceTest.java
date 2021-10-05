package com.example.demo.Service;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.Model.Course;
import com.example.demo.Model.Enroll;

@SpringBootTest
class EnrollServiceTest {
	
	@Autowired
	private EnrollService enrollservice;

	@Test
	@Order(1)
	@DisplayName("EnrollUserToCourse")
	void enroll()
	{
		Enroll enroll=new Enroll();
		enroll.setCourseid(2);
		enroll.setUserid(2);
		enrollservice.enroll(enroll);
		Enroll e=enrollservice.getByCourseidAndUserId(2, 2);
		assertNotNull(e);	
	}
	
	@Test
	@Order(2)
	@DisplayName("GetByUserId")
	void getByUserId()
	{
		List<Object> object=enrollservice.getByUserId(2);
		int length=object.size();
		assertTrue(length>0);
	}

}
