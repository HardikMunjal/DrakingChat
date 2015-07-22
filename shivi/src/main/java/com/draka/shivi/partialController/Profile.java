package com.draka.shivi.partialController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;





	@Controller
	@RequestMapping("/SocialProfile")
	public class Profile {
		
		
		 @RequestMapping("/UserProfile")
		    public String getProfilePartialPage() {
		        return "SocialProfile/UserProfile";
		    }
		
	}
