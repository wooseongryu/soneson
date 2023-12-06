package com.itwillbs.soneson.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.soneson.service.ProjectListService;
import com.itwillbs.soneson.vo.ProjectVO;

@Controller
public class ProjectListController {

	@Autowired
	private ProjectListService service;
	
//	@GetMapping("/{listType}")
//	public String getListType(Model model, String listType) {
	public String getListType(Model model, @PathVariable String listType) {
		
		List<Map<String, Object>> projectList = service.getTabProjectList(listType);
		
		int projectCount = projectList.size();
		System.out.println("프로젝트 갯수 : " + projectCount);
		
		model.addAttribute("projectList", projectList);
		model.addAttribute("projectCount", projectCount);
		
		return "list/popular";
	}
	
	@GetMapping("{listType}")
	public String list(Model model, @PathVariable String listType) {
	    return getListType(model, listType);
	}
	
//	@GetMapping("popular")
//	public String popular(Model model) {
//		return getListType(model, "popular");
//	}
//	
//	@GetMapping("new")
//	public String fresh(Model model) {
//		return getListType(model, "new");
//	}
//	
//	@GetMapping("closing")
//	public String closing(Model model) {
//		return getListType(model, "closing");
//	}
//	
//	@GetMapping("upcoming")
//	public String upcoming(Model model) {
//		return getListType(model, "upcoming");
//	}
	
	@GetMapping("projectDetail")
	public String projectDetail(Model model, @RequestParam int project_code) {
		System.out.println("projectDetailController - projectDetail()");
		
		Map<String, Object> project = service.selectProject(project_code);
		model.addAttribute("project", project);
		
		return "list/projectDetail";	
	}
	
	// ============ 아래는 엄성윤 테스트 =======================
	
	@GetMapping("dayTest")
	public String dayTest() {
		
		return "test/dayTest";
	}
	

}
