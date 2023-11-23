package com.itwillbs.soneson.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.soneson.service.ProjectListService;
import com.itwillbs.soneson.vo.ProjectVO;

@Controller
public class ProjectListController {
	
	@Autowired
	private ProjectListService service;
	
	@GetMapping("popular")
	public String popular(Model model) {
		System.out.println("popularController - popular()");
		
		List<ProjectVO> projectList = service.getProjectList();
		model.addAttribute("projectList", projectList);
		
		return "main/popular";	
	}

}
