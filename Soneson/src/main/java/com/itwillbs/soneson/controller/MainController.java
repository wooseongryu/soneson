package com.itwillbs.soneson.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.HomeController;
import com.itwillbs.soneson.service.ProjectListService;

@Controller
public class MainController {
	
	@Autowired
	ProjectListService service;
	
	@ResponseBody
	@GetMapping("header")
	public String header(Model model) {
		System.out.println("!@#!@#");
		Gson gson = new Gson();
		return gson.toJson(service.getTapList());
	}
	
	@GetMapping("main")
	public String main(Model model) {
		System.out.println("MainController - main()");
		
		return "main/mainTest3";	
	}
//	@GetMapping("main")
//	public String main() {
//		System.out.println("MainController - main()");
//		
//		return "main/main_happy";	
//	}
	
	@GetMapping("mainTest")
	public String mainTest() {
		System.out.println("mainTestController - mainTest()");
		
		return "main/mainTest";	
	}
	
	@GetMapping("mainTest2")
	public String mainTest2() {
		System.out.println("mainTestController - mainTest2()");
		
		return "main/mainTest2";	
	}
	@GetMapping("mainTest3")
	public String mainTest3() {
		System.out.println("mainTestController - mainTest3()");
		
		return "main/mainTest3";	
	}
	
	@GetMapping("popularTest")
	public String popularTest() {
		System.out.println("popularTestController - popularTest()");
		
		return "main/popularTest";	
	}
	@GetMapping("popularTest2")
	public String popularTest2() {
		System.out.println("popularTestController - popularTest2()");
		
		return "main/popularTest2";	
	}
	
//	@GetMapping("popular")
//	public String popular() {
//		System.out.println("popularController - popular()");
//		
//		
//		
//		return "main/popular";	
//	}
	
//	@GetMapping("popular")
//	public String popular() {
//		System.out.println("popularController - popular()");
//		
//		return "list/popular";	
//	}

}
