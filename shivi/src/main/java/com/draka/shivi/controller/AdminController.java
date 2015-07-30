package com.draka.shivi.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.draka.shivi.dao.UserDao;
import com.draka.shivi.model.User;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;





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
	
	
	 @RequestMapping("/admin/users")
		public String getUserListing(){
		    
		   
		    return "admin/users/UserListing";
		}	
	
	
	@RequestMapping(value="/listUser")
		public @ResponseBody List<User> listContact() throws IOException{
	    List<User> listContact = userDao.list();
	   
	    
	    return listContact;
	}

}
