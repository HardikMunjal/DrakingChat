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
	@RequestMapping("/game")
	public class GameController {
		
		 @RequestMapping("/cricket")
		    public String getCricketMainPage() {
		        return "games/cricket/main";
		    }
		 @RequestMapping("/cricket/MatchShedule")
		    public String getCricketMatchShedule() {
		        return "games/cricket/MatchShedule";
		    }
		 @RequestMapping("/test")
		    public String test() {
		        return "games/cricket/test";
		    }
		 
		
	}
