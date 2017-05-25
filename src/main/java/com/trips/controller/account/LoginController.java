package com.trips.controller.account;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.trips.service.AccountService;

@Controller
public class LoginController {
	
	@Autowired
	private AccountService accountService;
	
	@GetMapping("/admin")
	public ModelAndView admin() {
		return new ModelAndView("redirect:/admin/account/list");
	}
	
	@GetMapping("/accessDenied")
	public String accessDenied() {
		return "common/403";
	}
	
	@GetMapping("/login")
	public ModelAndView getLogin() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
		    return new ModelAndView("redirect:/admin");
		}
		return new ModelAndView("common/login");
	}
	
}
