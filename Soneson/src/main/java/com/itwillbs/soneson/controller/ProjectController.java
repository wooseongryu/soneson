package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectController {

	@GetMapping("insertProject")
	public String insertProject() {
		
		return "insert_project";
	}
}
