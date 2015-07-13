package com.draka.shivi.service;



import java.util.List;

import org.springframework.stereotype.Repository;

import com.draka.shivi.model.User;


/**
 * Defines DAO operations for the contact model.
 * 
 *
 */

public interface UserService {
	
	public void save(User user);

}