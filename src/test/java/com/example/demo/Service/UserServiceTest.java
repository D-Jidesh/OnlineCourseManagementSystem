package com.example.demo.Service;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.Model.User;
import com.example.demo.Exception.UserExistedException;

@SpringBootTest
class UserServiceTest {
	
	@Autowired 
	private UserService userservice;

	@Test
	@Order(1)
	@DisplayName("SavingUserDetails")
	void save()
	{
		User user=new User();
		user.setName("jidesh");
		user.setPassword("jidesh");
		user.setEmail("jithu@abc.com");
		user.setAge("22");
		user.setNumber("1234567890");
		UserExistedException exception = assertThrows(UserExistedException.class, () -> {
			userservice.saveUserDetails(user);
		});
		assertEquals("User with this Email already Exist!!. Try with Different Email", exception.getMessage());
		
	}
	
	@Test
	@Order(2)
	@DisplayName("DeletingUserDetails")
	void delete()
	{
		User user=new User();
		user.setName("jidesh");
		user.setPassword("jidesh");
		user.setEmail("jiqwe@abc.com");
		user.setAge("22");
		user.setNumber("1234567890");
		userservice.saveUserDetails(user);
		userservice.deleteId(10);
		User u=userservice.getByEmailDetails("jiqwe@abc.com");
		assertNull(u);
		
	}
	
	
	

}
