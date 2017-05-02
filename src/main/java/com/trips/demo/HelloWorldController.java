package com.trips.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
 
@Controller
public class HelloWorldController {
	
	@GetMapping("/tags")
	public String tags() {
		String a = "demo/demo";
		return a;
	}
	
}