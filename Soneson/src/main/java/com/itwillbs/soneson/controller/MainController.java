package com.itwillbs.soneson.controller;

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
		System.out.println("!@#!@#");
		
//		1214 프로필 사진 추가
		
		
//		if(session.getAttribute("sId") != null) {
//			String sId = (String)session.getAttribute("sId");
//			
//			map.put("sId", sId);
//			map.put("id", sId);
//			map = userService.selectUserMainInfo(map);
//			
////		model.addAttribute("user", map);
//			System.out.println("맵에서: " + map.get("user_picture"));
//			session.setAttribute("profile", map.get("user_picture"));
//			System.out.println("프로필: " + session.getAttribute("profile"));
//		}
		
		Gson gson = new Gson();
//		gson.toJson(userService.selectUserMainInfo(map));
		return gson.toJson(service.getTabList());
	}
	
}
