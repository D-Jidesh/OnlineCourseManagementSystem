package com.example.demo.Exception;

public class UserExistedException extends RuntimeException{

	public UserExistedException(String msg)
	{
		super(msg);
	}
}
