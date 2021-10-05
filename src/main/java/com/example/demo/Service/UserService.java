package com.example.demo.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.example.demo.Exception.UserExistedException;
import com.example.demo.Model.Role;
import com.example.demo.Model.User;
import com.example.demo.Repository.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userrepository;
	
	@Autowired
	private PasswordEncoder passwordencoder;

	public User saveUserDetails(User user) {
		User u=userrepository.findByEmail(user.getEmail());
		if(u==null)
		{
			Set<Role> role=new HashSet<>();
			Role r=new Role();
			r.setRole("ROLE_USER");
			role.add(r);
			user.setPassword(passwordencoder.encode(user.getPassword()));
			user.setRoles(role);
			r.setUser(user);
		    return userrepository.save(user);
		}
		else
		{
			throw new UserExistedException("User with this Email already Exist!!. Try with Different Email");
		}
		
	}

	public User getByIdDetails(int id) {
		User user=userrepository.getById(id);
		return user;
		
	}

	public User updateUserDetails(User user) {
		
		 User u=userrepository.save(user);
		 return u;
	}

	public User getByEmailDetails(String username) {
		User user=userrepository.findByEmail(username);
		if(user==null)
		{
			return null;
		}
		else
		{
			return user;
		}
	}

	public List<User> getAllUserDetails() {
		// TODO Auto-generated method stub
		return userrepository.findAll();
	}

	public void deleteId(int uid) {
		// TODO Auto-generated method stub
		userrepository.deleteById(uid);
		
	}
	
	

}
