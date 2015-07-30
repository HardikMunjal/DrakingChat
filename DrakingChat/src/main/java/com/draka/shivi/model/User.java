package com.draka.shivi.model;



public class User {
	private String user_id;
	private String sn_id;
	private String first_name;
	private String last_name;
	private String email;
	private String gender;
	private String birthday;
	private String image;
	private String password;
	private String role;

	public User() {
	}

	public User(String user_id,String sn_id,String first_name,String last_name, String email, String gender, String birthday ,String image,String password,String role ) {
		this.user_id=user_id;
		this.sn_id=sn_id;
		this.first_name = first_name;
		this.last_name= last_name;
		this.email = email;
		this.gender = gender;
		this.birthday = birthday;
		this.image= image;
		this.password=password;
	    this.role=role;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getUser_id() {
		return user_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getSn_id() {
		return sn_id;
	}

	public void setSn_id(String sn_id) {
		this.sn_id = sn_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	
	
}