package com.itwillbs.soneson.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping("main")
	public String main() {
		System.out.println("MainController - main()");
		
		return "main/main_happy";	
	}
	
	@GetMapping("mainTest")
	public String mainTest() {
		System.out.println("mainTestController - mainTest()");
		
		return "main/mainTest";	
	}

}
