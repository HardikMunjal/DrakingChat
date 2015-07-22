package com.draka.shivi.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




	@Controller
	@RequestMapping("/why")
	public class WhyDraka {
		
		private static final Logger logger = LoggerFactory.getLogger(PartialControllerAngular.class);
		
		
		/**
		 * Simply selects the home view to render by returning its name.
		 */
		 @RequestMapping("/draka")
		    public String getWhyPartialPage() {
		        return "why/draka";
		    }
		
		
	}
