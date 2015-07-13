package com.draka.shivi.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class AdminController {
	
	@RequestMapping(value="/")
	public ModelAndView listContact(ModelAndView model) throws IOException{
	    List<Contact> listContact = contactDAO.list();
	    model.addObject("listContact", listContact);
	    model.setViewName("contact/ContactList");
	    return model;
	}

}
