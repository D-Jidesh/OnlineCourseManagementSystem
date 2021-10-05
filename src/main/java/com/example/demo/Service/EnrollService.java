package com.example.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Model.Course;
import com.example.demo.Model.Enroll;
import com.example.demo.Repository.EnrollRepository;

@Service
public class EnrollService {
	
	@Autowired
	private EnrollRepository enrollrepository;

	public void enroll(Enroll enroll) {
		enrollrepository.save(enroll);
		
	}

	public List<Object> getByUserId(int id) {
		// TODO Auto-generated method stub
		return enrollrepository.getByUserid(id);
	}

	public Enroll getByCourseidAndUserId(int cid, int uid) {
		// TODO Auto-generated method stub
		return enrollrepository.getByCourseidAndUserid(cid,uid);
	}

	public void deleteId(int id) {
		// TODO Auto-generated method stub
		enrollrepository.deleteById(id);
		
	}

	public List<Enroll> getAllByCourseId(int cid) {
		// TODO Auto-generated method stub
		return enrollrepository.getByCourseid(cid);
	}

	public List<Enroll> getAllByUserId(int uid) {
		// TODO Auto-generated method stub
		return enrollrepository.findAllByUserid(uid);
	}

}
