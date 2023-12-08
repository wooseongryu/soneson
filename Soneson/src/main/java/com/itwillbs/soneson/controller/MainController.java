package com.itwillbs.soneson.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.itwillbs.soneson.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService service;
	
	@ResponseBody
	@GetMapping("header")
	public String header(Model model) {
		System.out.println("!@#!@#");
		Gson gson = new Gson();
		return gson.toJson(service.getTabList());
	}
	
}
