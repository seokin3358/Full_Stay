package com;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FullpartController{	
	
	  @RequestMapping(value="/") 
	  public String login() { return "index"; }
	   
	  @RequestMapping(value="/index.do") 
	  public String main() { return "index"; }
	  
	  @RequestMapping(value="/privacy.do") 
	  public String privacy() { return "privacy"; }
	  
	  @RequestMapping(value="/provision.do") 
	  public String provision() { return "provision"; }
	  
	  @RequestMapping(value="/booking.do") 
	  public String booking() { return "res_step0"; }
	  
	  @RequestMapping(value="/Map.do")
	  public String map() { return "Map"; }
	  
	  @RequestMapping(value="/res.do")
	  public String res() { return "res_step0"; }
	 	
	
	
}


