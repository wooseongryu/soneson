package com.itwillbs.soneson.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.MainService;
import com.itwillbs.soneson.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	MainService service;
	
	@Autowired
	UserService userService;
	
	@ResponseBody
	@GetMapping("header")
	public String header(HttpSession session, Model model, Map<String, String> map) {
		
		System.out.println("헤더 뜸");
		
	    Gson gson = new Gson();

	    Map<String, List<?>> responseData = new HashMap<>();
	    responseData.put("tabList", service.getTabList());
	    responseData.put("categoryList", service.getCategoryList());

	    return gson.toJson(responseData);
	}
	
}
