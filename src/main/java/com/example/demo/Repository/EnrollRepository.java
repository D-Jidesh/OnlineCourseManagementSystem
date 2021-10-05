package com.example.demo.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Model.Course;
import com.example.demo.Model.Enroll;

@Repository
public interface EnrollRepository extends JpaRepository<Enroll,Integer>{

	List<Object> getByUserid(int id);

	Enroll getByCourseidAndUserid(int cid, int uid);

	List<Enroll> getByCourseid(int cid);

	List<Enroll> findAllByUserid(int uid);

}
