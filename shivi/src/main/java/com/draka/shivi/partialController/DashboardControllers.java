package com.draka.shivi.partialController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;





	@Controller
	@RequestMapping("/popularity")
	public class DashboardControllers {
		
		
		 @RequestMapping("/user")
		    public String getProfilePartialPage() {
		        return "Dashboards/Popularity";
		    }
		
	}
