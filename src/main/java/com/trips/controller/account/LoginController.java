package com.trips.controller.account;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
	
	@GetMapping("/admin")
	public String admin() {
		return "admin/account/index";
	}
	
	@GetMapping("/accessDenied")
	public String accessDenied() {
		return "common/403";
	}
	
	@GetMapping("/login")
	public String getLogin() {
		return "common/login";
	}
	
}
