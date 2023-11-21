package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectListController {
	
	
	
	@GetMapping("popular")
	public String popular() {
		System.out.println("popularController - popular()");
		
		return "main/popular";	
	}

}
