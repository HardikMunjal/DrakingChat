package com.draka.shivi.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.draka.shivi.model.AutoLoginResponse;
import com.draka.shivi.model.User;
import com.draka.shivi.dao.UserDao;





@Controller
public class AutoLoginController {
	
	@Autowired
	private UserDao userDao;

	
	@RequestMapping(value = "/AutoLogin", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
				return "login/AutoLogin";
	}
	
	
@RequestMapping("/FetchUserDetails")
	
    public String listUsers1121(HttpServletRequest request1,HttpSession session,RedirectAttributes redirectAttributes)throws IOException {

		String code = request1.getParameter("code");
		RestTemplate restTemplate = new RestTemplate();
   
  String url="https://graph.facebook.com/oauth/access_token?client_id=758610000925041&redirect_uri=http://localhost:3000/shivi/FetchUserDetails/&client_secret=fffb8c8fa466739691d889f5d570cd7b&code="+code+""; 

  
  MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
  
  map.add("access_token", code);
    HttpHeaders headers = new HttpHeaders();
  headers.set("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
  HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);

 List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();
  
      
  messageConverters.add(new FormHttpMessageConverter());
  messageConverters.add(new MappingJacksonHttpMessageConverter());
  messageConverters.add(new StringHttpMessageConverter());
  restTemplate.setMessageConverters(messageConverters);
  
 ResponseEntity<String> response= restTemplate.getForEntity(url, String.class);
  
 String a=response.getBody().toString();
  

 System.out.println(response);
 System.out.println(a);
 
  System.out.println(request.getBody());
  System.out.println(request.getHeaders());
  redirectAttributes.addAttribute("b", a);  
  return "redirect:mapping2";
  
  }

@RequestMapping(value = "FetchUserDetails/mapping2", method = RequestMethod.GET)
 
public @ResponseBody ModelAndView handleBar(@ModelAttribute("b") String b,ModelAndView model)
{
  String token= b;
  String bb= token;
  
  
RestTemplate restTemplate = new RestTemplate();
String url="https://graph.facebook.com/me?"+token+""; 

System.out.println(url);
List<HttpMessageConverter<?>> messageConverters = new ArrayList<HttpMessageConverter<?>>();


//messageConverters.add(new FormHttpMessageConverter());
messageConverters.add(new MappingJacksonHttpMessageConverter());
//messageConverters.add(new StringHttpMessageConverter());

restTemplate.setMessageConverters(messageConverters);

AutoLoginResponse response = (AutoLoginResponse) restTemplate.getForObject(url, AutoLoginResponse.class);

AutoLoginResponse ar=new AutoLoginResponse();
ar.setBirthday(response.birthday);
ar.setFirstName(response.first_name);
ar.setLast_name(response.last_name);
ar.setName(response.name);
ar.setGender(response.gender);
ar.setId(response.id);
ar.setEmail(response.email);

System.out.println(response.first_name);
System.out.println(response.last_name);
System.out.println(response.name);
System.out.println(response.email);
System.out.println(response.birthday);
System.out.println(response.gender);
System.out.println(response.id);
System.out.println(bb);
System.out.println(response);
 
 //return ar;
 model.setViewName("SyncSignup");
 model.addObject("contact",ar);
 return model;
}



@RequestMapping(value = "/saveUser", method = RequestMethod.GET)
public ModelAndView saveContact(@ModelAttribute User user) {
	
    userDao.save(user);
    
 
   
    return new ModelAndView("redirect:/template");
}

@RequestMapping(value = "/userDetails", method = RequestMethod.GET)
public @ResponseBody User userDetails(HttpServletRequest request) {
   
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    String emailId = authentication.getName();
    System.out.println("User Name : "+emailId);
    User response = userDao.get(emailId);
    
   
    
    
   /* ar.setFirstName(response.first_name);
    ar.setLast_name(response.last_name);
    ar.setName(response.name);
    ar.setGender(response.gender);
    ar.setId(response.id);
    ar.setEmail(response.email);
    */
    return response;
}


}

