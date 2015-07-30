package com.draka.shivi.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;






	@Controller
	@RequestMapping("/game/cricket")
	public class GameController {
		
		 @RequestMapping("/")
		    public String getGamesPage() {
		        return "games/cricket/CricketHome";
		    }
		
		 
		 @RequestMapping("/cricket")
		    public String getCricketHomePage() {
		        return "games/cricket/CricketHome";
		    }
		 
		 @RequestMapping("/main")
		    public String getCricketMainPage() {
		        return "games/cricket/main";
		    }
		 
		
		 
		 @RequestMapping("/MatchShedule")
		    public String getCricketMatchShedule() {
		        return "games/cricket/MatchSchedule";
		    }
		 
		 @RequestMapping("/test")
		    public String test() {
		        return "games/cricket/test";
		    }
		 
		
	}
