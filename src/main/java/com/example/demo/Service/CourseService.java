package com.example.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Course;
import com.example.demo.Repository.CourseRepository;

@Service
public class CourseService {
	
	@Autowired
	private CourseRepository courserepository;

	public List<Course> getAllCourse() {
		// TODO Auto-generated method stub
		return courserepository.findAll();
	}

	public Course getById(int cid) {
		// TODO Auto-generated method stub
		 Course course=courserepository.getById(cid);
		 if(course==null)
		 {
			 return null;
		 }
		 else
		 {
			 return course;
		 }
	}	
}
