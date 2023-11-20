package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginJoinController {

	@GetMapping("join")
	public String join() {
		System.out.println("LoginJoinController - join()");
		
		return "soneson/loginJoin/join";	
	}

	@GetMapping("login")
	public String login() {
		System.out.println("LoginJoinController - login()");
		
		return "soneson/loginJoin/login";	
	}

	@GetMapping("idSearch")
	public String idSearch() {
		System.out.println("LoginJoinController - idSearch()");
		
		return "soneson/loginJoin/idSearch";	
	}

	@GetMapping("idSearchResult")
	public String idSearchResult() {
		System.out.println("LoginJoinController - idSearchResult()");
		
		return "soneson/loginJoin/idSearchResult";	
	}

	@GetMapping("passwdSearch")
	public String passwdSearch() {
		System.out.println("LoginJoinController - passwdSearch()");
		
		return "soneson/loginJoin/passwdSearch";	
	}
	
}
