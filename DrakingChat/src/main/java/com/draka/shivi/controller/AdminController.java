package com.draka.shivi.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.draka.shivi.dao.UserDao;
import com.draka.shivi.model.User;







@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	
	@Autowired
	private UserDao userDao;


	
	@RequestMapping(value="/")
	public ModelAndView getAdminPage(ModelAndView model) throws IOException{
	    
	    model.setViewName("admin/ControlPage");
	    return model;
	}
	
	
	@RequestMapping(value="/users")
	public ModelAndView getUserListing(ModelAndView model) throws IOException{
	    
	    model.setViewName("admin/users/UserListing");
	    return model;
	}
	
	@RequestMapping(value="/listUser")
		public ModelAndView listContact(ModelAndView model) throws IOException{
	    List<User> listContact = userDao.list();
	    model.addObject("listContact", listContact);
	    model.setViewName("contact/ContactList");
	    return model;
	}

}
