package com.example.demo.Service;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.demo.Model.Course;


@SpringBootTest
class CourseServiceTest {
	
	@Autowired
	private CourseService courseservice;
	
	@Test
	@Order(1)
	@DisplayName("GetAllCourse")
	void getAllCourse()
	{
		List<Course> course=courseservice.getAllCourse();
		int length=2;
		assertEquals(length,course.size());
	}
	
	@Test
	@Order(2)
	@DisplayName("GetById")
	void getById()
	{
		Course course_first_object=courseservice.getById(1);
		assertNotNull(course_first_object);
	}
	

	

}
