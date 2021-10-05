package com.example.demo.Model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
public class User {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	@NotNull(message="Name cannot be empty")
	@Size(min=5,max=20,message="Name length must be between 5 and 20")
	@Column(nullable=false)
	private String name;
	@NotNull(message="Number cannot be empty")
	@Pattern(regexp="[0-9]{10}",message="Number must be 10 digits")
	@Column(nullable=false)
	private String number;
	@NotNull(message="Email cannot be empty")
	@Email(regexp=".+@.+\\..+",message="Enter a valid Email")
	@Column(nullable=false)
	private String email;
	@NotNull(message="Age cannot be empty")
	@Pattern(regexp="[0-9]{2}",message="Age must be digits and below 100")
	@Column(nullable=false)
	private String age;
	@NotNull(message="Password cannot be empty")
	@Column(nullable=false)
	private String password;
	@OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER,mappedBy="user")
    private Set<Role> roles=new HashSet<>();
	
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", number=" + number + ", email=" + email + ", age=" + age
				+ ", password=" + password + "]";
	}
    public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
}

