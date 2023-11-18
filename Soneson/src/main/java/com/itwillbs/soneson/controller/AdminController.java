package com.itwillbs.soneson.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;



@Controller
public class AdminController {

	@GetMapping("admin")
	public String admin(HttpSession session, Model model) {
		System.out.println("AdminController - admin()");
	
		
		return "mypage/admin/admin_mypage";	
	}
	
	
}
