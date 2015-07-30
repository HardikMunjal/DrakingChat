package com.draka.shivi;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.draka.shivi.model.User;




@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "Template/Template1";
	}
	
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String homes(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "Template/TemplateTesting";
	}
	
	
	
	
	
	 @RequestMapping("/demo")
		public String homeDemo() {
			return "why/draka";
		}
	 
	 
	 

	 @RequestMapping("/template")
		public String templateApp() {
			return "template";
		}
	 
	 
	 
	
	 @RequestMapping("/admin/admin/users/bla")
		public String getUserListing(){
		    
		   
		    return "admin/users/UserListing";
		}
		
	
	@RequestMapping(value = "/testing", method = RequestMethod.GET)
	public String homeTest() {
		return "home";
	}
	
	
	
	@RequestMapping(value = "/template", method = RequestMethod.GET)
	public String homeT(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
					        String name = authentication.getName();
					        System.out.println("User Name : "+name);
			
		
		model.addAttribute("serverTime", formattedDate );
		
		return "Template/Template1";
	}

	 @RequestMapping("game/cricket/cars/layout")
		public String getUsersssListing(){
		    
		   
		    return "car";
		}
	

	
	
}
