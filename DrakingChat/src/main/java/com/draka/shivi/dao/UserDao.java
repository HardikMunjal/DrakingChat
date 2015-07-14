package com.draka.shivi.dao;

import java.util.List;

import com.draka.shivi.model.User;







	public interface UserDao {
		
		public void save(User user);
		public User get(String emailId);
		public List<User> list();
	}

