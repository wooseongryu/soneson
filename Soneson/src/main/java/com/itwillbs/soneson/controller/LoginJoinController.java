package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginJoinController {

	@GetMapping("join")
	public String join() {
		System.out.println("LoginJoinController - join()");
		
		return "soneson/join";	
	}

	@GetMapping("login")
	public String login() {
		System.out.println("LoginJoinController - login()");
		
		return "soneson/login";	
	}
	
}
