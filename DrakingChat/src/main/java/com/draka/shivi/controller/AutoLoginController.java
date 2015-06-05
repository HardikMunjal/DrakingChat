package com.draka.shivi.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.FormHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJacksonHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.draka.shivi.model.AutoLoginResponse;




@Controller
public class AutoLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(AutoLoginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/AutoLogin", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
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
  
  //String result = restTemplate.getForObject("http://example.com/hotels?code={code}", String.class,""+code+"");
 ResponseEntity<String> response= restTemplate.getForEntity(url, String.class);
  
  //AutoLoginResponse response = (AutoLoginResponse) restTemplate.getForObject(url, AutoLoginResponse.class);
  
 
  String a=response.toString();
  
  String b=response.getBody();
  
  
  
  //AutoLoginResponse response = (AutoLoginResponse) restTemplate.getForObject(url, AutoLoginResponse.class); 	
 
  
  
  
  
  
 System.out.println(response);
  //System.out.println(response.toString());
  System.out.println(request.getBody().toString());
  System.out.println(request.getHeaders());
  redirectAttributes.addAttribute("b", b);  
  return "redirect:mapping2";
  
  
	}
@RequestMapping(value = "FetchUserDetails/mapping2", method = RequestMethod.GET)
public void handleBar(@ModelAttribute("b") String b)
{
  String abc= b;
  String bb= abc;
  // do the job
 System.out.println(bb);
}


	

}
