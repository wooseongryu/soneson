package com.itwillbs.soneson;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.soneson.service.ProjectListService;
import com.itwillbs.soneson.service.UserService;

@Controller
public class HomeController {
	
	@Autowired
	private ProjectListService service;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("HomeController - home");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("listType", "main");
		
		List<Map<String, Object>> projectList = service.getTabProjectList(map);
		
		model.addAttribute("projectList", projectList);
		
		return "main/main";
//		return "soneson/index";
	}
	
//	@RequestMapping("/**")
//	public String allPages(HttpSession session, Model model, Map<String, String> map) {
//		
//		String sId = (String)session.getAttribute("sId");
//		
//		map.put("sId", sId);
//		map.put("id", sId);
//		
//		map = userService.selectUserMainInfo(map);
//		
//		model.addAttribute("user", map);
//		
//		return null;
//	}
	
	// 깃 브렌치 테스트
	// 깃 테스트
}
