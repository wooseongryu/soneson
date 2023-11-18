package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectController {

	@GetMapping("projectStartForm")
	public String projectStartForm() {
		
		return "project/start";
	}
	
	@GetMapping("projectAgreeForm")
	public String projectAgreeForm() {
		return "project/startAgree";
	}
}
