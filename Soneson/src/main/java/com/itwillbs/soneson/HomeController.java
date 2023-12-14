package com.itwillbs.soneson;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.soneson.service.ProjectListService;

@Controller
public class HomeController {
	
	@Autowired
	private ProjectListService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("HomeController - home");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("listType", "popular");
		
		List<Map<String, Object>> projectList = service.getTabProjectList(map);
		
		model.addAttribute("projectList", projectList);
		
		return "main/main";
//		return "soneson/index";
	}
}
